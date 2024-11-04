defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    8 * hourly_rate / 1
  end

  def apply_discount(before_discount, discount) do
    before_discount * ((100 - discount) / 100)
  end

  def monthly_rate(hourly_rate, discount) do
    month_rate_before_discount = daily_rate(hourly_rate) * 22
    apply_discount(month_rate_before_discount, discount)
    |> Float.ceil()
    |> trunc()
  end
end
