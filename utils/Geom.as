/**
 * Created by IntelliJ IDEA.
 * User: Regul
 * Date: 25.11.11
 * Time: 11:35
 * To change this template use File | Settings | File Templates.
 */
package com.ax3.utils {
	import flash.geom.Point;

	public class Geom {
		public function Geom() {
		}

		/**
		 * Проэкция точки на прямую AB
		 * @param p
		 * @param a
		 * @param b
		 * @return
		 */
		public static function getPointProjection(p:Point, a:Point, b:Point):Point {
			var fDenominator:Number = Math.pow(b.x - a.x, 2) + Math.pow(b.y - a.y, 2);
			if (fDenominator == 0)
				return a;

			var t:Number = (p.x * (b.x - a.x) - (b.x - a.x) * a.x + p.y * (b.y - a.y) - (b.y - a.y) * a.y) / fDenominator;

			return new Point(a.x + (b.x - a.x) * t, a.y + (b.y - a.y) * t);

		}

		public static function isPointOnLine(p:Point, a:Point, b:Point):Boolean {
//			var ratio:Number = (b.x - a.x) / (b.y - a.y) - (p.x - a.x) / (p.y - a.y);
//			trace(ratio);
//			return Math.abs(ratio) < 0.1;
			// говнокодим
			var pointProjection:Point = getPointProjection(p, a, b);
			var dist:Number = Point.distance(pointProjection, p);
			return dist < 25;
		}


	}
}
