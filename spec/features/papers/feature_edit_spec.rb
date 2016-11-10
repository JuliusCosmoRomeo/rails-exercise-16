require 'rails_helper'

describe "Paper edit page", :type => :feature do
  it "should update a paper" do
  @paper = create(:paper)
  visit edit_paper_path(@paper)
  fill_in 'Year', with: '1951'
  
  click_button 'Edit paper'
  expect(Paper.find(@paper.id).year).to eq(1951) 
  end
end