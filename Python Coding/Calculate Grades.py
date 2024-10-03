g=int(input())
if g>100:
  print('Error : Value must be less than or equal to 100.')
elif g<0:
  print('Error : Value must be greater than or equal to 0.')
elif g>=90:
  print('A')
elif g>=85<=89:
  print('B+')
elif g>=80<=84:
  print('B')
elif g>=75<=79:
  print('C+')
elif g>=70<=74:
  print('C')
elif g>=65<=69:
  print('D+')
elif g>=60<=64:
  print('D')
else:
  print('F')
