print('วิธีการใช้งาน : พิมพ์เลขตัวแรก Enter พิมพ์เครื่องหมาย Enter และพิมพ์เลขตัวที่สอง Enter')
f=float(input())
m=str(input())
s=float(input())
if m=="+":
    ans=f+s
    print(f"จากสมการ {f} + {s}")
    print("ผลลัพธ์ : "+str('%.2f' %(ans)))
elif m=="-":
    ans=f-s
    print(f"จากสมการ {f} - {s}")
    print("ผลลัพธ์ : "+str('%.2f' %(ans)))
elif m=="*":
    ans=f*s
    print(f"จากสมการ {f} x {s}")
    print("ผลลัพธ์ : "+str('%.2f' %(ans)))
else :
    ans=f/s
    print(f"จากสมการ {f} ÷ {s}")
    print("ผลลัพธ์ : "+str('%.2f' %(ans)))
