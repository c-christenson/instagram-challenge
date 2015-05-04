def sign_in
  visit('/')
  click_link('Sign up')
  fill_in('Email', with: 'test2@example.com')
  fill_in('Password', with: 'testtest')
  fill_in('Password confirmation', with: 'testtest')
  click_button('Sign up')
end


def add_post
  visit '/posts'
  click_link 'Post an Image'
  attach_file('Image', "#{Rails.root}/spec/support/uploads/cat.jpeg")
  click_button 'Create Post'
end 

