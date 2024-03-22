module VariableArrayIOs

using ..VariableIOs
export
    VariableArrayIOStream,
    roi,
    roi!

abstract type VariableArrayIOStream <: VariableIOStream end

# list of general fucntions before activation
# Those functions might not implemented
# You can make your own functions
function roi end
function roi! end

end # module VariableArrayIOs