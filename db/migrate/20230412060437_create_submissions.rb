class CreateSubmissions < ActiveRecord::Migration[7.0]
  def change
    create_table :submissions do |t|
      t.text :sentence
      t.date :date
      t.references :student, null: false, foreign_key: true
      t.references :assignment, null: false, foreign_key: true
      t.timestamps
    end
  end
end
