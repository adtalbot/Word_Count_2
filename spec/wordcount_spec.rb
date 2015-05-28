require('rspec')
require('pry')
require('wordcount')


describe('String#word_count') do
 it('returns a number if a word appears in a string of words') do
   expect(('I need coffee').word_count('coffee')).to(eq(1))
  end

 end
