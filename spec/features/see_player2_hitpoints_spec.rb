feature 'As player 1' do

  scenario 'I want to see player 2\'s hitpoints' do
    visit('/')
    fill_in('player1', with: 'Dave')
    fill_in('player2', with: 'Jess')
    click_button('Submit Player Names')
    expect(page).to have_content('Player 2 has 50 HP')
  end

end
