a=float(input())
b=float(input())
c=float(input())
if a>b>c:
  print(f'MAX : ' +str(a))
elif a>c>b:
  print(f'MAX : ' +str(a))
elif b>=a>c:
  print(f'MAX : ' +str(b))
elif b>c>a:
  print(f'MAX : ' +str(b))
elif c>a>b:
  print(f'MAX : ' +str(c))
else:
  print(f'MAX : ' +str(c))
