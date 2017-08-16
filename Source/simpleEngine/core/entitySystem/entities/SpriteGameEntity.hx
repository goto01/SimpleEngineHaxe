package simpleEngine.core.entitySystem.entities;

class SpriteGameEntity extends GameEntity{
	private var bitmap : Bitmap;
	private var rect : Rectangle;

	public var X(get, set) : Int;
	public var Y(get, set) : Int;
	public var Rect(default, set) : Rectangle;

	private function get_X() : Int{ return this.x; }

	private function set_X(value : Int) : Int{
		this.x = value; 
		bitmap.x = this.x;
		return this.x;
	}

	private function get_Y() : Int { return this.y; }

	private function set_Y(value : Int) : Int{ 
		this.y = value; 
		bitmap.y = this.y;
		return this.y;
	}

	private function set_Rect(value : Rectangle) : Rectangle{
		this.rect = value;
		bitmap.scrollRect = this.rect;
		return this.rect;
	}

	public function new(bitmapData : BitmapData, ?rectangle : Rectangle, ?xpos = 0, ?ypos = 0){
		this.bitmap = new Bitmap(bitmapData);
		if (rectangle == null) Rect = new Rectangle(0, 0, this.bitmap.width, this.bitmap.height);
		else Rect = rectangle;
		super(xpos, ypos);
		X = xpos;
		Y = ypos;
	}

	public function renderAt(container : DisplayObjectContainer){
		container.addChild(this.bitmap);
	}
}