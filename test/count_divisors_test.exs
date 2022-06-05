defmodule CountDivisors do
    use ExUnit.Case
#    test "Sample tests" do
#        Enum.each([
#            {1, 1},
#            {10, 4},
#            {11, 2},
#            {25, 3},
#            {54, 8}
#        ], fn {n, expected} ->
#            actual = Kata.divisors(n)
#            assert actual == expected
#        end)
#    end
    test "When it is a prime number" do
        actual = CountDivisorsKata.divisors(13)
        assert actual == {13, 2}
    end
    test "When it has 4 divisors" do
        actual = CountDivisorsKata.divisors(15)
        assert actual == {15, 4}
    end
end

