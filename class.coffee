Speaker = require './speaker'
lesson01 = require './lesson01'

Speaker.restart()

# ---------------------- set up roles and voices ---------------------------
{Alex,Daniel,Kate,Oliver,Samantha,Serena,MeiJia,Sinji} = Speaker

teachers = [
  Daniel
  Kate
  Serena
]

students = [
  MeiJia 
  Sinji 
  Samantha
  Alex
  Oliver
]


teachers.map((each,idx) -> each.role = 'teacher')
students.map((each,idx) -> each.role = 'student')

# --------------------------- prepare for materials --------------------------
{
  text: {title,paragraph}
  comprehension: {asks,answers}
  patternDrills: {t1, t2, s1, s2}
  oralComposition: {ocIntroduction,oct1, ocs1}
} = lesson01

###

students[0].say "Why your English is so good? What's the secret?"
students[1].say "The secret is New Concept English."
students[0].say "I know that, but, isn't it too simple?"

students[1].say "Maybe your English is very good. Maybe you haven't found an efficient way to learn English with it."

students[0].say "Oh, my English is nothing but poor. How did you learn English?"
students[1].say "Well, I'll show you how in a few minutes..."
students[0].say "Thanks."
students[1].say "Let's meet some people first."

teachers[0].intro()
teachers[0].quiet(1)
students[1].intro()
students[0].intro()
teachers[1].intro()
students[2].intro()
students[3].intro()
teachers[2].intro()
students[4].intro()


teachers[1].say "Hello everyone,  #{teachers[0].voice} and I will help you to learn New Concept English through practice. Today I'm going to read you a story about a visit to the theatre. It's called #{title}. Keep your books shut and listen please. "

teachers[1].say title

teachers[1].quiet(0.5)

teachers[1].say paragraph

teachers[1].say "Now turn to Lesson 1 please. We'll go through it carefully and make sure everyone has understood it. Ready? Now what about the title, #{title}? Let's take the word conversation first. A conversation is  a ... ?"

students[0].say "A talk"

teachers[1].say "Yes, that's right. It's a talk. But what about a private conversation, what kind of talk is that?"
teachers[1].quiet()

students[2].say "It's a a talk between you and me."

teachers[1].say "Good. It's not his business or her business. It's our business. It's private."
teachers[1].quiet()

teachers[1].say "'Last week I went to the theatre.' Went, of course, is the past of the verb ...?"

students[4].say "Go"

teachers[1].say "Yes, go. I went to the theatre. What would you expect to see at the theatre?"

students[0].say "Work?"

teachers[1].say "No, it's not a work.It's a ... ?"

students[3].say "A play"

teachers[1].say "Yes, it's a play. You'd go to the theatre to see a play."

teachers[1].say "'I had a very good seat.' Now what's the difference between a seat and a chair? Anybody knows? "

teachers[1].say "Ok, both seat and chair are somewhere we sit, but notice we always use the word seat to describe the place where you sit in a theatre or, say, a church. We don't use the word chair. You can move a chair round, but you can't usually move a seat round in a theatre."
teachers[1].say "... got it?"

students.map (each,idx) ->
  each.say "Got it! ", 0.001


# --------------------------- teachers ask students questions -------------------------


teachers[1].say "Great! Now I'm going to read the story again. Then, we're going to ask you questions. Books shut and listen carefully. "
teachers[1].quiet()

teachers[1].say title
teachers[1].quiet(0.5)

teachers[1].say paragraph

teachers[1].say "That's it. Now, let's do a role play. I'm going to ask you some questions about the story and you are going to answer my questions as if you were the hero of the story."

teachers[1].say "#{students[3].voice}, where did you go last week? "

students[3].say "I went to the theatre."

teachers[1].say "#{students[0].voice}, Did you have a good seat? "

students[0].say "Yes, I did. "

teachers[1].say "Was it an interesting play? #{students[2].voice}. "

students[2].say "Yes, it was. "

teachers[1].say "So #{students[4].voice}, you enjoyed it, did you? "

students[4].say "Yes, I did. "

teachers[1].say "I mean 'did you' ? "

students[4].say "No, I didn't. "


# ------------  train the students on asking questions --------------------


