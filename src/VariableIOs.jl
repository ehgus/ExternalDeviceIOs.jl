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
    isactivated

include("definition.jl")

end # module VariableIOs
