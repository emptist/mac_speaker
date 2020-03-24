Speaker = require './speaker'
lesson01 = require './lesson01'

Speaker.restart()

# ---------------------- set up roles and voices ---------------------------
{Alex,Daniel,Kate,Oliver,Samantha,Serena,MeiJia,Sinji} = Speaker

trainers = [
  Daniel
  Kate
  Serena
]

trainees = [
  MeiJia 
  Sinji 
  Samantha
  Alex
  Oliver
]


trainers.map((each,idx) -> each.role = 'trainer')
trainees.map((each,idx) -> each.role = 'trainee')

# --------------------------- prepare for materials --------------------------
{
  text: {title,paragraph}
  CQs #: {CQs.teacher,CQs.student}
  PDs #: {PDs.teacher1, PDs.teacher2, PDs.student1, PDs.student2}
  OC  #: {OC.introduction,OC.teacher, OC.student}
} = lesson01

###

trainees[0].say "Why your English is so good? What's the secret?"
trainees[1].say "The secret is New Concept English."
trainees[0].say "I know that, but, isn't it too simple?"

trainees[1].say "Maybe your English is very good. Maybe you haven't found an efficient way to learn English with it."

trainees[0].say "Oh, my English is nothing but poor. How did you learn English?"
trainees[1].say "Well, I'll show you how in a few minutes..."
trainees[0].say "Thanks."
trainees[1].say "Let's meet some people first."

trainers[0].intro()
trainers[0].quiet(1)
trainees[1].intro()
trainees[0].intro()
trainers[1].intro()
trainees[2].intro()
trainees[3].intro()
trainers[2].intro()
trainees[4].intro()


trainers[1].say "Hello everyone,  #{trainers[0].voice} and I will help you to learn New Concept English through practice. Today I'm going to read you a story about a visit to the theatre. It's called #{title}. Keep your books shut and listen please. "

trainers[1].say title

trainers[1].quiet(0.5)

trainers[1].say paragraph

trainers[1].say "Now turn to Lesson 1 please. We'll go through it carefully and make sure everyone has understood it. Ready? Now what about the title, #{title}? Let's take the word conversation first. A conversation is  a ... ?"

trainees[0].say "A talk"

trainers[1].say "Yes, that's right. It's a talk. But what about a private conversation, what kind of talk is that?"
trainers[1].quiet()

trainees[2].say "It's a a talk between you and me."

trainers[1].say "Good. It's not his business or her business. It's our business. It's private."
trainers[1].quiet()

trainers[1].say "'Last week I went to the theatre.' Went, of course, is the past of the verb ...?"

trainees[4].say "Go"

trainers[1].say "Yes, go. I went to the theatre. What would you expect to see at the theatre?"

trainees[0].say "Work?"

trainers[1].say "No, it's not a work.It's a ... ?"

trainees[3].say "A play"

trainers[1].say "Yes, it's a play. You'd go to the theatre to see a play."

trainers[1].say "'I had a very good seat.' Now what's the difference between a seat and a chair? Anybody knows? "

trainers[1].say "Ok, both seat and chair are somewhere we sit, but notice we always use the word seat to describe the place where you sit in a theatre or, say, a church. We don't use the word chair. You can move a chair round, but you can't usually move a seat round in a theatre."
trainers[1].say "... got it?"

trainees.map (each,idx) ->
  each.say "Got it! ", 0.001


# --------------------------- trainers ask trainees questions -------------------------


trainers[1].say "Great! Now I'm going to read the story again. Then, we're going to ask you questions. Books shut and listen carefully. "
trainers[1].quiet()

trainers[1].say title
trainers[1].quiet(0.5)

trainers[1].say paragraph

trainers[1].say "That's it. Now, let's do a role play. I'm going to ask you some questions about the story and you are going to answer my questions as if you were the hero of the story."

trainers[1].say "#{trainees[3].voice}, where did you go last week? "

trainees[3].say "I went to the theatre."

trainers[1].say "#{trainees[0].voice}, Did you have a good seat? "

trainees[0].say "Yes, I did. "

trainers[1].say "Was it an interesting play? #{trainees[2].voice}. "

trainees[2].say "Yes, it was. "

trainers[1].say "So #{trainees[4].voice}, you enjoyed it, did you? "

trainees[4].say "Yes, I did. "

trainers[1].say "I mean 'did you' ? "

trainees[4].say "No, I didn't. "


# ------------  train the trainees on asking questions --------------------


