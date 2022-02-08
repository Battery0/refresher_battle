feature 'enter 2 player names' do

  scenario 'via a form, submit the form and see the two player names displayed' do
    sign_in_and_play
    expect(page).to have_content("Welcome Player 1: Dave and Player 2: Jess")
  end

end
