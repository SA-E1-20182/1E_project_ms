class AddCoverUrlToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :cover_url, :string
  end
end
