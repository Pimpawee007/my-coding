while True:
    m = input('Have you a member? (Y or N) : ')
    if m == "Stop":
        print('Your welcome!')
        break

    if m != 'Y' and m != 'N':
        print('Please enter only "Y or N"\n--------------------------')
        continue

    s = input('Choose size (M or L) : ')
    if s == "Stop":
        print('Your welcome!')
        break
    elif s == 'M':
        price = 50
    elif s == 'L':
        price = 60
    else:
        print('Please enter only "M or L"\n--------------------------')
        continue

    t = input('Topping (Y or N) : ')
    if t == "Stop":
        print('Your welcome!')
        break
    elif t == 'N':
        price -= 10
    elif t != 'Y':
        print('Please enter only "Y or N"\n--------------------------')
        continue

    if m == 'Y':
        total = (price * 90) / 100
    else:
        total = price

    print(f'Total price : {total} THB\n====== Thanks! ======')
