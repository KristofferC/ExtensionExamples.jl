module GlueOffsetArrays

using HasGluePkgs, OffsetArrays

function foo(x::OffsetArray) # Type piracy?? It's ait, I'm just glue.. sniff sniff
    @info "HasGluePkgs.jl: A custom logging method for OffsetArray" x
end

function __init__()
    HasGluePkgs.offsetarrays_loaded = true
end

end