teachers[1].say "Excellent! You are all doing very well! Now I want you to ask me some questions. Here is the rule. I'm going to say 'Ask me if I went to the theatre' and you will ask, 'Did you go to the theatre?'. Then I will say 'Yes, I did. When...' and you will ask,'when did you go to the theatre?'"

teachers[1].say "Ready? Ask me if I went to the theatre. #{students[0].voice}, you please."

students[0].say "Did you go to the theatre? "

teachers[1].say "Yes I did. When..."

students[0].say "When you went to the theatre? "

teachers[1].say "No, listen. Did you go to the theatre? That's the question. Now put ... When ... in front of it."

students[0].say "When did you go to the theatre?"

teachers[1].say "Last week I went to the theatre. Fine. Now, #{students[4].voice}, please ask me if I saw an interesting play."

students[4].say "Did you see an interesting play?"

teachers[1].say "Yes, I did ... What... ?"

students[4].say "What did you see?"

teachers[1].say "I saw an interesting play. Very good!"
teachers[1].quiet()

# ------------  train the students on pattern dills --------------------


teachers[0].say "Now we're going to practice making simple sentences. We'll practice in pairs. One of you asks a question or make a statement and the other answers. I shall give you cues, like this : #{students[0].voice}, 'walk across the stage.' Then #{students[0].voice} ask: 'How did she walk across the stage?'"

teachers[0].say "Then I shall give another cue: #{students[1].voice}, 'slow', and #{students[1].voice} say, 'She walked very slowly across the stage'. All right?"

teachers[0].say "#{students[0].voice}, walk across the stage"
teachers[0].quiet()
teachers[0].quiet()

students[0].say "How did she walk across the stage?"

teachers[0].say "#{students[1].voice}, slow. "
teachers[0].quiet()
teachers[0].quiet()

students[1].say "She walked very slowly across the stage."

teachers[0].say "Good. #{students[2].voice} and #{students[3].voice}, it's your turn. #{students[2].voice}, behave at the theatre. "
teachers[0].quiet()

students[2].say "How did she behave at the theatre? "

teachers[0].say "#{students[3].voice}, rude ."

students[3].say "She behaved very rudely at the theatre."

teachers[0].say "Good. "


# ------------  train the students on oral composition --------------------

teachers[0].say "Now look at the blackboard please. I want you to try and tell me the story from those notes. Would you begin please, #{students[4].voice}? You should reconstruct points 1 and 2. "

teachers[0].say "points 1, #{oct1[0]}"
teachers[0].say "points 2, #{oct1[1]}"
teachers[0].quiet()

students[4].say "Last week I went to the theatre. I did not enjoy the play."

teachers[0].say "Good, now continue points 3 and 4, #{students[2].voice} please."
teachers[0].quiet()
teachers[0].quiet()
teachers[0].say "points 3, #{oct1[2]}"
teachers[0].quiet()
teachers[0].say "points 4, #{oct1[3]}"
teachers[0].quiet()
students[2].say "A young man and a young woman were sitting behind me. They were talking loudly."

###




###

#teachers[0].say title
#Kate.say paragraph

#teachers[0].quiet(5) # waiting for seconds since begin

#teachers[0].say 'I ask, you answer'
#students[0].quiet(1)
#students[1].say '請回答以下問題'
#students[1].quiet()

for ask,idx in asks
  teachers[0].say ask
  students[4].quiet(2)
  students[0].say answers[idx] 

#teachers[0].quiet(2) # waiting for seconds since begin
#students[0].say '根據老師出的pattern,兩個學生互相問答'
#students[0].quiet(2)
#students[1].say '根據老師出的pattern,兩個學生互相問答'
#students[1].quiet(2)



# pattern drills
for t,idx in t1
  teachers[1].say t
  teachers[1].quiet(2)

  students[0].say s1[idx]
  teachers[2].say t2[idx]
  
  teachers[1].quiet(2)
  students[0].say s2[idx]
###


# oral composition
teachers[1].say ocIntroduction

for t,idx in oct1
  teachers[1].say t
  teachers[1].quiet(2)
  students[1].say ocs1[idx]

##


teachers[0].say "That's all for today"

for each in teachers.concat(students)
  each.say "bye bye",0.001

###
#x#Speaker.restart()
###