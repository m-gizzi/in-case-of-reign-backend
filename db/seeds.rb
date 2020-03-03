# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ruling.destroy_all
Option.destroy_all
Case.destroy_all
User.destroy_all

user1 = User.create(name: "Henry", title: "King", rating: 50)
user2 = User.create(name: "Henry II", title: "King", rating: 30)
user3 = User.create(name: "Henrietta", title: "Queen")
user4 = User.create(name: "Henry III", title: "King", rating: 90)

case1 = Case.create(title: "Repeat Offender", rating_boost: 10, disclosure: "A criminal you pardoned before has gone on to continue stealing sheep.  What should his fate be?", creator_id: user1.id)
case2 = Case.create(title: "The Goat", rating_boost: 10, disclosure: "Two neighbors each claim to own the same goat.  What do you decide?", creator_id: user1.id)
case3 = Case.create(title: "Farmer Ted", rating_boost: 10, disclosure: "A farmer on the outskirts of town had his crop fail this year.  Now what?", creator_id: user1.id)
case4 = Case.create(title: "Enemies Abroad", rating_boost: 10, disclosure: "A nearby kingdom has sent an emissary asking for tribute or they'll attack.  What is your response?", creator_id: user1.id)
case5 = Case.create(title: "The Tournament", rating_boost: 10, disclosure: "Two local sports teams ask for you to root for them in their upcoming tournament.  Who do you side with?", creator_id: user1.id)
case6 = Case.create(title: "Court Party", rating_boost: 10, disclosure: "A court advisor's birthday is coming up.  How will you mark the occasion?", creator_id: user1.id)
case7 = Case.create(title: "Labor Day", rating_boost: 10, disclosure: "The castle staff have petioned for a day off.  What do you say?", creator_id: user1.id)

option1a = Option.create(points: -20, description: "Chop off his hands", case_id: case1.id, alert: "Your people are terrified of your brutality")
option1b = Option.create(points: -5, description: "Throw him in a cell", case_id: case1.id, alert: "Your people question why you didn't do that in the first place")

option2a = Option.create(points: -8, description: "It's the first peasant's", case_id: case2.id, alert: "The second peasant is miffed")
option2b = Option.create(points: -8, description: "It's the second peasant's", case_id: case2.id, alert: "The first peasant is miffed")
option2c = Option.create(points: -20, description: "Split the goat in half", case_id: case2.id, alert: "Your people are terrified of your brutality and literal interpretation of fairness")
option2d = Option.create(points: -40, description: "Cut an unrelated baby in half", case_id: case2.id, alert: "WTF")

option3a = Option.create(points: -6, description: "Help him out with some food from storage", case_id: case3.id, alert: "He lives, though some stingier members of your kingdom grumble")
option3b = Option.create(points: -14, description: "Let him starve", case_id: case3.id, alert: "His family starves and your kingdom worries that they will be next")

option4a = Option.create(points: -25, description: "Tell them to shove it", case_id: case4.id, alert: "They attack and deal your kingdom a crippling blow")
option4b = Option.create(points: -12, description: "Agree to their terms", case_id: case4.id, alert: "Smart move, but your people lose respect for you")

option5a = Option.create(points: -0, description: "Side with side 1", case_id: case5.id, alert: "Well that was a freebie")
option5b = Option.create(points: -0, description: "Side with side 2", case_id: case5.id, alert: "Well that was a freebie")
option5c = Option.create(points: -0, description: "Stay neutral", case_id: case5.id, alert: "Well that was a freebie")

option6a = Option.create(points: -9, description: "Throw a lavish party", case_id: case6.id, alert: "The starving peasants aren't thrilled with your lavish display")
option6b = Option.create(points: -0, description: "Throw a modest party", case_id: case6.id, alert: "The advisor appreciates the gesture")

option7a = Option.create(points: -3, description: "Sure, I can make my own food for a day", case_id: case7.id, alert: "The bourgeoisie scoff at your decision")
option7b = Option.create(points: -15, description: "Absolutely not, don't want them getting any ideas", case_id: case7.id, alert: "The people in charge of making your food don't like you, which may cause problems in the future")

ruling1 = Ruling.create(user_id: user1.id, case_id: case1.id, verdict: option1a.id)
ruling2 = Ruling.create(user_id: user1.id, case_id: case2.id, verdict: option2a.id)


