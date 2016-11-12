class AddPapersKeyToAuthors < ActiveRecord::Migration
  def change
  	add_column :authors, :papers, :string, array: true, default: []
  end
end
