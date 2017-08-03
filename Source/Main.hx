package;

class Main extends Sprite {	
	private var container : SimpleContainer;
	private var sprite : SpriteGameEntity;
	private var index = 0;
	private var scale = 1;
	private var bitmap : Bitmap;

	public function new () {
		var bitmapTitle = Assets.getBitmapData("assets/GFX/title.png");
		var bitmapData = Assets.getBitmapData("assets/GFX/tiles.png");
		super();
		bitmap = new Bitmap();
		bitmap.bitmapData = bitmapTitle;
		addChild(bitmap);
		Lib.current.stage.addEventListener(MouseEvent.CLICK, clickEventHandler);
		Lib.current.stage.addEventListener(MouseEvent.RIGHT_CLICK, rightClickEventHandler);
		Lib.current.stage.addEventListener(Event.ENTER_FRAME, update);
		Lib.current.x = Lib.current.stage.window.width/2 - 200*scale;
		Lib.current.y = Lib.current.stage.window.height/2 - 150*scale;
		Lib.current.scrollRect = new Rectangle(0, 0, 400, 300);
	}
	
	private function clickEventHandler(event : MouseEvent){
		var bitmapData = Assets.getBitmapData("assets/GFX/tiles.png");
		bitmap.bitmapData = bitmapData;
	}

	private function rightClickEventHandler(event : MouseEvent){
		scale --;
		Lib.current.scaleX = scale;
		Lib.current.scaleY = scale;
		Lib.current.x = Lib.current.stage.window.width/2 - 200*scale;
		Lib.current.y = Lib.current.stage.window.height/2 - 150*scale;
	}

	private function update(event : Event){
		//trace(Timer.stamp());
		//sprite.X = 35 + Std.int(Math.sin(Timer.stamp()*10)*100);
		//sprite.Y = 50 + Std.int(Math.cos(Timer.stamp()*10)*100);
	}
}