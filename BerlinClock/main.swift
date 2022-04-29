import Foundation

// 1: write hours first
// 2: then write the minutes
// 3: then write seconds

var BerlinClock = [[0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0]]

// 1 массив - секунды
// 2 массив - часы(5)
// 3 массив - часы(1)
// 4 массив - минуты(5)
// 5 массив - минуты(1)

print("please, write the exact hours: \n")
guard let Hours = readLine(),


        let FiveHours = Int(Hours), let SingleHours = Int(Hours) else {
    print("Invalid Input. Repeat input")
            exit(0)
}

if FiveHours >= 5 && FiveHours < 10 {
    BerlinClock[1][0] = 1
} else if FiveHours >= 10 && FiveHours < 15  {
    BerlinClock[1][0...1] = [1, 1]
} else if FiveHours >= 15 && FiveHours < 20 {
    BerlinClock[1][0...2] = [1, 1, 1]
} else if FiveHours >= 20 && FiveHours < 25 {
    BerlinClock[1][0...3] = [1, 1, 1, 1]
}

//guard let Hours = readLine(),
//
//
//        let SingleHours = Int(Hours) else {
//    print("Неверный ввод. Повторите попытку")
//            exit(0)
//}

if SingleHours == 1 || SingleHours == 6 || SingleHours == 11 || SingleHours == 16 || SingleHours == 21 {
    BerlinClock[2][0] = 1
} else if SingleHours == 2 || SingleHours == 7 || SingleHours == 12 || SingleHours == 17 || SingleHours == 22 {
    BerlinClock[2][0...1] = [1, 1]
} else if SingleHours == 3 || SingleHours == 8 || SingleHours == 13 || SingleHours == 18 || SingleHours == 23 {
    BerlinClock[2][0...2] = [1, 1, 1]
} else if SingleHours == 4 || SingleHours == 9 || SingleHours == 14 || SingleHours == 19 || SingleHours == 24 {
    BerlinClock[2][0...3] = [1, 1, 1, 1]
}

print("please, write the exact minute: \n")
guard let Minute = readLine(),


        let FiveMinute = Int(Minute), let SingleMinute = Int(Minute) else {
    print("Invalid Input. Repeat input")
            exit(0)
}

if FiveMinute >= 5 && FiveMinute <= 9 {
    BerlinClock[3][0] = 1
} else if FiveMinute >= 10 && FiveMinute <= 14 {
    BerlinClock[3][0...1] = [1, 1]
} else if FiveMinute >= 15 && FiveMinute <= 19 {
    BerlinClock[3][0...2] = [1, 1, 1]
} else if FiveMinute >= 20 && FiveMinute <= 24 {
    BerlinClock[3][0...3] = [1, 1, 1, 1]
} else if FiveMinute >= 25 && FiveMinute <= 29 {
    BerlinClock[3][0...4] = [1, 1, 1, 1, 1]
} else if FiveMinute >= 30 && FiveMinute <= 34 {
    BerlinClock[3][0...5] = [1, 1, 1, 1, 1, 1]
} else if FiveMinute >= 35 && FiveMinute <= 39 {
    BerlinClock[3][0...6] = [1, 1, 1, 1, 1, 1, 1]
} else if FiveMinute >= 40 && FiveMinute <= 44 {
    BerlinClock[3][0...7] = [1, 1, 1, 1, 1, 1, 1, 1]
} else if FiveMinute >= 45 && FiveMinute <= 49 {
    BerlinClock[3][0...8] = [1, 1, 1, 1, 1, 1, 1, 1, 1]
} else if FiveMinute >= 50 && FiveMinute <= 54 {
    BerlinClock[3][0...9] = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
} else if FiveMinute >= 55 && FiveMinute <= 59 {
    BerlinClock[3][0...10] = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
}


if SingleMinute == 1 || SingleMinute == 6 || SingleMinute == 11 || SingleMinute == 16 || SingleMinute == 21 || SingleMinute == 26 || SingleMinute == 31 || SingleMinute == 36 || SingleMinute == 41 || SingleMinute == 46 || SingleMinute == 51 || SingleMinute == 56{
    BerlinClock[4][0] = 1
} else if SingleMinute == 2 || SingleMinute == 7 || SingleMinute == 12 || SingleMinute == 17 || SingleMinute == 22 || SingleMinute == 27 || SingleMinute == 32 || SingleMinute == 37 || SingleMinute == 42 || SingleMinute == 47 || SingleMinute == 52 || SingleMinute == 57 {
    BerlinClock[4][0...1] = [1, 1]
} else if SingleMinute == 3 || SingleMinute == 8 || SingleMinute == 13 || SingleMinute == 18 || SingleMinute == 23 || SingleMinute == 28 || SingleMinute == 33 || SingleMinute == 38 || SingleMinute == 43 || SingleMinute == 48 || SingleMinute == 53 || SingleMinute == 58 {
    BerlinClock[4][0...2] = [1, 1, 1]
} else if SingleMinute == 4 || SingleMinute == 9 || SingleMinute == 14 || SingleMinute == 19 || SingleMinute == 24 || SingleMinute == 29 || SingleMinute == 34 || SingleMinute == 39 || SingleMinute == 44 || SingleMinute == 49 || SingleMinute == 54 || SingleMinute == 59 {
    BerlinClock[4][0...3] = [1, 1, 1, 1]
}

print("please, write the exact secconds: \n")
guard let Secconds = readLine(),


        let SeccondsLump = Int(Secconds) else {
    print("Invalid Input. Repeat input")
            exit(0)
}

var SeccondsLump = 3
if SeccondsLump % 2 == 0 {
    BerlinClock[0][0] = 1
} else  {
    BerlinClock[0][0] = 0
}

print("Belin Clock: \n")
print(BerlinClock)


