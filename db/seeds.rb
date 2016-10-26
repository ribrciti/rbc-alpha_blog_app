# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


@title = ["It's my tree, let me be: Woman tries to save leafy abode", 
  "7 factors that will decide whether the Cubs or Indians win it all", 
  "5 trades NFL teams should make before next week's deadline", 
  "On A Diet? Kick That Diet Soda Habit Once And For All", 
  "Obamacare spike reflects reemerging and disturbing trend of rising health care costs"
]

@description = ["For a quarter century, Shawnee Chasser has lived in a treehouse not far from downtown Miami. The 65-year-old grandmother who once protested the Vietnam War and nuclear weapons says she hates the oppressive feeling of walls and air conditioning, loves the open breeze and relishes the connection to nature in lush, tropical surroundings.", 
  "Cubs. Indians. World Series. It’s the baseball version of the apocalypse. Assuming the world doesn’t end before a winner is crowned, one championship drought will end this year as old pals Terry Francona and Theo Epstein try to repeat their feat from their days with the Red Sox. And then we’ll find out whether the losing team’s fan base’s despair will be greater than the winner’s ecstasy. So, will it be Chicago or Cleveland?", 
  "The NFL’s Nov. 1 trade deadline is quickly approaching, and though it’s almost certain to lack big moves, it’s always fun to speculate on possible trades that could go down. A handful of big-name players have popped up in trade rumors, most of whom are on teams that have almost no chance of making the playoffs. In that regard, it’s almost a perfect storm for those stars to be traded.", 
  "In a new study published in the journal Diabetes, Obesity and Metabolism, researchers found that women who switched from no-calorie diet drinks to water lost significantly more weight than those who stuck with diet drinks. ", 
  "Obamacare was supposed to reduce health expenses for Americans, but that’s not how it’s working out.  The government this week said premiums in 2017 for the most popular plans on federal exchanges will surge by an average of 25%. That’s three times as large as the 2016 increase.  It’s not just the cost of plans that’s increasing, either."
]

5.times do |num| 
  Article.create!(title: @title[num], description: @description[num], created_at: Date.today) 
end