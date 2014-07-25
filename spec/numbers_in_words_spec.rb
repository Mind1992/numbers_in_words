require('rspec')
require('numbers_in_words')

describe('numbers_in_words') do
  it('return a word for digit from 0 to 9') do
    numbers_in_words('9').should(eq('nine'))
  end

  it('return a word for digits from 10 to 19') do
    numbers_in_words('13').should(eq('thirteen'))
  end

  it('return the multiples of ten under one hundred') do
    numbers_in_words('70').should(eq('seventy'))
  end

  it('handles a combination of a tens and single number') do
    numbers_in_words('57').should(eq('fifty seven'))
  end

  it('handles numbers up to 999') do
    numbers_in_words('843').should(eq('eight hundred forty three'))
  end
end
