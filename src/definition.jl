"""
    IODeviceName

Name of I/O device.
"""
abstract type IODeviceName end

"""
    browse(IODeviceName) -> IODeviceName

List available IO devices.
"""
function browse end

"""
    VariableIO

Type of IO which its results of input/output operations are controllable.
"""
abstract type VariableIO <: IO end

"""
    VariableIOStream

IOStream for VariableIO.
"""
abstract type VariableIOStream <: VariableIO end

"""
    activate(stream::VariableIOStream)

Activate an stream according to the predefined variables.
"""
function activate end

"""
    deactivate(stream::VariableIOStream)

Deactivate an stream. The stream is live, but not usable.
"""
function deactivate end

"""
    isactivated(stream)

Determine whether an stream is not yet activated.

"""
function isactivated end

# list of general fucntions before activation
# Those functions might not implemented
# You can make your own functions

# timing - at triggering time
function trigger_mode end
function trigger_mode! end
function delay end
function delay! end
# timting - at action time
function framerate end
function framerate! end
function exposure end
function exposure! end
# intermediate data storage - buffer
function buffer_mode end
function buffer_mode! end
function buffer_size end
function buffer_size! end

# list of general fucntions while activation
# Those functions might not implemented
# You can make your own functions

# timing - at triggering time
function trigger end