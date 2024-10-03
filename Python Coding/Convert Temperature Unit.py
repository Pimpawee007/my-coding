def fromC(a):
  print(f'จาก {a} °C แปลงได้เป็น')
  ans=(a*(9/5))+32
  print(f'    {round(ans,2)} °F')
  ans=a+273.15
  print(f'    {round(ans,2)} K')

def fromF(a):
  print(f'จาก {a} °F แปลงได้เป็น')
  ans=(a-32)*(5/9)
  print(f'    {round(ans,2)} °C')
  ans=(a+459.67)*(5/9)
  print(f'    {round(ans,2)} K')

def fromK(a):
  print(f'จาก {a} K แปลงได้เป็น')
  ans=a-273.15
  print(f'    {round(ans,2)} °C')
  ans=(a*(9/5))-459.67
  print(f'    {round(ans,2)} °F')

print('เปลี่ยนหน่วยอุณหภูมิ ด้วยการเรียกใช้ function!')
while True:
  command = input('\nเลือก function (C, F, K) : ')
  if command in ['C','F','K']:
    a=float(input('อุณหภูมิ : '))
    if command=='C':
      ans = fromC(a)
    elif command == 'F':
      ans = fromF(a)
    else:
      ans = fromK(a)
  elif command == 'Stop':
    print('Ok, Stop the program.')
    break
  else:
    print('Please enter only C, F and K')
    continue
