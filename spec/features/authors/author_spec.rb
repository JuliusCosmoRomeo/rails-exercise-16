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
  
  it "should create message when user inserts blank last name" do
	visit new_author_path
	fill_in 'First name', with: 'Alan'
    fill_in 'Last name', with: nil
    fill_in 'Homepage', with: 'http://wikipedia.org/Alan_Turing'
	
	click_button 'Create Author'
	expect(page).to have_text("Last name can't be blank")
  end			
describe "Author edit page"
  it "should update an author" do
  @author = create(:author)
  visit edit_author_path(@author)
  fill_in 'First name', with: 'Alan Mathison'
  
  click_button 'Edit Author'
  #expect(Author.where(first_name:"Alan Mathison", last_name:"Turing", homepage:"http://wikipedia.org/Alan_Turing")).to exist
  expect(Author.find(@author.id).first_name).to eq("Alan Mathison") 
  end

describe "Author deletion"
  it "should delete an author" do
  @author = create(:author)
  visit authors_path
  @size = Author.all.size
  click_link 'Destroy'
  #page.all('a', :text => 'Destroy')[1].click
  expect(Author.all.size).to eq(@size-1)
end
end