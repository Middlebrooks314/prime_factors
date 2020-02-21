require 'prime_factors'
class PrimeFactorsRunner
    def initialize(console)
        @console = console
    end

    def generate_primes
        # use console to retrieve the input
        console_input = @console.get_input

        # convert that input from string to int

        parsed_input = console_input.to_i
        # take converted input and
        #        pass it to PrimeFactors.generate
        PrimeFactors.generate(parsed_input)
    end
end