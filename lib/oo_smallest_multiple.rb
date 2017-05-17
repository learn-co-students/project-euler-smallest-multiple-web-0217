# Implement your object-oriented solution here!
require 'pry'


class SmallestMultiple
  def initialize(value)
    @value = value
    @greatest_common_factors = []
  end

  def add_or_change(val)
    change = false
    @greatest_common_factors.each do |prime|
      if(prime[0] == val[0] && prime[1] < val[1])
        prime[1] = val[1]
        change = true
      elsif(prime[0] == val[0])
        change = true
      end
    end
    if(!change)
      @greatest_common_factors.push(val)
    end
  end

  def least_common_multiple(collection)
    lcm = 1
    collection.each {|prime| lcm = lcm * (prime[0]**prime[1])}
    lcm
  end

  def lcm
    (1..@value).each do |divisor|
      Prime.prime_division(divisor).each do |prime|
        if(!@greatest_common_factors.include?(prime))
          add_or_change(prime)
        end
      end
    end
    least_common_multiple(@greatest_common_factors)
  end

end
