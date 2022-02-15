feature 'So Player 1 can loose a game of battle' do

  scenario 'Player 2 should be able to attack player 1 and get confirmation' do
    sign_in_and_play
    click_button('Jess attacks Dave')
    expect(page).to have_content('Jess successfully attacked Dave')
  end

end
