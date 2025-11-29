package;

#if !marco

#if sys
import sys.FileSystem;
import sys.io.File;
#end

import haxe.Json;
import haxe.io.Path;

import lime.app.Application;
import openfl.media.Sound;
import openfl.utils.Assets;
import openfl.display.BitmapData;

import flixel.FlxG;
import flixel.FlxBasic;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxCamera;
import flixel.FlxState;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;
import flixel.math.FlxMath;
import flixel.math.FlxRect;
import flixel.math.FlxPoint;
import flixel.group.FlxGroup;
import flixel.group.FlxSpriteGroup;
import flixel.graphics.FlxGraphic;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.util.FlxColor;
import flixel.util.FlxSort;
import flixel.util.FlxTimer;
import flixel.sound.FlxSound;
import flixel.addons.transition.FlxTransitionableState;

import legacy.backend.Song;
import legacy.backend.Highscore;
import legacy.backend.Conductor;

import legacy.states.PlayState;
import legacy.states.MusicBeatState;
import legacy.states.MusicBeatSubstate;
import legacy.states.menus.TitleState;

import legacy.util.CoolUtil;

using flixel.util.FlxStringUtil;
using StringTools;

#end