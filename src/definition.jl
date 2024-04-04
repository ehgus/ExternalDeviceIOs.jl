"""
    ExternalDeviceName

Name of I/O device.
"""
abstract type ExternalDeviceName end

"""
    ExternalDeviceIOStream

IOStream for ExternalDeviceIO.
"""
abstract type ExternalDeviceIOStream <: IO end

"""
    activate(stream::ExternalDeviceIOStream)

Activate an stream according to the predefined variables.
"""
function activate end

"""
    deactivate(stream::ExternalDeviceIOStream)

Deactivate an stream. The stream is live, but not usable.
"""
function deactivate end

"""
    isactivated(stream)

Determine whether an stream is not yet activated.

"""
function isactivated end

"""
    activate(f::Function, args...; kwargs...)

Apply the function `f` to the result of `activate(args...; kwargs...)` and deactivate the resulting file
descriptor upon completion.
"""
function activate(f::Function, io, args...; kwargs...)
    activate(io, args...; kwargs...)
    try
        f(io)
    finally
        deactivate(io)
    end
end
