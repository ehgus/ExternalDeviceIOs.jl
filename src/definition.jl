"""
    IODeviceName

Name of I/O device.
"""
struct IODeviceName end

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