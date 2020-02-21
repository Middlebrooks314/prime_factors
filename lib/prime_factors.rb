class PrimeFactors

    def self.generate(number)
        factors = []

        (2..number).each do |factor|
            while number % factor == 0
                factors.push(factor)
                number = number / factor
            end
        end
        factors
    end
end