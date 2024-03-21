import os
def show():
    battery1 = None
    battery2 = None
    battery = os.system('acpi -b > battery_temp.txt')
    with open('battery_temp.txt', 'r') as file:
        battery = []
        for bat in file:
            battery.append(bat)
    for i in battery[0]:
        if i == '%':
            inx = battery[0].index(i)
            battery1 = battery[0][inx-2]+battery[0][inx-1]
    for i in battery[1]:
        if i == '%':
            inx = battery[1].index(i)
            battery2 = battery[1][inx-2]+battery[1][inx-1]
    os.remove('battery_temp.txt')
    print(f'{(int(battery1.strip())+int(battery2.strip()))//2}%')

show()
