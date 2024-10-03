def pyramid():
  n=int(input())
  for i in range(n):
    print(' ' * (n - i - 1) + '*' * (i * 2 + 1))

def pyramid_2():
  n=int(input())
  p=input('Choose style : ')
  for i in range(n):
        print(' ' * (5 - i - 1) + (p) * (i * 2 + 1))

pyramid()
pyramid_2()
