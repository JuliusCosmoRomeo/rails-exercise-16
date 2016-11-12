require 'rails_helper'

describe "Paper edit page", :type => :feature do
  it "should update a paper" do
  @paper = create(:paper)
  visit edit_paper_path(@paper)
  fill_in 'Year', with: '1951'
  
  click_button 'Edit paper'
  expect(Paper.find(@paper.id).year).to eq(1951) 
  end
  it "should save Peter Plagiarist as author" do
  @paper = create(:paper)
  @author2 = create(:author2)
  visit edit_paper_path(@paper)
  @size = @paper.authors.size
  select "Peter Plagiarist", :from => "paper_author_id_1"
  
  click_button 'Edit paper'
  expect(@paper.authors).to include(@author2) 
  end
  
end