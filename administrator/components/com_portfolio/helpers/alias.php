<?php
defined('_JEXEC') or die;
//<FileName>Helper

class AliasHelper{
	public static function filter($value){

		/*a à ả ã á ạ ă ằ ẳ ẵ ắ ặ â ầ ẩ ẫ ấ ậ b c d đ e è ẻ ẽ é ẹ ê ề ể ễ ế ệ
          f g h i ì ỉ ĩ í ị j k l m n o ò ỏ õ ó ọ ô ồ ổ ỗ ố ộ ơ ờ ở ỡ ớ ợ
          p q r s t u ù ủ ũ ú ụ ư ừ ử ữ ứ ự v w x y ỳ ỷ ỹ ý ỵ z*/

		$arr = array(
					 'a'=>'à|ả|ã|á|ạ|ă|ằ|ẳ|ẵ|ắ|ặ|â|ầ|ẩ|ẫ|ấ|ậ',
					 'd'=>'đ',
					 'e'=>'è|ẻ|ẽ|é|ẹ|ê|ề|ể|ễ|ế|ệ',
					 'i'=>'ì|ỉ|ĩ|í|ị',
					 'o'=>'ò|ỏ|õ|ó|ọ|ô|ồ|ổ|ỗ|ố|ộ|ơ|ờ|ở|ỡ|ớ|ợ',
					 'u'=>'ù|ủ|ũ|ú|ụ|ư|ừ|ử|ữ|ứ|ự',
					 'y'=>'ỳ|ỷ|ỹ|ý|ỵ',
					);
		$newValue = mb_strtolower(trim($value),'utf-8');// truyện   thiếu  nhi
		// Truyện-thiếu-nhi
		$newValue = preg_replace('#(\s)+#im', '-', $newValue);//truyện-thiếu-nhi

		foreach ($arr as $key => $val){
			$pattern = '#('. $val . ')#imu'; //'#(à|ả|ã|á|ạ|ă|ằ|ẳ|ẵ|ắ|ặ|â|ầ|ẩ|ẫ|ấ|ậ)#imu';
			$newValue = preg_replace($pattern,$key, $newValue);
		}

		return $newValue;
	}
}