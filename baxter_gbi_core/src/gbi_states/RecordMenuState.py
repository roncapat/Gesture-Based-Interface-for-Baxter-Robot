# -*- coding: latin-1 -*-
## @package RecordMenuState
## This package describes the structure of the record menu state 

from FileMenuState import FileMenuState
import datetime

## RecordMenuState
# inherited form MenuState
class RecordMenuState(FileMenuState):
    ## constructor
    #  @param trigger_event instance of FsmEvent class
    def __init__(self, trigger_event):
        outcomes = ['back',
                    'remove']

        FileMenuState.__init__(self,
                               outcomes=outcomes,
                               trigger_event=trigger_event,
                               page_title='Recording menu',
                               fixed_options=['back', 'remove', 'new'])

    ## method on_fixed_selection
    # override of MenuState.on_fixed_selection
    #  
    # @param userdata
    # @param index
    # @param item
    def on_fixed_selection(self, index, item, userdata):
        if item == 'new':
            userdata.selected_idx = -1
            userdata.selected_item = datetime.datetime.now().replace(microsecond=0).isoformat().replace("T", " ")
            return 'selection'
        else:
            return FileMenuState.on_fixed_selection(self, index, item, userdata)
