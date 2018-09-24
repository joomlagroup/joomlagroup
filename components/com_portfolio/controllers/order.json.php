<?php
defined('_JEXEC') or die;

//<ComponentName>Controller<fileName>



class Jk8_ProductsControllerOrder extends JControllerLegacy
{

    function saveOrder(){

        $data = JRequest::getVar('jform',array(),'POST','ARRAY');

        $product_id       = (int)$data['id'];
        $customer_name    = $data['customer_name'];
        $customer_phone   = $data['customer_phone'];
        $customer_address  = $data['customer_address'];
        $customer_message = $data['customer_message'];

        if($product_id){

            $db = JFactory::getDbo();
            $query = $db->getQuery(true);

            $invoices                    = new stdClass();
            $invoices->product_id        = $product_id;
            $invoices->customer_name     = $db->escape($customer_name);
            $invoices->customer_phone    = $db->escape($customer_phone);
            $invoices->customer_address  = $db->escape($customer_address);
            $invoices->customer_message  = $db->escape($customer_message);
            $invoices->status            = 'pending';

            $config = JFactory::getConfig();
            $tzoffset = $config->get('offset');
            $timezone = new DateTimeZone($tzoffset);
            $invoices->invoice_date      = JDate::getInstance('now', $timezone)->format('Y-m-d H:i:s',true);

            //echo '<pre>'; print_r($data); echo '</pre>'; die('a');
            $result = JFactory::getDbo()->insertObject(_JOOM_TABLE_PRODUCTS_INVOICES, $invoices);
            $id = $db->insertid();

            if(count($data['attribute']))
            $this->storeAttributesInvoice($id,$data['attribute']);

            $this->sendMailOrder($id);

            $array = array(true);
            print_r(json_encode($array));
       }

    }

    public function storeAttributesInvoice($invoice_id, $arrAttribute)
    {
        foreach( $arrAttribute as $attributes_groups_id => $items_attribute ){
            $db = JFactory::getDbo();
            foreach( $items_attribute as $item ){
                if($item>0) {
                    $query = 'INSERT INTO ' . _JOOM_TABLE_PRODUCTS_INVOICES_ATTRIBUTE . ' (invoice_id,attributes_groups_id,attribute_id) VALUES ('. (int)$invoice_id . ','. (int)$attributes_groups_id.','. (int)$item.')';
                    $db->setQuery($query);
                    $db->query();
                }
            }
        }
    }

    function sendMailOrder($id){
    
    $invoice = $this->getInvoice($id);
    $list_attributes = ProductsHelper::getAttributesInvoice($id);
    if($list_attributes){
        $text_attributes = '';
        foreach($list_attributes as $attributes){
            $text_attributes.= '<br><div>';
            $text_attributes.= '<span>'.$attributes['code'].'</span>';
            $text_attributes.= '<div style="font-weight: normal;">';
            foreach ($attributes['attributes'] as $item){
               $text_attributes.= $item['title'].'<br>';
            }
            $text_attributes.= '</div>';
            $text_attributes.= '</div><br>';
        }

    }
    $customer_name = $invoice->customer_name;
    $customer_phone = $invoice->customer_phone;
    $customer_address = $invoice->customer_address;
    $customer_message = $invoice->customer_message;

    $config = JFactory::getConfig();
    $mailfrom = $config->get('mailfrom');
    $fromname = $config->get('fromname');
    $mailto   = $config->get('mailfrom');

    $tzoffset = $config->get('offset');
    $timezone = new DateTimeZone($tzoffset);
    $date_time = JDate::getInstance('now', $timezone)->format('Y-m-d H:i:s',true);

    $title = 'New Order from'.$customer_name.' : '.$date_time;
    $product_name ='<a href="'.JURI::Root().JRoute::_('index.php?option=com_jk8_products&view=products&layout=detail&id='.$invoice->product_id,true).'">'.$invoice->product_name.'</a>';

    $content = '';

    $content.= '<table>';
    $content.= '<tr><td style="text-align:right; padding:8px 0px; color:#666;"> Product Name:</td> <td></td>  <td style="font-weight:bold; font-family: arial; font-size:12px; color:#333;">'.$product_name.'</td></tr>';
    if($list_attributes)
    $content.= '<tr><td style="text-align:right; padding:8px 0px; color:#666; vertical-align: top;"> Product Attributes:</td> <td></td>  <td style="font-weight:bold; font-family: arial; font-size:12px; color:#333; padding:8px 0px;">'.$text_attributes.'</td></tr>';
    $content.= '<tr><td style="text-align:right; padding:8px 0px; color:#666;"> Customer Name:</td> <td></td>  <td style="font-weight:bold; font-family: arial; font-size:12px; color:#333;">'.$customer_name.'</td></tr>';
    $content.= '<tr><td style="text-align:right; padding:8px 0px; color:#666;"> Phone:</td> <td></td> <td style="font-weight:bold; font-family: arial; font-size:12px; color:#333;">'. $customer_phone .'</td></tr>';
    if($customer_address)
    $content.= '<tr><td style="text-align:right; padding:8px 0px; color:#666;"> Address:</td> <td></td>  <td style="font-weight:bold; font-family: arial; font-size:12px; color:#333;">'.$customer_address.'</td></tr>';
    if($customer_message)
    $content.= '<tr><td style="text-align:right; padding:8px 0px; color:#666;"> Message:</td> <td></td> <td style="font-weight:bold; font-family: arial; font-size:12px; color:#333;">'. $customer_message .'</td></tr>';
    $content.= '</table>';

    $mail_content = $content;
     //echo $content; die('aa');

    $this->sendMail($mailfrom,$fromname,$mailto,$title,$mail_content,1);
    }

    function sendMail($from, $fromname, $recipient, $subject, $body, $mode=0, $cc=null, $bcc=null, $attachment=null, $replyto=null, $replytoname=null)
    {
            jimport( 'joomla.utilities.utility' );
            // Get a JMail instance
            $mail = &JFactory::getMailer();

            $mail->setSender(array($from, $fromname));
            $mail->setSubject($subject);
            $mail->setBody($body);

            // Are we sending the email as HTML?
            if ($mode) {
                    $mail->IsHTML(true);
            }

            $mail->addRecipient($recipient);
            $mail->addCC($cc);
            $mail->addBCC($bcc);
            $mail->addAttachment($attachment);

            // Take care of reply email addresses
            if (is_array($replyto)) {
                    $numReplyTo = count($replyto);
                    for ($i=0; $i < $numReplyTo; $i++){
                            $mail->addReplyTo(array($replyto[$i], $replytoname[$i]));
                    }
            } elseif (isset($replyto)) {
                    $mail->addReplyTo(array($replyto, $replytoname));
            }

            return  $mail->Send();
    }

    function getInvoice($invoice_id){
        $db    =  JFactory::getDbo();
        $query = $db->getQuery(true);
        $query->select('a.*,p.title as product_name,p.id as product_id')
              ->from(_JOOM_TABLE_PRODUCTS_INVOICES.' AS a')
              ->join('LEFT', _JOOM_TABLE_PRODUCTS_PRODUCT.' AS p ON p.id = a.product_id')
              ->where('a.id ='.$invoice_id);

		$data = $db->setQuery($query)->loadObject();
		return $data;
    }

    function test(){
      $this->sendMailOrder(11);
    }

}
?>