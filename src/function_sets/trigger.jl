"Trigger: function sets to control triggering"
module Trigger
export trigger_mode, trigger_mode!, trigger

# Maintanence stage
"""
    trigger_mode(io)::String

Show current trigger mode.

example output)
 - "automatic": device works as it activated.
 - "software trigger": device works when 'trigger' function is called.
 - "hardware trigger": device works depending on the hardward trigger.
"""
function trigger_mode end

"""
    trigger_mode!(io, mode)

change trigger mode of the device to "mode".
"""
function trigger_mode! end

# Activation stage
"""
    trigger(io)

Derive software trigger to the activated device.
"""
function trigger end

end