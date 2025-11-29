package legacy.states;

import flixel.addons.transition.TransitionData;
import flixel.addons.transition.FlxTransitionSprite.GraphicTransTileDiamond;

class InitState extends FlxState {
    override function create():Void {
        FlxG.game.focusLostFramerate = 60;
        FlxG.cameras.useBufferLocking = true;
        FlxG.fixedTimestep = FlxG.mouse.visible = false;

        /* var diamond: FlxGraphic = FlxGraphic.fromClass(GraphicTransTileDiamond);
		diamond.persist = true;
		diamond.destroyOnNoUse = false;

		FlxTransitionableState.defaultTransIn = new TransitionData(FADE, FlxColor.BLACK, 1, new FlxPoint(0, -1), {asset: diamond, width: 32, height: 32},
			new FlxRect(-200, -200, FlxG.width * 1.4, FlxG.height * 1.4));
		FlxTransitionableState.defaultTransOut = new TransitionData(FADE, FlxColor.BLACK, 0.7, new FlxPoint(0, 1),
			{asset: diamond, width: 32, height: 32}, new FlxRect(-200, -200, FlxG.width * 1.4, FlxG.height * 1.4)); */

        @:privateAccess
        FlxG.switchState(Type.createInstance(Main.meta.state, []));
    }
}