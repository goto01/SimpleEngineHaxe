package game.entities;

class SimpleEntity extends SpriteGameEntity{
	public function new(sprite : SESprite){
		super(sprite);
	}

	public override function update(){
		trace("update");
	}
}