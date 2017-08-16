package simpleEngine.core.entitySystem.entities;

class GameEntity implements IEntity{
	private var x : Int;
	private var y : Int;
	private var active : Bool;

	private function new(?x = 0, ?y = 0){
		this.x = x;
		this.y = y;
		active = true;
	}

	public function update(){}
}