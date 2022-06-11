defmodule CountDivisors do
    use ExUnit.Case
    test "Sample tests" do
        Enum.each([
            {1, 1},
            {10, 4},
            {11, 2},
            {25, 3},
            {54, 8}
        ], fn {n, expected} ->
            actual = CountDivisorsKata.divisors(n)
            assert actual == expected
        end)
    end
end

