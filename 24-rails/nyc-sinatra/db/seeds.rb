Landmark.destroy_all
Title.destroy_all
Figure.destroy_all
FigureTitle.destroy_all

landmarks = {
    "Madison Square Guarden" => {
      :year_completed => 1901
    },
    "The big bull outside" => {
      :year_completed => 1995
    },
    "Flatiron School" => {
      :year_completed => 2014
    },
    "Museum Mile" => {
      :year_completed => 1058
    },
    "Subway Station" => {
      :year_completed => 2015
    },
    "Cast Iron" => {
      :year_completed => 1951
    },
    "Shea Stadium" => {
      :year_completed => 1964
    },
    "Flatiron Building" => {
      :year_completed => 1902
    },
    "Brooklyn Bridge" => {
      :year_completed => 1883
    }
  }

landmarks = landmarks.map do |name, landmark_hash|
  landmark = Landmark.new
  landmark.name = name
  landmark_hash.each do |attribute, value|
      landmark[attribute] = value
  end
  landmark.save
  landmark
end

titles = ["Mayor", "President", "Governor", "NYC Parks Commissioner"]

titles = titles.map do |title|
  p = Title.new
  p.name = title
  p.save
  p
end

figures = [
  "Billy The Kid",
  "Mark Zuckerberg",
  "Ada Lovelace",
  "Linus Torvalds"
]

figures.map do |name|
  figure = Figure.new
  figure.name = name

  2.times do
    figure.titles << titles.sample
    figure.landmarks << landmarks.sample
  end

  figure.save
  figure
end
