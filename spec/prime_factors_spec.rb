require "prime_factors"

describe PrimeFactors do

    describe "Generating prime factors" do
        it "has no factors for 1" do
            expect(PrimeFactors.generate(1)).to eq([])
        end

        it "returns 2 when 2 is entered" do
            expect(PrimeFactors.generate(2)).to eq([2])
        end

        it "returns 3 when 3 is entered" do
            expect(PrimeFactors.generate(3)).to eq([3])
        end
        
        it "return multiple factors for 4" do
            expect(PrimeFactors.generate(4)).to eq([2, 2])
        end

        it "return 5 for 5" do
            expect(PrimeFactors.generate(5)).to eq([5])
        end

        it "return multiple factors for 6" do
            expect(PrimeFactors.generate(6)).to eq([2, 3])
        end
        
        it "return multiple factors for 7" do
            expect(PrimeFactors.generate(7)).to eq([7])
        end

        
    end

end