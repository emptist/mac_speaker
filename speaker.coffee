say = require 'say'

class Speaker
  
  @Alex: new Speaker {voice:'Alex',role:'student',speed:0.8}
  @Daniel: new Speaker {voice:'Daniel',role:'teacher'}
  @Kate: new Speaker {voice:'Kate',role:'teacher',speed:0.9}
  @Oliver: new Speaker {voice:'Oliver',role:'student',speed:0.8}
  @Samantha: new Speaker {voice:'Samantha',role:'student',speed:0.9}
  @Serena: new Speaker {voice:'Serena',role:'teacher'}
  @MeiJia: new Speaker {voice:'Mei-Jia',role:'student',delay:110}
  @Sinji: new Speaker {voice:'Sin-ji',role:'student',delay:110,speed:0.8}



  constructor: (classOpts={}) -> 
    {@voice,@role,@speed=1,@delay=100} = classOpts
    



  intro: ->
    @quiet(1)
    action = if @role is 'teacher' then "teach English." else "want to learn English"
    @say "I'm #{@voice}, I #{action}"




  say: (string,s) ->
    if string?
      say.speak(string,@voice)
      ms = if s? then s*1000 else string.length*@delay
      @_wait(ms)




  quiet: (s=4) ->
    @_wait(s*1000)



  _wait:(ms=40000) ->
    d = new Date()
    d2 = null 
    d2 = new Date() while d2-d < ms



  stop: ->
    @say.stop()









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