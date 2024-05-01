// Exercise - Arrays

// 1.
var registrationList = [String]()

// 2.
registrationList.append("Sara")
print(registrationList)

// 3.
registrationList += ["John", "Alice", "Bob", "Emily"]
print(registrationList)

// 4.
registrationList.insert("Charlie", at: 1)
print(registrationList)

// 5.
registrationList[5] = "Rebecca"
print(registrationList)

// 6.
let deletedItem = registrationList.removeLast()
print(deletedItem)

// Activity Challenge

// 7.
let walkingChallenges = ["Walk 3 miles a day", "Walk 10,000 steps daily"]
let runningChallenges = ["Run 5 times a week", "Run a half marathon"]
var challenges = [walkingChallenges, runningChallenges]

// 8.
print(challenges[1][0])

// 9.
challenges.removeAll()
print(challenges)

// 10.
var userChallenges: [String] = ["Run 3 miles a day", "Walk 10,000 steps daily"]
if userChallenges.isEmpty {
    print("Please commit to a challenge.")
} else if userChallenges.count == 1 {
    print("The challenge you have chosen is \(userChallenges[0])")
} else {
    print("You have chosen multiple challenges.")
}

// Exercise - Dictionaries

// 12.
var daysInMonth = ["January": 31, "February": 28, "March": 31]
print(daysInMonth)

// 13.
daysInMonth["April"] = 30
print(daysInMonth)

// 14.
daysInMonth.updateValue(29, forKey: "February")
print(daysInMonth)

// 15.
if let januaryDays = daysInMonth["January"] {
    print("January has \(januaryDays) days")
}

// 16.
let shapesArray = ["Circle", "Square", "Triangle"]
let colorsArray = ["Red", "Blue", "Green"]
let dictionary = ["Shapes": shapesArray, "Colors": colorsArray]
print(dictionary)

// 17.
if let lastColor = dictionary["Colors"]?.last {
    print(lastColor)
}

// Pacing

// 18.
var paces: [String: Double] = ["Easy": 10.0, "Medium": 8.0, "Fast": 6.0]
print(paces)

// 19.
paces["Sprint"] = 4.0
print(paces)

// 20.
paces["Medium"] = 7.5
paces["Fast"] = 5.8
print(paces)

// 21.
paces.removeValue(forKey: "Sprint")
print(paces)

// 22.
if let mediumPace = paces["Medium"] {
    print("Okay! I'll keep you at a \(mediumPace) minute/mile pace.")
}

// Exercise - For-In Loops

// 23.
for i in 1...100 {
    print(i)
}

// 24.
let alphabet = "abcdefghijklmnopqrstuvwxyz"
for (index, letter) in alphabet.enumerated() {
    print("\(index + 1): \(letter)")
}

// 25.
let statesAndCapitals = ["California": "Sacramento", "New York": "Albany", "Texas": "Austin"]
for (state, capital) in statesAndCapitals {
    print("The capital of \(state) is \(capital)")
}

// Movements

// 26.
let movements: [String] = ["Walking", "Running", "Swimming", "Cycling", "Skiing", "Climbing"]
for movement in movements {
    print(movement)
}

// 27.
var movementHeartRates: [String: Int] = ["Walking": 85, "Running": 120, "Swimming": 130, "Cycling": 128, "Skiing": 114, "Climbing": 129]
for (movement, heartRate) in movementHeartRates {
    print("Average heart rate during \(movement): \(heartRate)")
}

// Exercise - While Loops

// 28.
import Foundation

var diceRoll = 0
while diceRoll != 1 {
    diceRoll = Int.random(in: 1...6)
    print(diceRoll)
}

// Running Cadence

// 29.
var cadence = 180 // Assuming a default cadence
var stepCount = 0
while stepCount < 10 {
    print("Take a step")
    stepCount += 1
    Thread.sleep(forTimeInterval: 60/Double(cadence))
}

// 30.
var stepCount2 = 0
repeat {
    print("Take a step")
    stepCount2 += 1
    Thread.sleep(forTimeInterval: 60/Double(cadence))
} while stepCount2 < 10

// Exercise - Control Transfer Statements

// 31.
for (index, letter) in alphabet.enumerated() {
    if index.isMultiple(of: 2) {
        print(letter)
    }
}

// 32.
let statesAndCapitals2 = ["California": "Sacramento", "New York": "Albany", "Texas": "Austin"]
for (state, capital) in statesAndCapitals2 {
    print("The capital of \(state) is \(capital)")
    if state == "New York" {
        print("I found my home!")
        break
    }
}

// Finding Movements

// 33.
let lowHR = 100
let highHR = 120
for (movement, heartRate) in movementHeartRates {
    if heartRate >= lowHR && heartRate <= highHR {
        print("You could go \(movement)")
    }
}
