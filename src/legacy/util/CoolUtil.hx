package legacy.util;

class CoolUtil
{
	public static function coolTextFile(path:String):Array<String>
	{
		var daList:Array<String> = Assets.getText(path).trim().split('\n');

		for (i in 0...daList.length)
		{
			daList[i] = daList[i].trim();
		}

		return daList;
	}

	public static function numberArray(max:Int, ?min = 0):Array<Int>
	{
		var dumbArray:Array<Int> = [];
		for (i in min...max)
		{
			dumbArray.push(i);
		}
		return dumbArray;
	}

	public static function clearCache():Void {
		@:privateAccess
		for(key in FlxG.bitmap._cache.keys()) {
			if(key == null) continue;

			/* if(FlxG.bitmap.checkCache(key)) {
				var obj: FlxGraphic = FlxG.bitmap._cache.get(key);
				FlxG.bitmap._cache.remove(key);
				obj.destroy();
			} */

			if(Assets.cache.hasBitmapData(key))
				Assets.cache.removeBitmapData(key);

			if(Assets.cache.hasSound(key))
				Assets.cache.removeSound(key);
		}

		cpp.vm.Gc.run(false);
		cpp.vm.Gc.compact();
	}
}
