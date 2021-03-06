# Features:
# -------
#
# ```
# STRAIGHT UP
#
# As a Maker
# So that I can let people know what I am doing
# I want to post a message (peep) to chitter
feature 'posting a peep' do
  scenario 'a user visits the page and composes a peep' do
    visit '/'
    click_button 'Peep'
    fill_in 'text', with: 'Hello, World!'
    click_button 'Peep'
    expect(page).to have_content 'Hello, World!'
  end
end
# As a maker
# So that I can see what others are saying
# I want to see all peeps in reverse chronological order
feature 'viewing all peeps' do
  scenario 'a user visits the homepage and all peeps are displayed' do
    visit '/'
    click_button 'Peep'
    fill_in 'text', with: 'Hello, World!'
    click_button 'Peep'
    visit '/'
    click_button 'Peep'
    fill_in 'text', with: 'Hello, World again!'
    click_button 'Peep'
    visit '/'
    click_button 'Peep'
    fill_in 'text', with: 'Hello, World once more!'
    click_button 'Peep'
    expect(page).to have_content 'Hello, World!'
    expect(page).to have_content 'Hello, World again!'
    expect(page).to have_content 'Hello, World once more!'
  end
end

# As a Maker
# So that I can better appreciate the context of a peep
# I want to see the time at which it was made
#
# As a Maker
# So that I can post messages on Chitter as me
# I want to sign up for Chitter
#
# HARDER
#
# As a Maker
# So that only I can post messages on Chitter as me
# I want to log in to Chitter
#
# As a Maker
# So that I can avoid others posting messages on Chitter as me
# I want to log out of Chitter
#
# ADVANCED
#
# As a Maker
# So that I can stay constantly tapped in to the shouty box of Chitter
# I want to receive an email if I am tagged in a Peep
# ```
