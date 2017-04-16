package armory.logicnode;

class ArraySetNode extends LogicNode {

	public function new(tree:LogicTree) {
		super(tree);
	}

	override function run() {
		var ar:Array<Dynamic> = inputs[1].get();
		var i:Int = inputs[2].get();
		var value:Dynamic = inputs[3].get();

		if (i < 0) ar[ar.length + i] = value;
		else ar[i] = value;

		super.run();
	}
}
