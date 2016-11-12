require 'rails_helper'

describe "Paper page", :type => :feature do
  
  it "should create an paper instance when the user creates a paper" do
    visit new_paper_path
    fill_in 'Title', with: 'COMPUTING MACHINERY AND INTELLIGENCE'
    fill_in 'Venue', with: 'Mind 49: 433-460'
    fill_in 'Year', with: '1950'
	
	click_button 'Create paper'    
    expect(Paper.where(title:"COMPUTING MACHINERY AND INTELLIGENCE", venue:"Mind 49: 433-460", year:"1950")).to exist
  end
  it "should show validation errors" do
    visit new_paper_path
    fill_in 'Title', with: ''
    fill_in 'Venue', with: ''
    fill_in 'Year', with: 'nineteen-fifty'
  
    click_button 'Create paper'    
    expect(page).to have_text("Title can't be blank")
    expect(page).to have_text("Venue can't be blank")
    expect(page).to have_text("Year is not a number")
    
  end
 
end