require 'rails_helper'
require 'date'

feature 'events' do
  context 'no events have been added' do
    scenario 'should display a prompt to add an event' do
      visit '/events'
      expect(page).to have_content 'No events yet'
      expect(page).to have_link 'Add an event'
    end
  end

  context 'Events have been added' do
    before do
      Event.create(date: Date.new(2016, 11, 04), description: 'Some text' )
    end

    scenario 'display Events' do
      visit '/events'
      expect(page).to have_content("Friday  4 November 2016")
      expect(page).not_to have_content('No events yet')
    end
  end

  context 'creating events' do
    scenario 'prompts user to fill out a form and create an event' do
      visit '/events'
      click_link 'Add an event'
      fill_in 'Description', with: "Chris's Wine night"
      find('#event_wines_number').find("option[value='5']").select_option
      click_button 'Create Event'
      expect(page).to have_content("Chris's Wine night")
      expect(page).to have_content("5")
      expect(page).to have_content(Date.today.strftime("%A %e %B %Y"))
    end
  end
end
