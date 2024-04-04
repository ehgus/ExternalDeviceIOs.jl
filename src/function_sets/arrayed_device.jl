"ArrayedDevice: function sets to control arrayed device such as camera and microdisplay."
module ArrayedDevice
import Base: size
export region_of_interest, region_of_interest!

"""
    size(io, [dim])

Return a tuple containing dimensions of device.
"""
function size end

"""
    region_of_interest(io)

Return a tuple region of interest of device.
"""
function region_of_interest(io)
    dev_size = size(io)
    ntuple(i->(1,dev_size(i)), length(dev_size))
end

"""
    region_of_interest!(io)

Set region of interest.
"""
function region_of_interest! end

end