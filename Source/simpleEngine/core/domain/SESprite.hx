package simpleEngine.core.domain;

class SESprite{
	public var Bitmap(default, null) : Bitmap;
	public var BitmapData(get, set) : BitmapData;
	public var Rect(get, set) : Rectangle;

	private function get_BitmapData() : BitmapData{
		return Bitmap.bitmapData;
	}

	private function set_BitmapData(value : BitmapData) : BitmapData{
		Bitmap.bitmapData = value;
		return Bitmap.bitmapData;
	}

	private function get_Rect() : Rectangle{
		return Bitmap.scrollRect;
	}

	private function set_Rect(value : Rectangle) : Rectangle{
		Bitmap.scrollRect = value;
		return Bitmap.scrollRect;
	}

	public function new(bitmapData : BitmapData, ?rectangle : Rectangle){
		if (bitmapData == null){
			Debug.error("Cant create SESprite because bitmapData is null");
			Game.QuitFlag = true;
			return;
		}
		Bitmap = new Bitmap(bitmapData);
		if (rectangle == null) rectangle = new Rectangle(0, 0, bitmapData.width, bitmapData.height);
		Rect = rectangle;
	}
}