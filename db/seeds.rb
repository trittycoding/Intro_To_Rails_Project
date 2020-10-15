require "csv"

Role.delete_all
Team.delete_all
Player.delete_all

#Load from filename
filename = Rails.root.join("db/combine_data_since_2000_PROCESSED_2018-04-26.csv")
puts "Loading from filename -  #{filename}"

csv_data = File.read(filename)
players = CSV.parse(csv_data, headers: true, encoding: "UTF-8")

# Creating players from CSV
players.each do |x|

  #Creates of finds the team and role/position name if it exists already
  role_name = Role.find_or_create_by(name: x["Pos"])
  team_name = Team.find_or_create_by(name: x["Team"])

  # If team and role are valid, then create the player
  if role_name&.valid? && team_name&.valid?
    player = role_name.players.create(
      name: x["Player"],
      playerposition: x["Pos"],
      height: x["Ht"],
      weight: x["Wt"],
      forty: x["Forty"],
      vertical: x["Vertical"],
      benchreps: x["BenchReps"],
      broadjump: x["BroadJump"],
      cone: x["Cone"],
      shuttle: x["Shuttle"],
      draftyear: x["Year"],
      draftedby: x["Team"],
      round: x["Round"],
      pick: x["Pick"]
    )
  end

  # Output errors if not valid
  # if !player&.valid?
  #   player.errors.messages.each do |column, errors|
  #     puts "Error with column - #{column}:"
  #     errors.each do |error|
  #       puts "Error - #{error}"
  #     end
  #   end
  # end
end

puts "Created #{Role.count} roles"
Role.all.each do |r|
  puts "Role Created - #{r.name}"
end
puts "Created #{Team.count} teams"
Team.all.each do |t|
  puts "Team Created - #{t.name}"
end
puts "Created #{Player.count} players"
