feature 'Attacking player 2' do
    scenario 'player 1 attacks and gets a confiramtion' do
        sign_in_and_play
        click_button 'Attack'
        expect(page).to have_content 'Kristyna attacked Alex'

    end 

end 