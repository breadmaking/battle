require 'capybara/rspec'

# describe "Testing Infrastructure", type: :feature do
#     it "returns text" do
#         visit '/'
#         expect(page).to have_content 'Testing Infrastructure Working!'
#     end
# end

describe "Enter player names", type: :feature do
    it 'enters players names' do
        visit '/'
        fill_in 'player1', with: 'Sarah'
        fill_in 'player2', with: 'Tim'
        click_button 'Enter'
        expect(page).to have_content 'Player 1: Sarah vs Player 2: Tim'
    end
end
