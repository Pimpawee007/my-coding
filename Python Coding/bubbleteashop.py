print('Mhiyok Chong ยินดีต้อนรับ\nร้านนี้ทุกเมนูราคา 50 บาท หากเป็นสมาชิกจะได้รับส่วนลด 10%')
p=50
member=str(input('คุณเป็นสมาชิกไหม? : '))
menu=str(input('ต้องการสั่งเมนูอะไร : '))
topping=str(input('ต้องการใส่ topping เพิ่มไหม : '))
if topping=='ใช่':
    what=str(input('เลือกTopping :' ))
    if what=='ไข่มุก':
        price=p+5
    if what=='บุก':
        price=p+10
    if what=='ไข่มุกบราวชูการ์':
        price=p+10
else:
    price=p
if member=='ใช่':
    print(f'ราคาทั้งหมด : {round((price*(100-10))/100,2)} บาท จาก {round(price,2)} บาท')
else:
    print(f'ราคาทั้งหมด : {round(price,2)} บาท')