feature 'So player 1 can loose' do

  scenario 'Player 2\'s attack should reduce player 1\'s HP' do
    sign_in_and_play
    click_button('Jess attacks Dave')
    expect(page).not_to have_content('Davez has 50 HP')
    expect(page).to have_content('Dave has 40 HP')
  end

end
