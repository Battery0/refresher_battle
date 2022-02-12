feature 'As player 1' do

  scenario 'I want to see how much HP I\'ve lost' do
    sign_in_and_play
    expect(page).to have_content('Dave has 50 HP')
  end

end
