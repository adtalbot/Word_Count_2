class String
  define_method(:word_count) do |entered_word|

    entered_word = entered_word.downcase
    entered_word = entered_word.gsub(/[!?@#$%^&*]/,"")
    binding.pry
    sentence = self.gsub(/[!?@#$%^&*]/,"")
    frequency = 0

    sentence = sentence.downcase.split()

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
