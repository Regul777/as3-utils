/**
 * Created by IntelliJ IDEA.
 * User: Regul
 * Date: 28.11.11
 * Time: 17:46
 * To change this template use File | Settings | File Templates.
 */
package com.ax3.utils{
	public class StringUtil {

		/**
		 * Convert Number: 99999 to 99K, 100000 to 100K .. 1M
		 * @param value
		 * @return
		 */
		public static function getShortNumber(value:Number):String {
			var str:String = "";
			if (value >= 1000 * 1000) {
				value = Math.floor(value / (1000 * 1000));
				str += " M";
			} else if (value >= 1000) {
				value = Math.floor(value / 1000);
				str += " K";
			}
			return value + str;
		}

		/**
		 * Convert Number: 99999 to 99999, 100000 to 100k .. 100M
		 */
		public static function getSmartShortNumber(value:Number):String {
			var str:String = "";
			if (value >=100 * 1000 * 1000) {
				value = Math.floor(value / (1000 * 1000));
				str += " M";
			} else if (value >= 100 * 1000) {
				value = Math.floor(value / 1000);
				str += " K";
			}
			return value + str;
		}

		public static function findMaxWordLength(title:String):Number {
			var maxLength:int = 0;
			var words:Array = title.split(" ");
			for each (var word:String in words) {
				maxLength = Math.max(maxLength, word.length);
			}
			return maxLength;
		}

	}
}
