require_relative "./lib/prime_factors"

print "Please enter a number: "
input = gets.to_i
factors = PrimeFactors.generate(input)
puts "Primes: #{factors}"