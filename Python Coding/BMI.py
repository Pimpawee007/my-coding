def BMI():
    print("What is your BMI? | อยากรู้ไหม BMI ของคุณคือเท่าไหร่???")
    print("==================================================")
    while True:
        h=float(input('ความสูง (เซนติเมตร) : '))
        if h==0:
            print('Ok, Stop the program.')
            break
        w=float(input('น้ำหนัก (กิโลกรัม) : '))
        if w==0:
          print('Ok, Stop the program.')
          break
        ans=float(w)/((float(h)/100)**2)
        if ans<18.5:
            print(f'ค่า BMI ของคุณคือ {round(ans,2)} | อยู่ในเกณฑ์ - น้ำหนักต่ำกว่าเกณฑ์')
        elif ans<=22.9:
            print(f'ค่า BMI ของคุณคือ {round(ans,2)} | อยู่ในเกณฑ์ - สมส่วน')
        elif ans<=24.9:
            print(f'ค่า BMI ของคุณคือ {round(ans,2)} | อยู่ในเกณฑ์ - น้ำหนักเกิน')
        elif ans<=29.9:
            print(f'ค่า BMI ของคุณคือ {round(ans,2)} | อยู่ในเกณฑ์ - อ้วน')
        else:
            print(f'ค่า BMI ของคุณคือ {round(ans,2)} | อยู่ในเกณฑ์ - อ้วนมาก')
        print('****************************************************')

BMI()
