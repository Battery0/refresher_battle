feature 'Testing infrastructure setup' do

  scenario "correctly finds 'Testing infrastructure working!' on the root page" do
    visit('/')
    expect(page).to have_content('Testing infrastructure working!')
  end

end