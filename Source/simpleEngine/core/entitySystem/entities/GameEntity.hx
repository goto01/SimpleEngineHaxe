package simpleEngine.core.entitySystem.entities;

class GameEntity implements IEntity{
	private var x : Float;
	private var y : Float;
	private var active : Bool;

	private function new(){
		this.x = 0;
		this.y = 0;
		active = true;
	}

	public function start(){}

	public function update(){}
}