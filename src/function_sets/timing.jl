"Timing: function sets to control framerate, delay, and exposrue time."
module Timing
export timing_mode, timing_mode!

# Maintanence stage
"""
    timing_mode(io)

Show current timing mode.
"""
function timing_mode end

"""
    timing_mode!(io, args...;kwargs...)

Set timing mode.
You will control the how many times it will works, whether the operation is infinite, or there is a delay from the first event.
Available timing_modes would be
    timing_mode!(io, delay, exposure)
    timing_mode!(io, fps, exposure)
    timing_mode!(io, delay, fps, exposure)
"""
function timing_mode! end

end