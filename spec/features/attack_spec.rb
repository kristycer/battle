feature 'Attacking player 2' do
    scenario 'player 1 attacks and gets a confirmation' do
        sign_in_and_play
        click_button 'Attack'
        expect(page).to have_content 'Kristyna attacked Alex'

    end

    scenario 'player 2 attacks and gets a confirmation' do
        sign_in_and_play
        click_button 'Attack'
        click_button 'OK'
        click_button 'Attack'
        expect(page).to have_content 'Alex attacked Kristyna'

    end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Alex: 60 HP'
    expect(page).to have_content 'Alex: 50 HP'
  end
end
