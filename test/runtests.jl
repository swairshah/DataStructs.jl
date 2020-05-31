using DataStructs
using Test

tests = [
         "list",
        ]

if length(ARGS) > 0
    tests = ARGS
end
@testset "DataStructs.jl" begin
    # Write your tests here.
for t in tests
    fp = joinpath(dirname(@__FILE__), "test_$t.jl")
    println("$fp ...")
    include(fp)
end

end
