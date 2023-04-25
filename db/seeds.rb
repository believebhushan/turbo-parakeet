# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

idx=1
('A'..'M').each do |letter|
    Student.create(name:letter,grade:idx)
    idx+=1
end

('A'..'Z').each do |letter|
    Word.create(word:letter,word_type:'Alphabets',synonyms:'Synonyms:'+letter,antonyms:'Antonyms:'+letter,usage:letter+'1')
end


(1..13).each do |grade|
    Assignment.create!(grade:grade,due_date:Time.now,word:Word.find(grade))
end

