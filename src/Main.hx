package;

import flixel.FlxGame;
import openfl.display.Sprite;

@:cppInclude('windows.h')
class Main extends Sprite
{
	static final meta: Dynamic = {
		width: 1280,
		height: 720,
		state: legacy.states.menus.TitleState,
		fps: 144,
		skipSplash: true,
		fullscreen: false
	};

	public function new()
	{
		super();

		addChild(new FlxGame(meta.width, meta.height, meta.state, meta.fps, meta.fps, meta.skipSplash, meta.fullscreen));
		addChild(new legacy.backend.FPS(10, 10, 0xFFFFFF));

		untyped __cpp__("SetProcessDPIAware();");
	}
}
