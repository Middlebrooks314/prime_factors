require 'prime_factors'
class PrimeFactorsRunner
    def initialize(console)
        @console = console
    end

    def generate_primes
        # use console to retrieve the input
        console_input = @console.get_input

        # convert that input from string to int
        # return if !console_input 
        parsed_input = console_input.to_i
        # take converted input and
        #        pass it to PrimeFactors.generate
        PrimeFactors.generate(parsed_input)
        
    end

    def run
        @console.print_message('Please enter a number: ')
        return_prime_factors
    end

    def return_prime_factors
        numbers = generate_primes 
        if !numbers.empty?
            @console.print_message(numbers)
        end
    end
end