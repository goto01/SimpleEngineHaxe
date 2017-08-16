package simpleEngine.core.taskSystem;

class TaskHandler implements IService{
	private var tasks : List<Task>;

	public function new(){
		tasks = new List<Task>();
	}

	public function start(){

	}

	public function update(){
		for (task in tasks){
			if (task.Completed) handleTask(task);
		}
	}

	public function startTask(method : Progress->Array<Dynamic>->Void, onComplete : Void->Void, parameters : Array<Dynamic>, 
			progressTotalValue : Float) : Task {
		var task = new Task(method, onComplete, parameters, progressTotalValue);
		tasks.add(task);
		return task;
	}

	private function handleTask(task : Task){
		tasks.remove(task);
		task.OnComplete();
	}
}