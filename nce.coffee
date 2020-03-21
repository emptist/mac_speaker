Speaker = require './speaker'
lesson01 = require './lesson01'

{Alex,Daniel,Kate,Oliver,Samantha,Serena,MeiJia,Sinji} = Speaker
{
  title,paragraph,
  comprehension:{asks,answers}
  patternDrills:{teacher, s1, s2}
} = lesson01

Daniel.say title
Kate.say paragraph

Daniel.quiet(5) # waiting for seconds since begin

MeiJia.say '請回答以下問題'
MeiJia.quiet(1)
Sinji.say '請回答以下問題'
Sinji.quiet()

for ask,idx in asks
  Daniel.say ask
  Samantha.quiet(2)
  Samantha.say answers[idx] 

Daniel.quiet(2) # waiting for seconds since begin
MeiJia.say '根據老師出的pattern,兩個學生互相問答'
MeiJia.quiet(2)
Sinji.say '根據老師出的pattern,兩個學生互相問答'
Sinji.quiet(2)


for t,idx in teacher
  Daniel.say t
  Serena.quiet(2)
  Serena.say s1[idx]
  Serena.quiet(2)
  Alex.say s2[idx]


Daniel.say "That's all for today"
Daniel.quiet(1)

for each in [Serena,Daniel,Kate,Serena,Samantha,MeiJia,Sinji]
  each.say "bye bye",0.001