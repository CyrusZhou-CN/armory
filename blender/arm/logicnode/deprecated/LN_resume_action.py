from arm.logicnode.arm_nodes import *


@deprecated('Set Action Paused')
class ResumeActionNode(ArmLogicTreeNode):
    """Resumes the given action."""
    bl_idname = 'LNResumeActionNode'
    bl_label = 'Resume Action'
    bl_description = "Please use the \"Set Action Paused\" node instead"
    arm_category = 'Animation'
    arm_version = 2

    def init(self, context):
        super(ResumeActionNode, self).init(context)
        self.add_input('ArmNodeSocketAction', 'In')
        self.add_input('ArmNodeSocketObject', 'Object')
        self.add_output('ArmNodeSocketAction', 'Out')
