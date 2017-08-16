package simpleEngine.core.taskSystem;

class Task{
	public var Progress(default, null) : Progress;
	public var OnComplete(default, null) : Void -> Void;
	public var Completed(get, null) : Bool;
	private var thread : Thread;

	private function get_Completed() : Bool{
		return Progress.Completed;
	}

	public function new (method : Progress->Array<Dynamic>->Void, onComplete : Void->Void, parameters : Array<Dynamic>, 
			progressTotalValue : Float){
		thread = Thread.create(awakeTask);
		this.Progress = new Progress(progressTotalValue);
		this.OnComplete = onComplete;
		thread.sendMessage(this.Progress);
		thread.sendMessage(method);
		thread.sendMessage(parameters);
	}

	private function awakeTask(){
		var progress : Progress = Thread.readMessage(true);
		var method : Progress->Array<Dynamic>->Void = Thread.readMessage(true);
		var parameters : Array<Dynamic> = Thread.readMessage(true);
		method(progress, parameters);
		progress.Completed = true;
	}
}