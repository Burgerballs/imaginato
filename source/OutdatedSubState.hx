package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.app.Application;

class OutdatedSubState extends MusicBeatState
{
	public static var leftState:Bool = false;

	override function create()
	{
		super.create();
		var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		add(bg);
		var ver = "v" + Application.current.meta.get('version');
		var txt:FlxText = new FlxText(0, 0, FlxG.width,
			"Hello! This Mod is a WIP.\nMany things in this version are not done,"
			+ " such as sprites and music."
			+ " Press Enter to continue!",
			32);
		txt.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt.screenCenter();
		add(txt);
	}

	override function update(elapsed:Float)
	{
		if (controls.BACK)
		{
			FlxG.openURL("https://ninja-muffin24.itch.io/funkin");
		}
		if (FlxG.keys.justPressed.ENTER)
		{
			leftState = true;
			FlxG.switchState(new MainMenuState());
		}
		super.update(elapsed);
	}
}
