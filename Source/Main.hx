package;

class Main extends Sprite {	
	private var container : SimpleContainer;
	private var index = 0;
	private var scale = 1;
	private var bitmap : Bitmap;

	private var texture : SETexture;
	private var sprite : SESprite;
	private var task : Task;
	private var taskHandler : TaskHandler;

	public function new () {
		super();

		var bitmapTitle = Assets.getBitmapData("assets/GFX/title.png", false);
		var tilesBitmapData = Assets.getBitmapData("assets/GFX/tiles.png", false);
		
		texture = new SETexture(tilesBitmapData, "assets/GFX/tiles.png");
		sprite = texture.getSprite(new Rectangle(0, 0, 0, 32));
		var entity = new SimpleEntity(sprite);
		//Game.addEntity(entity);
		Game.registerService(SimpleService.Instance);

		Game.start();
		initStage();

	}

	private function clickEventHandler(event : MouseEvent){
		SimpleService.Instance.Flag = true;
		//var bitmapData = Assets.getBitmapData("assets/GFX/tiles.png", false);
		//bitmap.bitmapData = bitmapData;
		//sprite.BitmapData = tilesBitmapData;
	}

	private function rightClickEventHandler(event : MouseEvent){
		scale --;
		Lib.current.scaleX = scale;
		Lib.current.scaleY = scale;
		Lib.current.x = Lib.current.stage.window.width/2 - 200*scale;
		Lib.current.y = Lib.current.stage.window.height/2 - 150*scale;
	}

	private function update(event : Event){
		//taskHandler.update();
		Game.update();
		//var r = sprite.Rect;
		//r.width = 300 * task.Progress.Value;
		//sprite.Rect = r;
		//trace(Timer.stamp());
		//sprite.X = 35 + Std.int(Math.sin(Timer.stamp()*10)*100);
		//sprite.Y = 50 + Std.int(Math.cos(Timer.stamp()*10)*100);
	}

	private function initStage(){
		Lib.current.stage.addEventListener(MouseEvent.CLICK, clickEventHandler);
		Lib.current.stage.addEventListener(MouseEvent.RIGHT_CLICK, rightClickEventHandler);
		Lib.current.stage.addEventListener(Event.ENTER_FRAME, update);
		Lib.current.x = Lib.current.stage.window.width/2 - 200*scale;
		Lib.current.y = Lib.current.stage.window.height/2 - 150*scale;
		Lib.current.scrollRect = new Rectangle(0, 0, 400, 300);
	}
}