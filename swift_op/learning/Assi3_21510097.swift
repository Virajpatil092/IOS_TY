// 1.
print(9 == 9)
print(9 != 9)
print(47 > 90)
print(47 < 90)
print(4 <= 4)
print(4 >= 5)
print((47 > 90) && (47 < 90))
print((47 > 90) || (47 < 90))
print(!true)

// 2.
var dollars = 0
if dollars == 0 {
    print("Sorry, kid. You're broke!")
}

// 3.
dollars = 10
if dollars == 0 {
    print("Sorry, kid. You're broke!")
} else {
    print("You've got some spending money!")
}

// 4.
dollars = 105
if dollars == 0 {
    print("Sorry, kid. You're broke!")
} else if dollars < 100 {
    print("You've got some spending money!")
} else {
    print("Looks to me like you're rich!")
}

// 5.
let steps = 6000
let stepGoal = 10000
if steps < stepGoal / 2 {
    print("You're almost halfway there!")
} else {
    print("You're over halfway there!")
}

// 6.
if steps < stepGoal / 10 {
    print("Way to get a good start today!")
} else if steps < stepGoal / 2 {
    print("You're almost halfway there!")
} else {
    print("You're over halfway there!")
}

// 7.
let hasFish = true
let hasPizza = false
let hasVegan = true
if (hasFish || hasPizza) && hasVegan {
    print("Let's go!")
} else {
    print("Sorry, we'll have to think of somewhere else.")
}

// 8.
let temp = 82
let isRaining = true
let isSunny = true
let isNiceWeather = !isRaining || (temp >= 82 && isSunny)
if isNiceWeather {
    print("I'm going for a walk!")
}

// 9.
let targetLowerBound = 120
let targetUpperBound = 150
let currentHR = 147
let isInTarget = currentHR >= targetLowerBound && currentHR <= targetUpperBound
let isBelowTarget = currentHR < targetLowerBound
let isAboveTarget = currentHR > targetUpperBound

if isInTarget {
    print("You're right on track!")
} else if isBelowTarget {
    print("You're doing great, but try to push it a bit!")
} else {
    print("You're on fire! Slow it down just a bit.")
}

// 10.
let leaguePosition = 1
switch leaguePosition {
case 1:
    print("Champions!")
case 2:
    print("Runners up")
case 3:
    print("Third place")
default:
    print("Bad season!")
}

// 11.
switch leaguePosition {
case 1...3:
    print("Medal winner")
default:
    print("No medal awarded.")
}

// 12.
switch currentHR {
case 100...120:
    print("You are in the Very Light zone. Activity in this zone helps with recovery.")
case 121...140:
    print("You are in the Light zone. Activity in this zone helps improve basic endurance and fat burning.")
case 141...160:
    print("You are in the Moderate zone. Activity in this zone helps improve aerobic fitness.")
case 161...180:
    print("You are in the Hard zone. Activity in this zone increases maximum performance capacity for shorter sessions.")
case 181...200:
    print("You are in the Maximum zone. Activity in this zone helps fit athletes develop speed.")
default:
    print("Warning: Slow down!")
}

// 13.
if currentHR > 200 {
    print("Warning: Slow down!")
}

// 14.
let number1 = 14
let number2 = 25
let largest = (number1 > number2) ? number1 : number2

// 15.
print((steps < stepGoal / 2) ? "Almost halfway!" : "Over halfway!")