trainers[1].say "Excellent! You are all doing very well! Now I want you to ask me some questions. Here is the rule. I'm going to say 'Ask me if I went to the theatre' and you will ask, 'Did you go to the theatre?'. Then I will say 'Yes, I did. When...' and you will ask,'when did you go to the theatre?'"

trainers[1].say "Ready? Ask me if I went to the theatre. #{trainees[0].voice}, you please."

trainees[0].say "Did you go to the theatre? "

trainers[1].say "Yes I did. When..."

trainees[0].say "When you went to the theatre? "

trainers[1].say "No, listen. Did you go to the theatre? That's the question. Now put ... When ... in front of it."

trainees[0].say "When did you go to the theatre?"

trainers[1].say "Last week I went to the theatre. Fine. Now, #{trainees[4].voice}, please ask me if I saw an interesting play."

trainees[4].say "Did you see an interesting play?"

trainers[1].say "Yes, I did ... What... ?"

trainees[4].say "What did you see?"

trainers[1].say "I saw an interesting play. Very good!"
trainers[1].quiet()

# ------------  train the trainees on pattern dills --------------------


trainers[0].say "Now we're going to practice making simple sentences. We'll practice in pairs. One of you CQs.teacher a question or make a statement and the other CQs.student. I shall give you cues, like this : #{trainees[0].voice}, 'walk across the stage.' Then #{trainees[0].voice} ask: 'How did she walk across the stage?'"

trainers[0].say "Then I shall give another cue: #{trainees[1].voice}, 'slow', and #{trainees[1].voice} say, 'She walked very slowly across the stage'. All right?"

trainers[0].say "#{trainees[0].voice}, walk across the stage"
trainers[0].quiet()
trainers[0].quiet()

trainees[0].say "How did she walk across the stage?"

trainers[0].say "#{trainees[1].voice}, slow. "
trainers[0].quiet()
trainers[0].quiet()

trainees[1].say "She walked very slowly across the stage."

trainers[0].say "Good. #{trainees[2].voice} and #{trainees[3].voice}, it's your turn. #{trainees[2].voice}, behave at the theatre. "
trainers[0].quiet()

trainees[2].say "How did she behave at the theatre? "

trainers[0].say "#{trainees[3].voice}, rude ."

trainees[3].say "She behaved very rudely at the theatre."

trainers[0].say "Good. "


# ------------  train the trainees on oral composition --------------------

trainers[0].say "Now look at the blackboard please. I want you to try and tell me the story from those notes. Would you begin please, #{trainees[4].voice}? You should reconstruct points 1 and 2. "

trainers[0].say "points 1, #{OC.teacher[0]}"
trainers[0].say "points 2, #{OC.teacher[1]}"
trainers[0].quiet()

trainees[4].say "Last week I went to the theatre. I did not enjoy the play."

trainers[0].say "Good, now continue points 3 and 4, #{trainees[2].voice} please."
trainers[0].quiet()
trainers[0].quiet()
trainers[0].say "points 3, #{OC.teacher[2]}"
trainers[0].quiet()
trainers[0].say "points 4, #{OC.teacher[3]}"
trainers[0].quiet()
trainees[2].say "A young man and a young woman were sitting behind me. They were talking loudly."

###




###

#trainers[0].say title
#Kate.say paragraph

#trainers[0].quiet(5) # waiting for seconds since begin

#trainers[0].say 'I ask, you answer'
#trainees[0].quiet(1)
#trainees[1].say '請回答以下問題'
#trainees[1].quiet()

for ask,idx in CQs.teacher
  trainers[0].say ask
  trainees[4].quiet(2)
  trainees[0].say CQs.student[idx] 

#trainers[0].quiet(2) # waiting for seconds since begin
#trainees[0].say '根據老師出的pattern,兩個學生互相問答'
#trainees[0].quiet(2)
#trainees[1].say '根據老師出的pattern,兩個學生互相問答'
#trainees[1].quiet(2)



# pattern drills
for t,idx in PDs.teacher1
  trainers[1].say t
  trainers[1].quiet(2)

  trainees[0].say PDs.student1[idx]
  trainers[2].say PDs.teacher2[idx]
  
  trainers[1].quiet(2)
  trainees[0].say PDs.student2[idx]
###


# oral composition
trainers[1].say OC.introduction

for t,idx in OC.teacher
  trainers[1].say t
  trainers[1].quiet(2)
  trainees[1].say OC.student[idx]

##


trainers[0].say "That's all for today"

for each in trainers.concat(trainees)
  each.say "bye bye",0.001

###
#x#Speaker.restart()
###