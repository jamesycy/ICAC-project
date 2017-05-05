package
{
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.geom.Point;
	
	public class objMove extends MovieClip
	{
		public function objMove()
		{
			init();
		}
		
		private function init():void
		{
			stage.addEventListener(MouseEvent.MOUSE_MOVE, ObjOnMouseMove);
		}
		
		//var _foo:TextField;
		function ObjOnMouseMove(evt:MouseEvent){
			//trace(evt.target.mouseY);
			//var target:* = evt.target;
//			//_foo.text = target.mouseY;
//			//_foo.text = evt.localY.toString();
//			
//			var location:Point = new Point(target.mouseX, target.mouseY);
//			location = target.localToGlobal(location);
//			//_foo.text = target.mouseY + ": "+ location.y;

			trace(evt.target.mouseX);
			trace(evt.target.mouseY);
		}
	}
}/**/