require 'rails_helper'

describe "Author page", :type => :feature do
  
  it "should create an author instance when the user creates an author" do
    visit new_author_path
    fill_in 'First name', with: 'Alan'
    fill_in 'Last name', with: 'Turing'
    fill_in 'Homepage', with: 'http://wikipedia.org/Alan_Turing'
	
	click_button 'Create Author'    
    expect(Author.where(first_name:"Alan", last_name:"Turing", homepage:"http://wikipedia.org/Alan_Turing")).to exist
  end
describe "Shows user errors when 'last name' is blank"
  it "shows user message that field should not be blank" do
	visit new_author_path
	fill_in 'First name', with: 'Alan'
    fill_in 'Last name', with: nil
    fill_in 'Homepage', with: 'http://wikipedia.org/Alan_Turing'
	
	click_button 'Create Author'
	expect(page).to have_text("last name can't be blank")
end			

end