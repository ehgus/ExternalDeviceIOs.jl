module ExternalDeviceIOs

import Base:
    IO,
    IOStream

export 
    ExternalDeviceName,
    ExternalDeviceIOStream,
    activate,
    deactivate,
    isactivated

include("definition.jl")
include("function_sets/enumeration.jl")
include("function_sets/timing.jl")
include("function_sets/trigger.jl")
include("function_sets/arrayed_device.jl")
include("function_sets/buffer.jl")

end # module ExternalDeviceIOs
