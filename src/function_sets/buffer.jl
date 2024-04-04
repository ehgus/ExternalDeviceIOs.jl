"""
Trigger: function sets to control buffer
buffer is an intermediate data storage place before explicitly "read" data.
"""
module Buffer
export buffer_mode, buffer_mode!

# Maintanence stage
"""
    buffer_mode(io)

Show the current state of buffer
"""
function buffer_mode end

"""
    buffer_mode(io, args...,kwargs...)

Set the buffer
"""
function buffer_mode! end
end