require('rspec')
require('numbers_in_words')

describe('numbers_in_words') do
  it('return word for digit from 0 to 9') do
    numbers_in_words(9).should(eq('nine'))
  end
end
