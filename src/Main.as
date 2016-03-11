package 
{
	/**
	 * ...
	 * @author Robbert
	 */
	
	import flash.events.Event;
	import flash.display.MovieClip;
	import flash.events.KeyboardEvent;
	import flash.events.TextEvent;
	import flash.text.TextField;
	
	public class Main extends MovieClip
	{
		
		private var bg:Background;
		private var ob:Obstacle;
		private var pl:Player;
		private var sc:Score;

		private var bird:MovieClip;
		
		private var scores:int;
		
		private var txt:TextField;
		
		private var gravity:Number = 4;
		private var jumpForce:Number = 0;
		
		private var jumping:Boolean = false;
		
		public function Main():void {
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDown);
			stage.addEventListener(Event.ENTER_FRAME, gameLoop);
			
			
			bg = new Background();
			addChild(bg);
			
			ob = new Obstacle();
			addChild(ob);
			ob.x = 800;
			ob.y = 450;
			
			pl = new Player();
			addChild(pl);
			pl.x = 80;
			pl.y = 430;
			
			txt = new TextField();
			addChild(txt);
			txt.x = 70;
			txt.y = 45;
			
		}
		private function init():void {
			scores = 0;
			}
			
		private function restart():void
		{
			ob.x = 800
			scores = 0;
			bg.x = 0;
			
		}
			
		private function gameLoop(e:Event):void {
			txt.text = "Score: " + scores.toString();
			
			bg.x -= 3;
			if (bg.x < -2050)
			{
				bg.x = 0;
			}
			
			ob.x -= 14;
			if (ob.x < -300) {
				ob.x = 800;
			}
			if (ob.x == 86) {
				scores = scores + 1;
			}
			if (jumping) {
				pl.y += jumpForce;
				jumpForce += gravity;
				
				if (pl.y >= stage.stageHeight - 170 ) {
					jumping = false;
					pl.y = stage.stageHeight - 170;
				}
			}
			if(ob.hitTestPoint(pl.x + pl.width/2,pl.y + pl.height/2,true)
			   || ob.hitTestPoint(pl.x + pl.width/2,pl.y - pl.height/2,true)
			   || ob.hitTestPoint(pl.x - pl.width/2,pl.y + pl.height/2,true)
			   || ob.hitTestPoint(pl.x - pl.width/2,pl.y - pl.height/2,true)){
				//trace("HET WERKT WOOP WOOP");
				restart();
			}
			
		}
		
		public function keyDown(e:KeyboardEvent):void {
			if (e.keyCode == 32) {
				if (jumping != true) {
					jumpForce = -50;
					jumping = true;
				}
				
			}
		}
	}
	
}