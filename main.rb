$: << File.expand_path(File.join(File.dirname(__FILE__), "lib"))


require "prime_factors_runner"
require "console"

# print "Please enter a number: "
runner = PrimeFactorsRunner.new(Console.new)
runner.run
# factors = runner.generate_primes
# puts "Primes: #{factors}"