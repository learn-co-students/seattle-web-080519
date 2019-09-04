class PuzzlesController < ApplicationController
  def index
    @puzzles = Puzzle.all
    render "index"
  end

  def show
    @puzzle = Puzzle.find(params[:id])
    render :show
  end

  def destroy
    Puzzle.find(params[:id]).destroy
    redirect_to puzzle_url
  end

  def new
    @puzzle = Puzzle.new
    render :new
  end

  def create
    name = params[:puzzle][:name]
    num_pieces = params[:puzzle][:num_pieces]

    category_id = params[:category_id]
    category = Category.find(category_id)

    puts "name: #{name}"
    puts "num_pieces: #{num_pieces}"
    puts "category_id: #{category_id}"

    @puzzle = Puzzle.new(
      name: name, num_pieces: num_pieces,
      category: category
    )

    if @puzzle.valid?
      @puzzle.save
      redirect_to puzzle_path(@puzzle)
    else
      render :new
    end
  end
end
