package  
{
	/**
	 * ...
	 * @author Robbert
	 */
	import flash.display.Sprite;
    import flash.text.TextField; 
	
    public class Score extends Sprite
    { 
		private var txt:TextField;
		private var score:int = 0;
		
		
        public function scoreText():void
        { 
			txt = new TextField();
			addChild(txt);
			txt.text = "Hi";
		}
    } 
}