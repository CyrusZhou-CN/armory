package armory.logicnode;

import armory.object.Object;
import armory.system.Event;

class SendGlobalEventNode extends LogicNode {

	var entries:Array<TEvent> = null;

	public function new(tree:LogicTree) {
		super(tree);
	}

	override function run() {
		var name:String = inputs[1].get();
		
		if (entries == null) entries = armory.system.Event.get(name);
		for (e in entries) e.onEvent();

		super.run();
	}
}
