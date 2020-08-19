feature 'View hit points' do
    scenario 'see Player 2 points' do
      sign_in_and_play
      expect(page).to have_content 'Alex: 60HP'
    end 
end 