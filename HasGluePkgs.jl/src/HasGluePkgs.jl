module HasGluePkgs

using Example

function foo(x::AbstractArray)
    @info "HasGluePkgs.jl: A custom logging method for AbstractArray" x
end

offsetarrays_loaded = false

end # module
