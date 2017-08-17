package simpleEngine.core.entitySystem;

class EntitiesHandler{
	private var entities : List<IEntity>;
	private var services : Map<Dynamic, IService>;

	public function new(){
		entities = new List<IEntity>();
		services = new Map<Type.ValueType, IService>();
	}

	public function start(){
		startEntities();
		startServices();
	}

	public function update(){
		updateEntities();
		updateServices();
	}

	private function updateEntities(){
		for (entity in entities.iterator()) entity.update();
	}

	private function updateServices(){
		for (service in services.iterator()) service.update();
	}

	private function startEntities(){
		for (entity in entities.iterator()) entity.start();
	}

	private function startServices(){
		for (service in services.iterator()) service.start();
	}

	public function addEntity(entity : IEntity){
		entities.add(entity);
	}

	public function registerService(service : IService){
		services.set(Type.getClass(service), service);
	}
}