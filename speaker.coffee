say = require 'say'
# see https://javascript.info/settimeout-setinterval



class SpeakerBase
  @all = []
  @ms: 1500
  @indx: 1 

  @quiet: (s=1) ->
    ms = 1000 * s
    @wait(ms)


  @wait: (ms,sentence=false) ->
    if sentence
      @indx += 1
    @ms += ms # return @ms




  @restart: ->
    @end()



  @end: ->
    clearTimeout(any) for any in @all
    @all = []
    @indx = 1
    @ms = 1500







  constructor: (classOpts={}) ->
    {@voice,@role,@speed=1,@delay=370} = classOpts  # delay=400
    


  say: (string,s) ->
    if string?
      {ms,indx} = @constructor
      @constructor.all.push(setTimeout(@speak, ms, string, @voice, @speed))

      minDelay = 1600
      moreMs = if s? 
        s*1000 
      else 
        Math.max(minDelay, string.split(' ').length*@delay)
      
      endMs = @constructor.wait(moreMs,true)
      @cc({indx,start:ms,end:endMs,who:@voice,string})






  cc: ({indx,start,end,who,string,type='srt'}) ->
    seperator = ''
    switch type
      # SupRip, .srt
      when 'srt'
        seperator = ' --> '
        console.log(indx)
      # SubViewer, .sbv  
      when 'sbv' 
        seperator = ','
  
    console.log("#{start}#{seperator}#{end}")
    console.log("#{who}: #{string}")
    console.log("")




  speak: (string,voice,speed) ->
    say.speak(string,voice,speed)




  stop: ->
    say.stop()







class Speaker extends SpeakerBase

  @Alex: new Speaker {voice:'Alex',role:'trainee',speed:0.95}
  @Daniel: new Speaker {voice:'Daniel',role:'trainer'}
  @Kate: new Speaker {voice:'Kate',role:'trainer'}
  @Oliver: new Speaker {voice:'Oliver',role:'trainee',speed:0.95}
  @Samantha: new Speaker {voice:'Samantha',role:'trainee',speed:0.95}
  @Serena: new Speaker {voice:'Serena',role:'trainer'}
  @MeiJia: new Speaker {voice:'Mei-Jia',role:'trainee',delay:500}
  @Sinji: new Speaker {voice:'Sin-ji',role:'trainee',delay:500}




  @restart: ->
    [@Alex,@Daniel,@Kate,@Oliver,@Samantha,@Serena,@MeiJia,@Sinji].map((each,idx)->each.stop())
    super()





  intro: ->
    action = if /trainer/i.test(@role) then "teach English." else " am learning English"
    @say "I'm #{@voice}, I #{action}"













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