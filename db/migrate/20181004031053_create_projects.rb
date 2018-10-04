class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :genre
      t.date :created_at
      t.integer :total_pages
      t.string :author_id
      t.string :current_version_id

      t.timestamps
    end
  end
end
