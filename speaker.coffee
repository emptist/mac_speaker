say= require 'say'

class Speaker
  
  @Alex: new Speaker 'Alex'
  @Daniel: new Speaker 'Daniel'
  @Kate: new Speaker 'Kate'
  @Oliver: new Speaker 'Oliver'
  @Samantha: new Speaker 'Samantha'
  @Serena: new Speaker 'Serena'




  constructor: (@voice) -> 
    @delay = 2000




  say: (voice,string,ms=3000) ->
    d = new Date()
    d2 = null 
    d2 = new Date() while d2-d < ms
    say.speak(string,voice)




module.exports = Speaker



###
Kate.say "last week, I went to a theater"
Oliver.say "where did you go last week"
Alex.say "I went to the theater last week"
Serena.say "did you have a very good seat, or not?"
Alex.say "I had a very good seat"
Samantha.say "was the play interesting, or not?"
Serena.say "The play was very interesting"
###