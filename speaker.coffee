say = require 'say'
# see https://javascript.info/settimeout-setinterval

class Speaker

  @ms: 1500

  @Alex: new Speaker {voice:'Alex',role:'student',speed:0.9}
  @Daniel: new Speaker {voice:'Daniel',role:'teacher'}
  @Kate: new Speaker {voice:'Kate',role:'teacher'}
  @Oliver: new Speaker {voice:'Oliver',role:'student',speed:0.9}
  @Samantha: new Speaker {voice:'Samantha',role:'student',speed:0.9}
  @Serena: new Speaker {voice:'Serena',role:'teacher'}
  @MeiJia: new Speaker {voice:'Mei-Jia',role:'student',delay:500,speed:0.9}
  @Sinji: new Speaker {voice:'Sin-ji',role:'student',delay:500,speed:0.9}

  @wait: (ms) ->
    @ms += ms





  constructor: (classOpts={}) ->
    {@voice,@role,@speed=1,@delay=350} = classOpts  # delay=400
    



  intro: ->
    action = if @role is 'teacher' then "teach English." else "want to learn English"
    @say "I'm #{@voice}, I #{action}"



  say: (string,s) ->
    if string?
      {ms} = @constructor
      setTimeout(@speak, ms, string, @voice, @speed)
      console.log({@voice,ms,string})
      minDelay = 2000
      ms = if s? then s*1000 else Math.max(minDelay, string.split(' ').length*@delay)
      @constructor.wait(ms)


  speak: (string,voice,speed) ->
    say.speak(string,voice,speed)



  quiet: (s=1) ->
    ms = 1000 * s
    @constructor.wait(ms)
    




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