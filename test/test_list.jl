@testset "LinkedList" begin

    @testset "l1" begin
        l = list([1,2,3]...)
        @test length(l) == 3
        @test head(l) == 1
        @test head(tail(l)) == 2
    end

end
