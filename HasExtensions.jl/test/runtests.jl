using HasExtensions
using Test

if !isdefined(Base, :get_extension)
    @test HasExtensions.offsetarrays_loaded
else
    @test !HasExtensions.offsetarrays_loaded
end

using OffsetArrays

@test HasExtensions.offsetarrays_loaded
