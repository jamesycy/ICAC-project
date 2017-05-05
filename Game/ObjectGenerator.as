package {
	//import mx.transitions.Tween;
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.utils.getDefinitionByName;

	public class ObjectGenerator extends MovieClip {
		private var CDCount:Number;
		private var generatePeriodBase:Number;
		private var generatePeriodLength:Number;
		private var generatePeriod:Number;
		private var advancedFrame:Number;
		private var objArray:Array;
		private var objTrackArray:Array;
		private var pointArray:Array;
		public var startGenerate:Boolean;
		
		private var oldCharecter:String = "";
		
		public function ObjectGenerator() {
			CDCount = 0;
			generatePeriodBase = 15;
			generatePeriodLength = 0;//15
			generatePeriod = randRange(generatePeriodBase-generatePeriodLength, generatePeriodBase+generatePeriodLength);
			advancedFrame = 0;
			objArray = new Array("Level1_APPLE", "Level1_BADGUY1", "Level1_BADGUY2", "Level1_BADGUY3");
			objTrackArray = new Array(1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3);
			//pointArray = new Array(-10, -20, -20, -10);
			startGenerate = false;
			
			addEventListener(Event.ENTER_FRAME, onEnterFrame);
		}
		
		private function generateCD() {
			var objIdx = randRange(0, 3);
			var randTrack:Number = objTrackArray[randRange(0, (objTrackArray.length-1))];

			while (oldCharecter == objArray[objIdx])
			{
				objIdx = randRange(0, 3)
			}
			oldCharecter = objArray[objIdx];
					
			//var temp = objArray[objIdx];
			//trace("Obj=" + temp + "====track=" + randTrack);
			MovieClip(parent.getChildByName(objArray[objIdx])).gotoAndPlay(randTrack + 1);
				
			//this.CDCount++;
		}
		
		private function randRange(min:Number, max:Number):Number {
			var randomNum:Number = Math.floor(Math.random()*(max-min+1))+min;
			return randomNum;
		}
		
		public function onEnterFrame(event:Event):void {
        	advancedFrame++;
			if (advancedFrame%generatePeriod == 0 && startGenerate) {
				generateCD();
			}
        }
		
		public function deposed():void {
			removeEventListener(Event.ENTER_FRAME, onEnterFrame);
			trace("remove listener");
		}
	}
}