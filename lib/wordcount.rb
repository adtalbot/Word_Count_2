class String
  define_method(:word_count) do |entered_word|
      frequency = 0
      sentence = self.split()
      if sentence.include?(entered_word)
        sentence.each() do |word|
        if word.eql?(entered_word)
          frequency = frequency + 1
        end
      end
    frequency
    end
  end
end
