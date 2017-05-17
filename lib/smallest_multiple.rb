# Implement your procedural solution here!
require 'prime'

def add_or_change(collection, value)
  change = false
  collection.each do |prime|
    if(prime[0] == value[0] && prime[1] < value[1])
      prime[1] = value[1]
      change = true
    elsif(prime[0] == value[0])
      change = true
    end
  end
  if(!change)
    collection.push(value)
  end
  collection
end

def least_common_multiple(collection)
  lcm = 1
  collection.each do |primes|
    lcm = lcm * (primes[0]**primes[1])
  end
  lcm
end

def smallest_multiple(n)
  greatest_common_factors = []
  (1..n).each do |number|
    prime = Prime.prime_division(number)
    prime.each do |divisor|
      if(!greatest_common_factors.include?(divisor))
        greatest_common_factors = add_or_change(greatest_common_factors, divisor)
      end
    end
  end
  least_common_multiple(greatest_common_factors)
end
