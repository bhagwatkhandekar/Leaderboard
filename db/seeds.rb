# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.create(name: "Sam test", contact_number: 3344553322)
u.save
# To create the player you have to follow below steps
# 1. Create the Game 
# 2. Create the team
game = Game.create(game_format: "50-50 on day", location: "Chennai", more_info: "This game have to complete within 10 hours and playing only 11 players in one team")
game.save
team = Team.create(team_name: 'BBC rocks', team_info: 'This is latest club came up with excellent skillsets')
team.save
player = Player.create(name: "R Khan", score: 130, contact_number: 9855663311, address: "ap: Degaon, tal: Mangalwedha", game_id: game.id, team_id: team.id, user_id: u.id)
player.save
game_one = Game.create({game_format: "t 20", location: 'Pune', more_info: '3 hours game format'}) 