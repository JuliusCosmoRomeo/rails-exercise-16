require 'rails_helper'

RSpec.describe '/papers/edit', :type => :view do
	it "should have title, venue and year field" do
		@paper = create(:paper)
		render :template => '/papers/edit.html.erb'
		expect(rendered).to have_field("paper_title")
		expect(rendered).to have_field("paper_venue")
		expect(rendered).to have_field("paper_year")
	end
	it "should have a submit button" do
		@paper = create(:paper)
		render :template => '/papers/edit.html.erb'
		expect(rendered).to have_selector("input[type=submit]")
	end
	it "should have 5 dropdown-menus to select 5 different authors" do
		@paper = create(:paper)
		render :template => '/papers/edit.html.erb'
		expect(rendered).to have_selector("select#paper_author_id_1")
		expect(rendered).to have_selector("select#paper_author_id_2")
		expect(rendered).to have_selector("select#paper_author_id_3")
		expect(rendered).to have_selector("select#paper_author_id_4")
		expect(rendered).to have_selector("select#paper_author_id_5")
	end


end
