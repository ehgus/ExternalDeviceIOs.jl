module VariableArrayIOs

using ..VariableIOs
export
    VariableArrayIOStream,
    region_of_interest,
    region_of_interest!

abstract type VariableArrayIOStream <: VariableIOStream end

# list of general fucntions before activation
# Those functions might not implemented
# You can make your own functions
function region_of_interest end
function region_of_interest! end

end # module VariableArrayIOs