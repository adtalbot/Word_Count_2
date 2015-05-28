
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application




describe('wordcounter path', {:type => :feature}) do

  it('returns frequency of entered_word') do
    visit('/')
    fill_in("entered_word", :with => "aquarium")
    fill_in("sentence", :with => "Aquaruim balls$!")
    click_button('submit')
    expect(page).to have_content(1)
  end
end
