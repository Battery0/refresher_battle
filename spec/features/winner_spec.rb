feature 'if a players HP reaches 0 announce a winner' do

  scenario 'player 1 beats player 2' do
    sign_in_and_play
    5.times do
      click_button('Dave attacks Jess')
    end
    expect(page).to have_content('Dave is the Winner!!!')
  end

  scenario 'player 2 beats player 1' do
    sign_in_and_play
    5.times do
      click_button('Jess attacks Dave')
    end
    expect(page).to have_content('Jess is the Winner!!!')
  end

end
