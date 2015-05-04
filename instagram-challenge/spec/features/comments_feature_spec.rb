require 'rails_helper'
require_relative '../helpers/helper_methods.rb'

feature 'commenting' do

  scenario 'allows users to leave a comment on a post' do
    sign_in
    add_post
    click_link 'Comment'
    fill_in "Comment", with: "Love it!"
    click_button 'New Comment'
    expect(current_path).to eq '/posts'
    expect(page).to have_content('Love it!')
  end

end