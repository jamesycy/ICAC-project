package
{
	import mx.transitions.Tween;
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class BadObject extends MovieClip {
		private var endX:Number;
		private var endY:Number;
		private var speedX:Number;
		private var speedY:Number;
		private var isMoving:Boolean;
		private var accY:Number;
		private var randMinX:Number;
		private var randMaxX:Number;
		private var randMinY:Number;
		private var randMaxY:Number;
		private var hasRotate:Boolean;
		private var point:Number;
		private var hitActionFrame:String;
		private var hasJumped:Boolean;
		private var ObjectCounter:Number;
		
		public function BadObject() {
			stop();
			//_x = 700;
			//_y = 300;
			endX = 750;
			endY = 600;
			isMoving = false;
			hasJumped = false;
			//randMinX = -15;
			//randMaxX = -20;
			//randMinY = -2;
			//randMaxY = -8;
			//accY = 0.15;
			startMoving();
			addEventListener(Event.ENTER_FRAME, onEnterFrame);
		}
		
		private function startMoving() {
			//var pathNo:Number = randRange(1,2);
			//gotoAndPlay("path"+pathNo);
			isMoving = true;
			speedX = randRange(randMinX, randMaxX);
			speedY = randRange(randMinY, randMaxY);
		}
		
		public function onEnterFrame(event:Event):void 
		{
			if (this.hasRotate) {
				this._rotation -= 30;
			}
			
			if (isMoving) {
				speedY += accY;
				_x += speedX;
				_y += speedY;
			}
			
			if (_x>(endX+60)) {
				if (hasJumped == false)
				{
					ObjectCounter++;
				
					this.hasJumped = true;
					trace("Jumped");
									
					//_root.attachMovie("score_left", "score_left"+this.ObjectCounter, _root.getNextHighestDepth(), {_x:450, _y:300, ObjDirection:1, myScore:(-1 * point)}); 
					
					//var score:Number = Number(_root.mc_stage2_teamTraining.scoreBoard.point.text) + (-1 * point);
					//if (score < 0)
					//	score = 0 ;
					//_root.mc_stage2_teamTraining.scoreBoard.point.text = score;
				}
				//this.removeMovieClip();
			}
			
			//if (this.hitTest(_root.mc_stage2_teamTraining.body.boundsArea)) {
//				this.hasJumped = true;
//				
//				_root.mc_stage2_teamTraining.body.gotoLabel("jumpguy_fall");
//				_root.mc_stage2_teamTraining.body.isHurt = true;
//				_root.mc_stage2_teamTraining.body.redguy.bubblepoint.point.text = point;
//				
//				var score:Number = Number(_root.mc_stage2_teamTraining.scoreBoard.point.text) + point;
//				if (score < 0)
//					score = 0;
//				_root.mc_stage2_teamTraining.scoreBoard.point.text = score;
//				
//				this.removeMovieClip();
//			}
		}
		
		private function randRange(min:Number, max:Number):Number {
			var randomNum:Number = Math.floor(Math.random()*(max-min+1))+min;
			return randomNum;
		}
	}
}
