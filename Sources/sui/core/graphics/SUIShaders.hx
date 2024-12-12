package sui.core.graphics;

import sui.core.graphics.shaders.RectDrawer;
import sui.core.graphics.shaders.ColorDrawer;
import sui.core.graphics.shaders.ImageDrawer;
import sui.core.graphics.shaders.ShadowCaster;

class SUIShaders {
	public static var RectDrawer:RectDrawer = new RectDrawer();
	public static var colorDrawer:ColorDrawer = new ColorDrawer();
	public static var imageDrawer:ImageDrawer = new ImageDrawer();
	public static var shadowCaster:ShadowCaster = new ShadowCaster();
}
