package legacy.backend;

import haxe.Timer;
import openfl.text.TextField;
import openfl.text.TextFormat;

class FPS extends TextField {
	private var times: Array<Float> = [];

    private var mem(get, never): Float;

	inline function get_mem():Float {
		return cpp.vm.Gc.memInfo64(cpp.vm.Gc.MEM_INFO_USAGE);
	}

	private var memPeak: Float = 0;

	public function new(x: Float = 10.0, y: Float = 10.0, color: Int = 0xFFFFFF):Void {
		super();

		this.x = x;
		this.y = y;

        autoSize = LEFT;
		background = true;
		backgroundColor = 0x000000;
		mouseEnabled = selectable = false;

		defaultTextFormat = new TextFormat("_sans", 12, color);
	}

	override function __enterFrame(delta: Float):Void {
		var now: Float = Timer.stamp() * 1000;

		times.push(now);

		while(times[0] < now - 1000)
			times.shift();

		if(mem > memPeak)
			memPeak = mem;

		text = 'FPS: ${times.length}\nRAM: ${mem.formatBytes()} / ${memPeak.formatBytes()}';
	}
}
