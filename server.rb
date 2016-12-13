require 'sinatra'
require 'sinatra/reloader'

  compliments = [
      "Dont leave so soon",
      "welcome",
      "Did you mess up?",
      "Do you understand this yet?",
      "I dont know this Yet"
    ]

colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]


get ("/hi")  do
  @greeting = "choose your name?"
  @compliment = compliments.sample
  @color = colors.sample
  erb :compliment
end



get ("/:name") do
  @greeting = "HI #{params[:name].capitalize}!"
  @compliment = compliments.sample
  @color = colors.sample
  @name = name
  erb :compliment
end

  post ("/hi") do
   compliments.push(params[:compliment])
   @name = name
   erb :compliment
end
