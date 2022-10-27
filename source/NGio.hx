package;

import flixel.FlxG;
import flixel.util.FlxSignal;
import flixel.util.FlxTimer;
import lime.app.Application;
import openfl.display.Stage;

using StringTools;

/**
 * MADE BY GEOKURELI THE LEGENED GOD HERO MVP
 */
class NGio
{

	public static function noLogin(api:String)
	{
	}

	public function new(api:String, encKey:String, ?sessionId:String)
	{
	}

	function onNGLogin():Void
	{
	}

	// --- MEDALS
	function onNGMedalFetch():Void
	{
		/*
			// Reading medal info
			for (id in NG.core.medals.keys())
			{
				var medal = NG.core.medals.get(id);
				trace('loaded medal id:$id, name:${medal.name}, description:${medal.description}');
			}

			// Unlocking medals
			var unlockingMedal = NG.core.medals.get(54352);// medal ids are listed in your NG project viewer
			if (!unlockingMedal.unlocked)
				unlockingMedal.sendUnlock();
		 */
	}

	// --- SCOREBOARDS
	function onNGBoardsFetch():Void
	{
	}

	inline static public function postScore(score:Int = 0, song:String)
	{
	}

	function onNGScoresFetch():Void
	{
	}

	inline static public function logEvent(event:String)
	{
	}

	inline static public function unlockMedal(id:Int)
	{
	}
}