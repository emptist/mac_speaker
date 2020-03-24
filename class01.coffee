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


S[1].say "Let's meet some people first."

T[0].intro()
T[1].intro()
T[2].intro()
T[0].quiet(1)
S[1].intro()
S[0].intro()
S[2].intro()
S[3].intro()
S[4].intro()



# Read for the first time
T[0].say RD1.introduction
T[0].say title
T[1].say paragraph


# Comprehension Questions
T[0].say CQs.introduction
for question,idx in CQs.teacher
  T[0].say question
  S[4].quiet(2)
  S[0].say CQs.student[idx] 



# Pattern Drills
T[1].say PDs.introduction

for t,idx in PDs.teacher1
  T[1].say t
  T[1].quiet(2)

  S[0].say PDs.student1[idx]
  T[2].say PDs.teacher2[idx]
  
  T[1].quiet(2)
  S[0].say PDs.student2[idx]


# oral composition
T[1].say OC.introduction

for t,idx in OC.teacher
  T[1].say t
  T[1].quiet(2)
  S[1].say OC.student[idx]



T[0].say "That's all for today"

for each in T.concat(S)
  each.say "bye bye",0.001

