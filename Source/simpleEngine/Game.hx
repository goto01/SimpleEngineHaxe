package simpleEngine;

class Game{
	static public var Instance(default, null) = new Game();
	static public var QuitFlag(default, default) : Bool;

	private var entitiesHandler : EntitiesHandler;
	private var taskHandler : TaskHandler;

	private function new(){
		QuitFlag = false;
		entitiesHandler = new EntitiesHandler();
		taskHandler = new TaskHandler();
	}

	private function _start(){
		entitiesHandler.start();
	}

	public static function start(){
		Instance._start();
	}

	private function _update(){
		if (QuitFlag) System.exit(-1);
		taskHandler.update();
		entitiesHandler.update();
	}

	public static function update(){
		Instance._update();
	}

	private function _startTask(method:Progress->Array<Dynamic>->Void, onComplete:Void->Void, parameters:Array<Dynamic>, progressTotalValue:Float){
		taskHandler.startTask(method, onComplete, parameters, progressTotalValue);
	}

	public static function startTask(method:Progress->Array<Dynamic>->Void, onComplete:Void->Void, parameters:Array<Dynamic>, progressTotalValue:Float){
		Instance._startTask(method, onComplete, parameters, progressTotalValue);
	}

	private function _addEntity(entity : IEntity){
		entitiesHandler.addEntity(entity);
	}

	public static function addEntity(entity : IEntity){
		Instance._addEntity(entity);
	}

	private function _registerService(service : IService){
		entitiesHandler.registerService(service);
	}

	public static function registerService(service : IService){
		Instance._registerService(service);
	}
}