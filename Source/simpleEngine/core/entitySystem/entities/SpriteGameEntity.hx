package simpleEngine.core.entitySystem.entities;

class SpriteGameEntity extends GameEntity{
	private var sprite : SESprite;

	public var Sprite(get, set) : SESprite;
	public var X(get, set) : Float;
	public var Y(get, set) : Float;
	public var Rect(default, set) : Rectangle;

	private function get_Sprite() : SESprite { return sprite;}

	private function set_Sprite(value : SESprite) : SESprite{
		sprite = value;
		return sprite;
	}

	private function get_X() : Float{ return this.x; }

	private function set_X(value : Float) : Float{
		this.x = value; 
		sprite.Bitmap.x = this.x;
		return this.x;
	}

	private function get_Y() : Float { return this.y; }

	private function set_Y(value : Float) : Float{ 
		this.y = value; 
		sprite.Bitmap.y = this.y;
		return this.y;
	}

	private function set_Rect(value : Rectangle) : Rectangle{
		sprite.Rect = value;
		return sprite.Rect;
	}

	public function new(sprite : SESprite){
		this.sprite = sprite;
		super();
	}

	public function renderAt(container : DisplayObjectContainer){
		container.addChild(sprite.Bitmap);
	}
}