require 'prime_factors_runner'
class FakeConsole
    def stub_get_input(input)
        @input = input
    end

    def get_input
        @input
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
end
