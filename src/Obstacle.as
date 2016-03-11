package  

	/**
	 * ...
	 * @author Robbert
	 */
{
	import flash.display.Bitmap;
	import flash.display.MovieClip;
	
		
		public class Obstacle extends MovieClip
		{
			[Embed(source="../obstacle.png")]
			
			private var ObstacleImage:Class;
			private var ObImage:Bitmap;
			
			public function Obstacle()
			{
				ObImage = new ObstacleImage();
				addChild(ObImage);
				
				scaleX = 0.3;
				scaleY = 0.3;
			}
		
	}

}