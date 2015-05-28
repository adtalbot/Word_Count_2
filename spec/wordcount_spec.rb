require('rspec')
require('pry')
require('wordcount')


describe('String#word_count') do
 it('returns a number if a word appears in a string of words') do
   expect(('I need coffee').word_count('coffee')).to(eq(1))
  end


  it('ignores erroneous punctuation in multi-word string') do
    expect(('Aquarium? balls!!').word_count('aquarium')).to(eq(1))
 end

 it('it ignores erroneous punctuation the single word') do
   expect(('chicken head').word_count('head$')).to(eq(1))
 end
end
