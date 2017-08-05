package simpleEngine;

class Debug{
	static private inline var INFO = "INFO:   ";
	static private inline var ERROR = "ERROR:   ";

	static public function message(?value0 : Dynamic, ?value1 : Dynamic, ?value2 : Dynamic, ?value3 : Dynamic, ?value4 : Dynamic){
		log(INFO, value0, value1, value2, value3, value4);
	}

	static public function error(?value0 : Dynamic, ?value1 : Dynamic, ?value2 : Dynamic, ?value3 : Dynamic, ?value4 : Dynamic){
		log(ERROR, value0, value1, value2, value3, value4);
	}

	static private function log(?value0 : Dynamic, ?value1 : Dynamic, ?value2 : Dynamic, ?value3 : Dynamic, ?value4 : Dynamic, ?value5 : Dynamic){
		var message = Std.string(value0);
		if (value1 != null) message += " " + Std.string(value1);
		if (value2 != null) message += " " + Std.string(value2);
		if (value3 != null) message += " " + Std.string(value3);
		if (value4 != null) message += " " + Std.string(value4);
		if (value5 != null) message += " " + Std.string(value5);
		trace(message);
	}
}