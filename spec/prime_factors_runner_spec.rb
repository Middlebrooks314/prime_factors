require 'prime_factors_runner'
class FakeConsole
    attr_reader :last_string_printed

    def stub_get_input(input)
        @input = input
    end

    def get_input
        @input
    end

    def print_message(message)
        @last_string_printed = message
    end
end
describe PrimeFactorsRunner do
    it 'returns a list of primes for a given input' do
        console = FakeConsole.new
        console.stub_get_input("8")
        runner = PrimeFactorsRunner.new(console)

        primes = runner.generate_primes

        expect(primes).to eq([2, 2, 2])
    end


    #currently failing because it runs the whole method without any input so it returns an empty array
    describe 'run' do
        it 'prompts the user to enter a number' do
            console = FakeConsole.new
            runner = PrimeFactorsRunner.new(console)

            runner.run

            expect(console.last_string_printed).to eq("Please enter a number: ")
        end
    end

    describe 'return_prime_factors' do
        it 'prints out to the user the prime factors' do
            console = FakeConsole.new
            console.stub_get_input("8")
            runner = PrimeFactorsRunner.new(console)

            runner.return_prime_factors

            expect(console.print_message("Primes: #{console.last_string_printed}")).to eq("Primes: [2, 2, 2]")
        end
    end
end


