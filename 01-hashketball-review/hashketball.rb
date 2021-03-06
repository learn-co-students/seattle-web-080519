require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        }, {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        }, {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        }, {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        }, {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        }, {
          player_name: "Bismak Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        }, {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        }, {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        }, {
          player_name: "Brendan Haywood",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# GOAL:
# want to store all players from BOTH teams in one array
# makes data related to ALL players easily accessible

def get_players
  players = []
  game_hash.each do |teams, team_data|
    # players.push(team_data[:players])
    players << team_data[:players]
  end
  players.flatten
end

def num_points_scored(player_name)

  # METHOD 1
  # player = get_players.find do |player|
  #   player[:player_name] == player_name
  # end
  # player[:points]

  # METHOD 2
  # get_players.find do |player|
  #   player[:player_name] == player_name
  # end[:points]

  # METHOD 3
  get_players.find { |player| player[:player_name] == player_name }[:points]

end

# we tried to call [:points] at the end of the num_points_scored method on line 151
# unfortunately it only works for executed methods

def shoe_size(player_name)
  # remember that "find" returns the first item that matches the conditional
  get_players.find { |player| player[:player_name] == player_name }[:shoe]
end

def find_team(team_name)
  # remember that calling .values or .keys on a hash
  # stores the return values as an array (list of values)
  # even if that list of items only has one value (array with one index)
  game_hash.values.find do |team|
    team_name == team[:team_name]
  end
end

def player_numbers(team_name)

  # move the method in lines 174-176 into a separate method (find_team) 
  # as part of a DRY refactor 
  # game_hash.values.find do |team|
  #   team_name == team[:team_name]
  # end

  team = find_team(team_name)
  team[:players].map do |player| 
    player[:number]
  end

end