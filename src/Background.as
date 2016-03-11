package  

	/**
	 * ...
	 * @author Robbert
	 */
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	
		
		public class Background extends Sprite
		{
			[Embed(source="../background.jpg")]
			
			public var backgroundImage:Class;
			private var bgImage:Bitmap;
			
			public function Background()
			{
				super();
				bgImage = new backgroundImage();
				addChild(bgImage);
				
				scaleX = 0.5;
				scaleY = 0.5;
				
				bgImage.x = -200;
				bgImage.y = 0;
			}
		
	}

}