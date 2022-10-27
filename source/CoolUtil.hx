package;

import states.PlayState;
import lime.utils.Assets;
import sys.FileSystem;
import openfl.utils.AssetType;

using StringTools;

class CoolUtil
{
	public static var difficultyArray:Array<String> = ['EASY', "NORMAL", "HARD"];

	public static function difficultyString():String
	{
		return difficultyArray[PlayState.storyDifficulty];
	}
	// does this even work at all?
	inline public static function fileExists(path:String, type:AssetType = TEXT, ?library:Null<String>):Bool
		{
			var assetExists = FileSystem.exists(Paths.getPath(path, type, library));
	
			if (assetExists)
				return true;
	
			return false;
		}
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
}
