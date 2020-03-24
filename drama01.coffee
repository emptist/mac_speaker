Speaker = require './speaker'
lesson01 = require './lesson01'

Speaker.restart()

# ---------------------- set up roles and voices ---------------------------
{Alex,Daniel,Kate,Oliver,Samantha,Serena,MeiJia,Sinji} = Speaker

T = [
  Daniel
  Kate
  Serena
]

S = [
  MeiJia 
  Sinji 
  Samantha
  Alex
  Oliver
]


T.map((each,idx) -> each.role = 'trainer')
S.map((each,idx) -> each.role = 'trainee')

# --------------------------- prepare for materials --------------------------
{
  text:{title,paragraph}
  RD1
  RD2
  CQs #: {CQs.teacher,CQs.student}
  PDs #: {PDs.teacher1, PDs.teacher2, PDs.student1, PDs.student2}
  OC  #: {OC.introduction,OC.teacher, OC.student}
} = lesson01



S[0].say "Why your English is so good? What's the secret?"
S[1].say "The secret is New Concept English."
S[0].say "I know that, but, isn't it too simple?"

S[1].say "Maybe your English is very good. Maybe you haven't found an efficient way to learn English with it."

S[0].say "Oh, my English is nothing but poor. How did you learn English?"
S[1].say "Well, I'll show you how in a few minutes..."
S[0].say "Thanks."
S[1].say "Let's meet some people first."

T[0].intro()
T[0].quiet(1)
S[1].intro()
S[0].intro()
T[1].intro()
S[2].intro()
S[3].intro()
T[2].intro()
S[4].intro()


T[1].say "Hello everyone,  #{T[0].voice} and I will help you to learn New Concept English through practice. Today I'm going to read you a story about a visit to the theatre. It's called #{title}. Keep your books shut and listen please. "

T[1].say title

T[1].quiet(0.5)

T[1].say paragraph

T[1].say "Now turn to Lesson 1 please. We'll go through it carefully and make sure everyone has understood it. Ready? Now what about the title, #{title}? Let's take the word conversation first. A conversation is  a ... ?"

S[0].say "A talk"

T[1].say "Yes, that's right. It's a talk. But what about a private conversation, what kind of talk is that?"
T[1].quiet()

S[2].say "It's a a talk between you and me."

T[1].say "Good. It's not his business or her business. It's our business. It's private."
T[1].quiet()

T[1].say "'Last week I went to the theatre.' Went, of course, is the past of the verb ...?"

S[4].say "Go"

T[1].say "Yes, go. I went to the theatre. What would you expect to see at the theatre?"

S[0].say "Work?"

T[1].say "No, it's not a work.It's a ... ?"

S[3].say "A play"

T[1].say "Yes, it's a play. You'd go to the theatre to see a play."

T[1].say "'I had a very good seat.' Now what's the difference between a seat and a chair? Anybody knows? "

T[1].say "Ok, both seat and chair are somewhere we sit, but notice we always use the word seat to describe the place where you sit in a theatre or, say, a church. We don't use the word chair. You can move a chair round, but you can't usually move a seat round in a theatre."
T[1].say "... got it?"

S.map (each,idx) ->
  each.say "Got it! ", 0.001


# --------------------------- T ask S questions -------------------------


T[1].say "Great! Now I'm going to read the story again. Then, we're going to ask you questions. Books shut and listen carefully. "
T[1].quiet()

T[1].say title
T[1].quiet(0.5)

T[1].say paragraph

T[1].say "That's it. Now, let's do a role play. I'm going to ask you some questions about the story and you are going to answer my questions as if you were the hero of the story."

T[1].say "#{S[3].voice}, where did you go last week? "

S[3].say "I went to the theatre."

T[1].say "#{S[0].voice}, Did you have a good seat? "

S[0].say "Yes, I did. "

T[1].say "Was it an interesting play? #{S[2].voice}. "

S[2].say "Yes, it was. "

T[1].say "So #{S[4].voice}, you enjoyed it, did you? "

S[4].say "Yes, I did. "

T[1].say "I mean 'did you' ? "

S[4].say "No, I didn't. "


# ------------  train the S on asking questions --------------------


T[1].say "Excellent! You are all doing very well! Now I want you to ask me some questions. Here is the rule. I'm going to say 'Ask me if I went to the theatre' and you will ask, 'Did you go to the theatre?'. Then I will say 'Yes, I did. When...' and you will ask,'when did you go to the theatre?'"

T[1].say "Ready? Ask me if I went to the theatre. #{S[0].voice}, you please."

S[0].say "Did you go to the theatre? "

T[1].say "Yes I did. When..."

S[0].say "When you went to the theatre? "

T[1].say "No, listen. Did you go to the theatre? That's the question. Now put ... When ... in front of it."

S[0].say "When did you go to the theatre?"

T[1].say "Last week I went to the theatre. Fine. Now, #{S[4].voice}, please ask me if I saw an interesting play."

S[4].say "Did you see an interesting play?"

T[1].say "Yes, I did ... What... ?"

S[4].say "What did you see?"

T[1].say "I saw an interesting play. Very good!"
T[1].quiet()

# ------------  train the S on pattern dills --------------------


T[0].say "Now we're going to practice making simple sentences. We'll practice in pairs. One of you CQs.teacher a question or make a statement and the other CQs.student. I shall give you cues, like this : #{S[0].voice}, 'walk across the stage.' Then #{S[0].voice} ask: 'How did she walk across the stage?'"

T[0].say "Then I shall give another cue: #{S[1].voice}, 'slow', and #{S[1].voice} say, 'She walked very slowly across the stage'. All right?"

T[0].say "#{S[0].voice}, walk across the stage"
T[0].quiet()
T[0].quiet()

S[0].say "How did she walk across the stage?"

T[0].say "#{S[1].voice}, slow. "
T[0].quiet()
T[0].quiet()

S[1].say "She walked very slowly across the stage."

T[0].say "Good. #{S[2].voice} and #{S[3].voice}, it's your turn. #{S[2].voice}, behave at the theatre. "
T[0].quiet()

S[2].say "How did she behave at the theatre? "

T[0].say "#{S[3].voice}, rude ."

S[3].say "She behaved very rudely at the theatre."

T[0].say "Good. "


# ------------  train the S on oral composition --------------------

T[0].say "Now look at the blackboard please. I want you to try and tell me the story from those notes. Would you begin please, #{S[4].voice}? You should reconstruct points 1 and 2. "

T[0].say "points 1, #{OC.teacher[0]}"
T[0].say "points 2, #{OC.teacher[1]}"
T[0].quiet()

S[4].say "Last week I went to the theatre. I did not enjoy the play."

T[0].say "Good, now continue points 3 and 4, #{S[2].voice} please."
T[0].quiet()
T[0].quiet()
T[0].say "points 3, #{OC.teacher[2]}"
T[0].quiet()
T[0].say "points 4, #{OC.teacher[3]}"
T[0].quiet()
S[2].say "A young man and a young woman were sitting behind me. They were talking loudly."




T[0].say "That's all for today"

for each in T.concat(S)
  each.say "bye bye",0.001

