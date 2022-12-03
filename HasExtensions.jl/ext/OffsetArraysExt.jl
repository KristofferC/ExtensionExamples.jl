module OffsetArraysExt

using HasExtensions, Example, OffsetArrays

 
function HasExtensions.foo(x::OffsetArray)
    @info "HasExtensions.jl: A custom logging method for OffsetArray" x
end

function __init__()
    ccall(:jl_generating_output, Cint, ()) == 1 && return nothing
    @eval HasExtensions offsetarrays_loaded = true
end

end
