package game.services;

class SimpleService extends Service{
	public static var Instance(default, null) : SimpleService = new SimpleService();
	public var Flag(default, default) : Bool;

	public override function start(){
		Flag = false;
		Debug.message("service start");
	}

	public override function update(){
		if (Flag){ 
			Flag = !Flag;
			Debug.message("service updated");
		}
	}
}