require 'rails_helper'

describe "Paper edit page", :type => :feature do
  it "should update a paper" do
  @paper = create(:paper)
  visit edit_paper_path(@paper)
  fill_in 'Year', with: '1951'
  
  click_button 'Edit Paper'
  expect(Paper.find(@paper.id).year).to eq(1951) 
  end
  it "should save newly selected authors" do
    @computing = create(:paper)
    @alan_turing = create(:author)
    @computing.authors.push(@alan_turing)
    @peter = create(:author2)

    visit papers_path + "/#{@computing.id}/edit"
    find(:select, 'paper_author_id_1').find(:option, 'Peter Plagiarist').select_option
    click_button("Edit Paper")

    expect((Paper.find(@computing.id)).authors).to include(@peter)

  end
  it "should save Peter Plagiarist as author" do
  @paper = create(:paper)
  @author2 = create(:author2)
  visit edit_paper_path(@paper)
  find(:select, 'paper_author_id_1').find(:option, 'Peter Plagiarist').select_option
  #select @author2.id, :from => "paper_author_id_2"
  select "Peter Plagiarist", :from => "paper_author_id_2"
  
  
  click_button 'Edit Paper'
  expect(@paper.authors).to include(@author2) 
  end

end