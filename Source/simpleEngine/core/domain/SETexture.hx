package simpleEngine.core.domain;

class SETexture{
	private var bitmapData : BitmapData;

	public var BitmapData (get, set) : BitmapData;
	public var Path(default, null) : String;
	private var sprites : List<SESprite>;

	private function get_BitmapData() : BitmapData{
		return bitmapData;
	}

	private function set_BitmapData(value : BitmapData) : BitmapData{
		bitmapData = value;
		resetBitmapData();
		return bitmapData;
	}

	public function new(bitmapData : BitmapData, path : String){
		if (bitmapData == null){
			Debug.error("Can't create SETexture because bitmapData is null");
			Game.QuitFlag = true;
			return;
		}
		if (path == null || path == ""){
			Debug.error("Can't create SETexture because path to file is null or empty");
			Game.QuitFlag = true;
			return;
		}
		sprites = new List<SESprite>();
		BitmapData = bitmapData;
		Path = path;
	}

	public function getSprite(?rectangle : Rectangle) : SESprite{
		var sprite = new SESprite(BitmapData, rectangle);
		sprites.push(sprite);
		return sprite;
	}

	private function resetBitmapData(){
		for (sprite in sprites.iterator()){
			trace(sprite);
			sprite.BitmapData = bitmapData;
		}
	}
}