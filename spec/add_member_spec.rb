require 'rails_helper'

RSpec.describe 'Add A New Member', type: :system do
    scenario 'add a member to database' do
        visit users_path
        click_link('Add New Member')
        fill_in(:first_name, :with => 'Texas')
        fill_in(:last_name, :with => 'Aggie')
        fill_in(:position_id, :with => 'member')
        fill_in(:member_points, :with => 100)
        fill_in(:username, :with => 'txag')
        fill_in(:email, :with => 'txag@tamu.edu')
        click_button('Add Member')
        expect(page).to have_content('New member added successfully!')
    end
end