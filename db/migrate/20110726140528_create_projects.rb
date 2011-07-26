class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :logo
      t.string :git_url
      t.string :git_login
      t.string :git_password

      t.timestamps
    end
  end
end
