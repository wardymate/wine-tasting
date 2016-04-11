require 'rails_helper'

feature 'wines' do
  context 'no wines have been added' do
    scenario 'should display a prompt to add a wine' do
      visit '/wines'
      expect(page).to have_content 'No wines yet'
      expect(page).to have_link 'Add a wine'
    end
  end
end
