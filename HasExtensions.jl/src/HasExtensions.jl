module HasExtensions

using Example

function foo(x::AbstractArray)
    @info "HasExtensions.jl: A custom logging method for AbstractArray" x
end

offsetarrays_loaded = false

if !isdefined(Base, :get_extension)
    include("../ext/OffsetArraysExt.jl")
end

end # module
