feature 'As player 1' do

  scenario 'I want to attack Player 2 and get confirmation' do
    sign_in_and_play
    click_button('Dave attacks Jess')
    expect(page).to have_content('Dave successfully attacked Jess')
  end

end
