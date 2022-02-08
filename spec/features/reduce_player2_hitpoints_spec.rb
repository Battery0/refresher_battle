feature 'As Player 1' do

  scenario 'I want my attack to reduce Player 2\'s hitpoints by 10' do
    sign_in_and_play
    click_button('Dave attacks Jess')
    expect(page).to have_content('Jess has 40 HP')
  end

end
