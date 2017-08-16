package simpleEngine.core.taskSystem;

class Progress {
	private var value : Float;

	public var Value(get, set) : Float;
	public var TotalValue(default, null) : Float;
	public var Completed(default, default) : Bool;

	private function get_Value() : Float{
		return value;
	}

	private function set_Value(value : Float) : Float{
		return ((this.value = SEMath.clamp(0, TotalValue, value)));
	}

	public function new(totalValue : Float){
		TotalValue = totalValue;
		Value = 0;
		Completed = false;
	}
}