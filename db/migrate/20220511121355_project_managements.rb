class ProjectManagements < ActiveRecord::Migration[7.0]
  def change
    create_table :project_managements do |t|
      t.string :project_name 
      t.string :client 
      t.integer :manager_id 
      t.string :description 
      t.datetime :datetime 
      t.string :shift_info
      t.string :project_type

      t.timestamps
    end
  end
end
