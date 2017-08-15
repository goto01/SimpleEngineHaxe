package simpleEngine.core.taskSystem;

class Task{
	public var Progress(default, null) : Progress;
	private var onComplete : Void -> Void;
	private var thread : Thread;

	public function new (method : Progress->Array<Dynamic>->Void, onComplete : Void->Void, parameters : Array<Dynamic>, progressTotalValue : Float){
		thread = Thread.create(awakeTask);
		this.Progress = new Progress(progressTotalValue);
		this.onComplete = onComplete;
		thread.sendMessage(this.Progress);
		thread.sendMessage(method);
		thread.sendMessage(parameters);
	}

	private function awakeTask(){
		var progress : Progress = Thread.readMessage(true);
		var method : Progress->Array<Dynamic>->Void = Thread.readMessage(true);
		var parameters : Array<Dynamic> = Thread.readMessage(true);
		method(progress, parameters);
	}
}