feature 'Enter names' do
    scenario 'submitting names' do
        visit('/')
        fill_in :player_1_name, with: 'Kristyna'
        fill_in :player_2_name, with: 'Alex'
        click_button 'Submit'
        expect(page).to have_content 'Kristyna vs. Alex'
    end 
end 