package simpleEngine;

class Game{
	static public var QuitFlag(default, default) : Bool;

	private var entitiesHandler : EntitiesHandler;

	public function new(){
		QuitFlag = false;
		entitiesHandler = new EntitiesHandler();
	}

	public function start(){
		entitiesHandler.start();
	}

	public function update(){
		if (QuitFlag) System.exit(-1);
		entitiesHandler.update();
	}

	public function addEntity(entity : IEntity){
		entitiesHandler.addEntity(entity);
	}
}