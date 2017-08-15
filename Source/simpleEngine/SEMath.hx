package simpleEngine;

class SEMath {
	public static function clamp(leftValue : Float, rightValue : Float, value : Float) : Float{
		if (value < leftValue) return leftValue;
		if (value > rightValue) return rightValue;
		return value;
	}
}