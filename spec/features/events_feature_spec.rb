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
      Event.create(date: Date.new(2016, 11, 04) )
    end

    scenario 'display Events' do
      visit '/events'
      expect(page).to have_content("Friday  4 November 2016")
      expect(page).not_to have_content('No events yet')
    end
  end
end
