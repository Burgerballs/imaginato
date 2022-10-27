package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1, 2], 0, false, isPlayer);
		animation.add('bfjoke', [3, 4, 5], 0, false, isPlayer);		
		animation.add('bf-car', [0, 1, 2], 0, false, isPlayer);
		animation.add('bf-christmas', [0, 1, 2], 0, false, isPlayer);
		animation.add('bf-pixel', [21, 21, 21], 0, false, isPlayer);
		animation.add('spooky', [3, 4, 5], 0, false, isPlayer);
		animation.add('dad', [0, 1, 2], 0, false, isPlayer);
		animation.add('bf-old', [14, 15, 14], 0, false, isPlayer);
		animation.add('gf', [0, 1, 2], 0, false, isPlayer);
		animation.play(char);
		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
