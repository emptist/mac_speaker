Speaker = require './speaker'
lesson01 = require './lesson01'

{Alex,Daniel,Kate,Oliver,Samantha,Serena,MeiJia,Sinji} = Speaker
{
  title,paragraph,
  comprehension:{asks,answers}
  patternDrills:{t1, t2, s1, s2}
} = lesson01

Sinji.quiet(1)
Sinji.say "Why your English is so good? What's the secret?"
#MeiJia.quiet()
MeiJia.say "The secret is New Concept English."
#Sinji.quiet(6)
Sinji.say "I know that, but, isn't it too simple?"
#MeiJia.quiet()

MeiJia.say "Maybe your English is very good. Maybe you haven't found an efficient way to learn English with it."
#MeiJia.quiet()

Sinji.say "oh, my English is nothing but poor. How did you learn English?"
#MeiJia.quiet()
#MeiJia.quiet()
MeiJia.say "Well, I'll show you how in a few minutes..."
Sinji.say "Thanks."
#Sinji.quiet()
MeiJia.say "Let's meet some people first."
#Sinji.quiet()

Daniel.intro()
Sinji.intro()
Samantha.intro()
Serena.intro()
Oliver.intro()
Alex.intro()

Daniel.say title
Kate.say paragraph

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
MeiJia.say '根據老師出的pattern,兩個學生互相問答'
#MeiJia.quiet(2)
#Sinji.say '根據老師出的pattern,兩個學生互相問答'
#Sinji.quiet(2)

student = [Samantha,MeiJia,Sinji]
for t,idx in t1
  Daniel.say t
  Daniel.quiet(2)
  student[1].say s1[idx]
  Serena.say t2[idx]
  Serena.quiet(2)
  student[2].say s2[idx]


Daniel.say "That's all for today"
Daniel.quiet(1)

for each in [Serena,Daniel,Kate,Serena,Samantha,MeiJia,Sinji]
  each.say "bye bye",0.001