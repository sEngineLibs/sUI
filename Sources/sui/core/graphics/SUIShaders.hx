package score.graphics;

import score.graphics.shaders.RectDrawer;
import score.graphics.shaders.ColorDrawer;
import score.graphics.shaders.ImageDrawer;
import score.graphics.shaders.ShadowCaster;

class SUIShaders {
	public static var RectDrawer:RectDrawer = new RectDrawer();
	public static var colorDrawer:ColorDrawer = new ColorDrawer();
	public static var imageDrawer:ImageDrawer = new ImageDrawer();
	public static var shadowCaster:ShadowCaster = new ShadowCaster();
}
