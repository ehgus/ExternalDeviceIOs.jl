module VariableIOs

import Base:
    IO,
    IOStream

export 
    IODeviceName,
    VariableIO,
    VariableIOStream,
    browse,
    activate,
    deactivate,
    isactivated,
    # before activation
    trigger_mode,
    trigger_mode!,
    timing_mode,
    timing_mode!,
    buffer_mode,
    buffer_mode!,
    # while activated
    trigger

include("definition.jl")
include("definition_arrayIO.jl")

end # module VariableIOs
