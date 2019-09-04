Category.destroy_all
Puzzle.destroy_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

novelty = Category.create(name: "Novelty")
nature = Category.create(name: "Nature")
art = Category.create(name: "Art")

Puzzle.create(name: "Starry Night", num_pieces: 500, category: art)
Puzzle.create(name: "3D Eifel tower", num_pieces: 1200, category: novelty)
Puzzle.create(name: "Megalodon", num_pieces: 20_000, category: novelty)

one_piece = Puzzle.create(name: "Concept Puzzle One Piece", num_pieces: 1, category: novelty)
zero_piece = Puzzle.create(name: "Concept Puzzle No Pieces", num_pieces: 0, category: novelty)
negative_piece = Puzzle.create(name: "Concept Puzzle Negative Pieces", num_pieces: -1, category: novelty)

Puzzle.all.each do |puzzle|
  puts "#{puzzle.name} #{puzzle.category.name}"
end

concept_puzzles = [one_piece, zero_piece, negative_piece]
concept_puzzles.each do |puzzle|
  puts "name: #{puzzle.name}"
  puts "pieces: #{puzzle.num_pieces}"
  puts "valid: #{puzzle.valid?}"
  puts
  if !puzzle.valid?
    puts "errors:"
    puzzle.errors.messages.each do |error|
      puts "  #{error}"
    end
  end
end