require 'rails_helper'

RSpec.describe 'Points Breakdown', type: :system do
  describe 'Navigate to points breakdown' do
    it 'shows how member acquired their points' do
      visit users_path
      first(:link, 'Points Breakdown').click
      expect(page).to have_content('Total Points: ')
    end
  end

  describe 'table consisting of breakdown' do
    it 'shows meetings, date, and points' do
      visit users_path
      first(:link, 'Points Breakdown').click
      expect(page).to have_content('Meetings')
      expect(page).to have_content('Date')
      expect(page).to have_content('Points')
    end
  end
end