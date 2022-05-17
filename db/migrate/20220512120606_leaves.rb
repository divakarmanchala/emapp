class Leaves < ActiveRecord::Migration[7.0]
  def change
    create_table :leaves do |t|
      t.integer :leave_id
      t.integer :employee_id
      t.datetime :start_date
      t.datetime :end_date
      t.string :status
      t.integer :decided_by
      t.string :reason

      t.timestamps
    end
  end
end
