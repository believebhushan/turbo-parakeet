class CreateAssignments < ActiveRecord::Migration[7.0]
  def change
    create_table :assignments do |t|
      t.references :word, null: false, foreign_key: true
      t.date :due_date
      t.integer :grade
      t.timestamps
    end
  end
end
