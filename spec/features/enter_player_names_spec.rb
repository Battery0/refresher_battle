feature 'enter 2 player names' do

  scenario 'via a form, submit the form and see the two player names displayed' do
    visit('/')
    fill_in('player1', with: 'Dave')
    fill_in('player2', with: 'Jess')
    click_button('Submit Player Names')
    expect(page).to have_content("Welcome Player 1: Dave and Player 2: Jess")
  end

end
