# -*- coding: latin-1 -*-
## @package ActionState
#  This package defines the essential structure for all the action states

from ExpiringState import ExpiringState
from baxter_gbi_pbr_srvs.srv import *

## ActionState
# inherited from ExpiringStates
class ActionState(ExpiringState):
    ## constructor
    # @param outcomes possible outcomes of the state
    # @param trigger_event object of the class FsmEvent
    # @param action executable action
    # @param output_keys set of the data in output
    # @param input_keys set of the data in input
    def __init__(self, outcomes, trigger_event, status, output_keys=[], input_keys=[]):
        ExpiringState.__init__(self,
                               outcomes = ['done'] + outcomes,
                               trigger_event=trigger_event,
                               output_keys=output_keys,
                               input_keys=input_keys)
        ## attribute of type action
        self.type = 'action'
        self.status = status

    ## method action_5
    # @param userdata
    #
    # override of BlockingState.action_5
    # where action_5 is assumed to be "done"
    def action_5(self, userdata):
        return 'done'

    ## method done
    # @param userdata
    #
    # action terminated
    def done(self, userdata):
        return 'done'

    ## method publish_state
    #
    # override of BlockingState.publish_state
    def publish_state(self):
        self.msg.context_type = self.type
        self.msg.pbr_action = self.status
        self.msg.pbr_msg = self.set_status()
        #rospy.loginfo(self.msg)
        self.pub.publish(self.msg)

    ## method set_status
    #
    # returns an empty string
    def set_status(self):
        return ""
