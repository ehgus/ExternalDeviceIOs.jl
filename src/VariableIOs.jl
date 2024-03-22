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
    trigger_mode,
    trigger_mode!,
    delay,
    delay!,
    framerate,
    framerate!,
    exposure,
    exposure!,
    buffer_mode,
    buffer_mode!,
    buffer_size,
    buffer_size!

include("definition.jl")
include("definition_arrayIO.jl")

end # module VariableIOs
