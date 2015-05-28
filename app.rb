require('sinatra')
require('sinatra/reloader')
require('./lib/wordcount')


get('/') do
  erb(:index)
end


get('/results') do
@entered_word = params.fetch('entered_word')
@sentence = params.fetch('sentence')
@frequency = @sentence.word_count(@entered_word)
  erb(:results)
end
