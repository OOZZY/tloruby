module Tlo
module Math
def self.factorial(n)
  product = 1
  2.upto(n) do |i|
    product *= i
  end
  return product
end
end
end
