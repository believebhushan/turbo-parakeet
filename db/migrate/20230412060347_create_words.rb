class CreateWords < ActiveRecord::Migration[7.0]
  def change
    create_table :words do |t|
      t.string :word
      t.string :word_type
      t.string :antonyms
      t.string :synonyms
      t.text :usage
      t.timestamps
    end
  end
end
