feature 'View hit points' do
    scenario 'see Player 2 points' do
      sign_in_and_play
      expect(page).to have_content 'Alex: 60 HP'
    end
    scenario 'see Player 1 points' do
      sign_in_and_play
      expect(page).to have_content 'Kristyna: 60 HP'
    end

end
