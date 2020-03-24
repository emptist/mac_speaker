Speaker = require './speaker'
lesson01 = require './lesson01'

# 清除之前還沒有播放完的內容,從新開始
Speaker.restart()


# --------------------------- prepare for materials --------------------------
{
  text:{title,paragraph}
  RD1
  IR
  RD2
  CQs
  AQT
  PDs1
  PDs2
  PDs3
  PDs4
  OC
} = lesson01





# ---------------------- set up roles and voices ---------------------------
{Alex,Daniel,Kate,Oliver,Samantha,Serena,MeiJia,Sinji} = Speaker

T = [
  Daniel
  Serena
  Kate
]

S = [
  MeiJia 
  Oliver
  #Alex
  #Sinji 
  #Samantha
]


T.map((each,idx) -> each.role = 'trainer')
S.map((each,idx) -> each.role = 'trainee')







# --------------------------- process the contents ----------------------------

S[0].say "自從這樣學新概念,媽媽再也不用擔心我的英語辣"
Speaker.quiet(4)

T[0].intro()
T[1].intro()
T[2].intro()
Speaker.quiet(1)
S[1].intro()
S[0].intro()
#S[2].intro()
#S[3].intro()
#S[4].intro()





# Read for the first time
T[1].say RD1.introduction
T[2].say title
T[2].say paragraph






# Intensive Reading
T[1].say IR.introduction
for question,idx in IR.teacher
  T[2].say question
  Speaker.quiet(0.1)
  S[idx % 2].say IR.student[idx] 

T[1].say RD2.introduction
T[2].say title
T[2].say paragraph




### vvvvvvvvvvvvvvvvvv 
# (moved down)
# Comprehension Questions
T[1].say CQs.introduction
for question,idx in CQs.teacher
  T[2].say question
  Speaker.quiet(3)
  S[0].say CQs.student[idx] 
###






# =========  Ask Questions on Text  ===========

T[1].say AQT.introduction
Speaker.quiet()
for t1Text,idx in AQT.example.teacher1
  T[2].say t1Text
  Speaker.quiet(0.5)
  T[1].say AQT.example.teacher2[idx]

for t, idx in AQT.teacher
  T[2].say t
  S[0].say AQT.student[idx]




# Oral Composition
T[1].say OC.introduction

for t,idx in OC.teacher
  T[2].say t
  Speaker.quiet(2)
  S[idx % 2].say OC.student[idx]





# (moved here since I think it might be too hard for the students)

# Comprehension Questions
T[1].say CQs.introduction
for question,idx in CQs.teacher
  T[2].say question
  Speaker.quiet(3)
  S[0].say CQs.student[idx] 






# Pattern Drills 1
T[1].say PDs1.introduction

for t,idx in PDs1.example.teacher1
  T[0].say t
  T[2].say PDs1.example.teacher2[idx]
  
Speaker.quiet(2)
T[2].say "Let's begin"
for t,idx in PDs1.teacher1
  T[2].say t
  Speaker.quiet(2)
  S[0].say PDs1.student1[idx]

  T[2].say PDs1.teacher2[idx]
  Speaker.quiet(2)
  S[0].say PDs1.student2[idx]

# Pattern Drills 2
T[1].say PDs2.introduction
T[0].say PDs2.example.teacher0
T[1].say PDs2.example.teacher1
T[2].say PDs2.example.teacher2

Speaker.quiet(2)
T[2].say "Let's begin"
for t,idx in PDs2.teacher
  T[2].say t
  Speaker.quiet(2)
  S[0].say PDs2.student1[idx]
  Speaker.quiet(2)
  S[1].say PDs2.student2[idx]

# Pattern Drills 3
T[1].say PDs3.introduction
T[0].say PDs3.example.teacher1
T[2].say PDs3.example.teacher2

Speaker.quiet(2)
T[2].say "Let's begin"
for t,idx in PDs3.teacher
  T[2].say t
  Speaker.quiet(2)
  S[0].say PDs3.student[idx]

  
# Pattern Drills 4
T[1].say PDs4.introduction

for t,idx in PDs4.example.teacher1
  T[0].say t
  T[1].say PDs4.example.teacher2[idx]


Speaker.quiet(2)
T[2].say "Let's begin"

for t,idx in PDs4.teacher1
  T[2].say t
  Speaker.quiet(2)
  S[0].say PDs4.student1[idx]
  T[1].say PDs4.teacher2[idx]
  Speaker.quiet(2)
  S[1].say PDs4.student2[idx]  


###^^^^^^^^^^^^^^^^^^
# (moved forward)
# Oral Composition
T[1].say OC.introduction

for t,idx in OC.teacher
  T[2].say t
  Speaker.quiet(2)
  S[1].say OC.student[idx]
###


T[2].say "That's all for today"

for each in T.concat(S)
  each.say "bye bye",0.001


#this dosn't work#Speaker.end()