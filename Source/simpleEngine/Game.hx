package simpleEngine;

class Game{
	static public var QuitFlag(default, default) : Bool;

	public function new(){
		QuitFlag = false;
	}

	public function update(){
		if (QuitFlag) System.exit(-1);
	}
}