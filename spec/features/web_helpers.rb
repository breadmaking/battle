def sign_in_and_play
    visit('/')
    fill_in :player1, with: 'Francesco'
    fill_in :player2, with: 'Sarah'
    click_button 'Enter'
end