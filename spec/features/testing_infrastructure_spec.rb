require 'capybara/rspec'

describe "Testing Infrastructure", type: :feature do
    it "returns text" do
        visit '/'
        expect(page).to have_content 'Testing Infrastructure Working!'
    end
end