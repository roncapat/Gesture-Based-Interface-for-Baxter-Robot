# -*- coding: latin-1 -*-
## @package MacroMenuState
## This package describes the general structure
#  of the macro menu state
from MenuState import MenuState


##  MacroMenuState
#   inerithed form BlockingState
class MacroMenuState(MenuState):
    ## the constructor
    #  @param trigger_event istance of the class FsmEvent
    def __init__(self, trigger_event):

        outcomes = ['back', 'start']

        MenuState.__init__(self,
                           outcomes,
                           trigger_event,
                           'Macro menu',
                           fixed_options=['back', 'start'],
                           input_keys=['macro_idx', 'macro_filename'],
                           output_keys=['macros'])

        self.macro_slots = ["Empty", "Empty", "Empty", "Empty"]

    ## method update_variable_options
    #  @param userdata 
    #  
    #  override of MenuState.update_variable_options
    #  update the variable options of the menu

    def update_variable_options(self, userdata):
        try:
            self.macro_slots[userdata.macro_idx] = userdata.macro_filename
        except KeyError:
            pass
        userdata.macros = self.macro_slots
        return self.macro_slots