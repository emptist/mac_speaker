Speaker = require './speaker'
lesson01 = require './lesson01'

{Alex,Daniel,Kate,Oliver,Samantha,Serena,MeiJia,Sinji} = Speaker
{
  title,paragraph,
  comprehension:{asks,answers}
  patternDrills:{t1, t2, s1, s2}
} = lesson01

###
Sinji.quiet(1)
MeiJia.say "Why your English is so good? What's the secret?"
#MeiJia.quiet()
Sinji.say "The secret is New Concept English."
#Sinji.quiet(6)
MeiJia.say "I know that, but, isn't it too simple?"
#MeiJia.quiet()

Sinji.say "Maybe your English is very good. Maybe you haven't found an efficient way to learn English with it."
#MeiJia.quiet()

MeiJia.say "oh, my English is nothing but poor. How did you learn English?"
#MeiJia.quiet()
#MeiJia.quiet()
Sinji.say "Well, I'll show you how in a few minutes..."
MeiJia.say "Thanks."
#Sinji.quiet()
Sinji.say "Let's meet some people first."
#Sinji.quiet()

Daniel.intro()
Sinji.intro()
MeiJia.intro()
Serena.intro()
Oliver.intro()
Alex.intro()
###

Serena.say "Today I'm going to read you a story about a visit to the theatre. It's called 'A Private Conversation'. Keep your books shut and listen please. "
Serena.say "A Private Conversation"
Serena.say "Last week I went to the theatre. I had a very good seat. The play was very interesting. I did not enjoy it. A young man and a young woman were sitting behind me. They were talking loudly. I got very angry. I could not hear the actors. "
Serena.say "I turned around. I looked at the man and the woman angrily. They did not pay any attention. In the end, I could not bear it. I turned round again. ‘I can’t hear a word!’ I said angrily. ‘It’s none of your business,’ the young man said rudely. ‘This is a private conversation!’"

Serena.say "Now turn to Lesson 1 please. We'll go through it carefully and make sure everyone has understood it. Ready? Now what about the title, 'A Private Conversation'? Let's take the word conversation first. A conversation is a ...?"

MeiJia.say "A talk"

Serena.say "Yes, that's right. It's a talk. But what about a private conversation, what kind of talk is that?"

Alex.say "It's a a talk between you and me."

Serena.say "Good. It's not his business or her business. It's our business. It's private."

Serena.say "'Last week I went to the theatre.' Went, of course, is the past of the verb...?"

Sinji.say "Go"

Serena.say "Yes, go. I went to the theatre. What would you expect to see at the theatre?"
#Daniel.say title
#Kate.say paragraph

#Daniel.quiet(5) # waiting for seconds since begin

Daniel.say 'I ask, you answer'
#MeiJia.quiet(1)
#Sinji.say '請回答以下問題'
#Sinji.quiet()

for ask,idx in asks
  Daniel.say ask
  #Samantha.quiet(2)
  MeiJia.say answers[idx] 

#Daniel.quiet(2) # waiting for seconds since begin
#MeiJia.say '根據老師出的pattern,兩個學生互相問答'
#MeiJia.quiet(2)
#Sinji.say '根據老師出的pattern,兩個學生互相問答'
#Sinji.quiet(2)

student = [Samantha,MeiJia,Sinji]
for t,idx in t1
  Serena.say t
  Daniel.quiet(2)
  student[1].say s1[idx]
  Daniel.say t2[idx]
  Serena.quiet(2)
  student[2].say s2[idx]


Daniel.say "That's all for today"
Daniel.quiet(1)

for each in [Serena,Daniel,Kate,Serena,Samantha,MeiJia,Sinji]
  each.say "bye bye",0.001