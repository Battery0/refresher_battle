feature 'As player 1' do

  scenario 'I want to see player 2\'s hitpoints' do
    sign_in_and_play
    expect(page).to have_content('Jess has 50 HP')
  end

end
