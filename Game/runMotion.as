package
{
	//import mx.transitions.Tween;
	//import flash.display.Sprite;
//	import flash.display.SimpleButton;
//	import flash.events.Event;
//	import flash.events.MouseEvent;
	
	import flash.display.MovieClip;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import flash.ui.Keyboard;

	public class runMotion extends MovieClip
	{
		public function runMotion()
		{
			var ox:Number; // Original X
			var oy:Number; // Original Y
			var minx:Number;
			var minusx:Number;
			var speedx:Number;
			var accx:Number;
			var accvalue:Number;
			var speedy:Number;
			var accy:Number;
			var justPressed:String;
			var isJumping:Boolean;
			var maxPosX:Number;
			var fallBack:Boolean;
			var isCrouch:Boolean;
			var isHurt:Boolean;
			var isDown:Boolean;
			var isJump:Boolean;
			var crouchFrame:Number;
			var hurtFrame:Number;
			var downFrame:Number;
			var jumpFrame:Number;
			var crouchCount:Number;
			var hurtCount:Number;
			var downCount:Number;
			var jumpCount:Number;
			//var person:MovieClip;
			var personPushing:Boolean;
			//var scoreTxt:TextField;
			
			//function runMotion() {
//				stop();
//				ox = _x;
//				oy = _y;
//				minx = -_width/2;
//				minusx = -1;
//				//Key.addListener(this);
//				speedx = 0;
//				accx = 0;
//				accvalue = 5;
//				speedy = 0;
//				accy = 2;
//				isJumping = false;
//				maxPosX = ox+400;
//				fallBack = false;
//				isCrouch = false;
//				crouchFrame = 20;
//				hurtFrame = 18;
//				downFrame = 20;
//				jumpFrame = 25;
//				crouchCount = 0;
//				hurtCount = 0;
//				downCount = 0;
//				jumpCount = 0;
//				personPushing = false;
//			}
			  init();
		}

        private function init():void
        {
			var _keys:Array = new Array();
			//stage.addEventListener(KeyboardEvent.KEY_DOWN, handleKeyDown);
			stage.addEventListener(MouseEvent.MOUSE_MOVE, handleMouseMove);
			//stage.addEventListener(KeyboardEvent.KEY_UP, this.handleKeyUp);
        }

		function handleKeyDown(evt:KeyboardEvent):void
		{
			trace(evt.keyCode + "==" + Keyboard.RIGHT);
			if (evt.keyCode ==  Keyboard.RIGHT) 
			{
				if (this.x < 110)
				{
					this.x += 60;
				}
			}
			
			if (evt.keyCode == Keyboard.LEFT) 
			{				
				if (this.x > -110)
				{
					this.x -= 60;
				}
			}
		}
		
		function handleMouseMove(evt:MouseEvent):void
		{
			//MouseEvent.
			this.visible = true;
			this.x = mouseX;
			//this.y = mouseY;
		}
//		public function gotoLabel(labelName:String) {
//			Key.removeListener(this);
//			gotoAndStop("Clear");
//			gotoAndStop(labelName);
//		}
//		
//		private function onEnterFrame() {
//			//trace("[DEBUG] _x= "+_x+"; _y= "+_y);
//			/*
//			if (fallBack) {
//				if (_x>ox) {
//					_x -= 10;
//				} else {
//					fallBack = false;
//					Key.addListener(this);
//				}
//			} else {
//				speedx += (accx-speedx)/10;
//				accx += 0-accx/10;
//				speedx += (minusx-_x*5/Stage.width-speedx)/10;
//				if (_x<=maxPosX) {
//					_x += speedx;
//					if (_x>maxPosX-50) {
//						if (!personPushing) {
//							_root.soundController.playSayEason();
//							person.gotoAndStop("Push");
//							personPushing = true;
//						}
//					} else {
//						if (personPushing) {
//							personPushing = false;
//							person.gotoAndStop("Init");
//						}
//					}
//				} else {
//					_root.soundController.playEasonPush();
//					person.gotoAndStop("PushDone");
//					_root.bubble_mc1.gotoAndPlay("plus30");
//					_root.Eason.gotoAndPlay("Push");
//					if (!_root.ScoreBar.scoreReadOnly) {
//						_root.ScoreBar.hitCount.text = Number(_root.ScoreBar.hitCount.text)+hitEasonPoint;
//					}
//					fallBack = true;
//					speedx = 0;
//					accx = 0;
//					speedy = -20;
//					Key.removeListener(this);
//				}
//				if (_x<ox) {
//					_x = ox;
//				}
//			}
//			speedy = speedy+accy;
//			_y = _y+speedy;
//			if (_y>oy) {
//				// on ground?
//				//unableJump = true;
//				_y = oy;
//				if (isJumping) {
//					// is jumping?
//					gotoLabel("CloseLegs");
//					CDBubble._visible = false;
//					if (!fallBack) {
//						Key.addListener(this);
//					}
//					isJumping = false;
//				}
//			}
//			if (isCrouch) {
//				crouchCount++;
//			}
//			if (crouchCount == crouchFrame) {
//				isCrouch = false;
//				crouchCount = 0;
//				gotoLabel("CloseLegs");
//				CDBubble._visible = false;
//				Key.addListener(this);
//			}
//			if (isHurt) {
//				hurtCount++;
//			}
//			if (hurtCount == hurtFrame) {
//				isHurt = false;
//				hurtCount = 0;
//				gotoLabel("CloseLegs");
//				CDBubble._visible = false;
//				Key.addListener(this);
//			}
//			if (isDown) {
//				downCount++;
//			}
//			if (downCount == downFrame) {
//				isDown = false;
//				downCount = 0;
//				gotoLabel("CloseLegs");
//				CDBubble._visible = false;
//				Key.addListener(this);
//			}
//			if (CDBubble._visible) {
//				CDBubbleCount++;
//				if (CDBubbleCount == CDBubbleDuration) {
//					CDBubble._visible = false;
//					CDBubbleJump._visible = false;
//					CDBubbleCrouch._visible = false;
//					CDBubbleCount = 0;
//				}
//			}
//			*/
//			if (isJump) {
//				jumpCount++;
//			}
//			
//			if (jumpCount == jumpFrame) {
//				isJump = false;
//				jumpCount = 0;
//				gotoLabel("jumpguy_run");
//				Key.addListener(this);
//			}
//			
//			if (isHurt) {
//				hurtCount++;
//			}
//			
//			if (hurtCount == hurtFrame) {
//				isHurt = false;
//				hurtCount = 0;
//				gotoLabel("jumpguy_run");
//				Key.addListener(this);
//			}
//		}
	}
}