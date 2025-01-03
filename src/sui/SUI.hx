package sui;

import kha.Canvas;
// sui
import sui.elements.Element;
import sui.elements.DrawableElement;

using score.utils.ArrayExt;

@:structInit
class SUI extends DrawableElement {
	public inline function new() {
		super();
	}

	public inline function add(element:Element) {
		if (element.batchType != null) {
			var lastEl = cast children.last();
			if (Type.getClass(lastEl) == element.batchType)
				lastEl.addChild(element);
			else {
				var batch = Type.createInstance(element.batchType, null);
				batch.addChild(element);
				addChild(batch);
			}
		} else
			addChild(element);

		for (c in element.children)
			add(c);
	}

	public inline function update() {};

	override inline function render(target:Canvas, ?clear:Bool = true) {
		for (c in children)
			if (c is DrawableElement) {
				var drawable:DrawableElement = cast c;
				drawable.render(target);
			}
	}
}
