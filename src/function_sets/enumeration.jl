"Enumeration: function sets to enumerate accessible devices."
module Enumeration
export browse

# Search stage
"""
    browse(::ExternalDeviceName)

List available devices.
In that case, 'ExternalDeviceName' provides a hint of the desired device.
"""
function browse end

end # module Enumeration