feature 'switch turns' do

  scenario 'at the start of the game' do
    sign_in_and_play
    expect(page).to have_content("Dave's turn...")
  end

  scenario 'after player 1 has attacked' do
    sign_in_and_play
    click_button('Dave attacks Jess')
    expect(page).not_to have_content("Dave's turn...")
    expect(page).to have_content("Jess's turn...")
  end

end