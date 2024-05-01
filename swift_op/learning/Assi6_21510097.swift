import Foundation

// Exercise - Create Functions

// 1. Introduction function
func introduceMyself() {
    print("Hello, I'm an AI assistant.")
}
introduceMyself()

// 2. Magic Eight Ball function
func magicEightBall() {
    let randomNum = Int.random(in: 0...4)
    switch randomNum {
    case 0:
        print("Yes")
    case 1:
        print("No")
    case 2:
        print("Maybe")
    case 3:
        print("Try again later")
    case 4:
        print("Cannot predict now")
    default:
        break
    }
}
magicEightBall()

// App Exercise - A Functioning App

// 3. Increment Steps function
func incrementSteps() {
    steps += 1
    print("Steps: \(steps)")
}
incrementSteps()

// 4. Progress Update function
func progressUpdate() {
    if steps < goal / 10 {
        print("You're off to a good start.")
    } else if steps < goal / 2 {
        print("You're almost halfway there!")
    } else if steps < goal * 9 / 10 {
        print("You're over halfway there!")
    } else if steps < goal {
        print("You're almost there!")
    } else {
        print("You beat your goal!")
    }
}
progressUpdate()

// Exercise - Parameters and Argument Labels

// 5. Introduction function with parameters
func introduction(name: String, age: Int, home: String) {
    print("\(name), \(age), is from \(home).")
}
introduction(name: "Mary", age: 32, home: "California")

// 6. Almost Addition function
func almostAddition(_ a: Int, b: Int) {
    let result = a + b - 2
    print("Result: \(result)")
}
almostAddition(3, b: 5)

// 7. Multiply function
func multiply(_ a: Double, by b: Double) {
    let result = a * b
    print("Result: \(result)")
}
multiply(2.5, by: 3.5)

// App Exercise - Progress Updates

// 8. Progress Update function with parameters
func progressUpdate(steps: Int, goal: Int) {
    // Same implementation as before
    if steps < goal / 10 {
        print("You're off to a good start.")
    } else if steps < goal / 2 {
        print("You're almost halfway there!")
    } else if steps < goal * 9 / 10 {
        print("You're over halfway there!")
    } else if steps < goal {
        print("You're almost there!")
    } else {
        print("You beat your goal!")
    }
}
progressUpdate(steps: 5000, goal: 10000)

// 9. Pacing function
func pacing(currentDistance: Double, totalDistance: Double, currentTime: Double, goalTime: Double) {
    let pace = (totalDistance / currentDistance) * currentTime
    if pace <= goalTime {
        print("Keep it up!")
    } else {
        print("You've got to push it just a bit harder!")
    }
}
pacing(currentDistance: 8, totalDistance: 10, currentTime: 45, goalTime: 60)

// Exercise - Return Values

// 10. Greeting function
func greeting(name: String) -> String {
    return "Hi, \(name)! How are you?"
}
let greet = greeting(name: "Dan")
print(greet)

// 11. Multiply and Add function
func multiplyAndAdd(_ a: Int, _ b: Int) -> Int {
    return a * b + 2
}
let result = multiplyAndAdd(3, 4)
print("Result: \(result)")

// App Exercise - Separating Functions

// 12. Calculate Pace function
func calculatePace(currentDistance: Double, totalDistance: Double, currentTime: Double) -> Double {
    return (totalDistance / currentDistance) * currentTime
}
let finishTime = calculatePace(currentDistance: 8, totalDistance: 10, currentTime: 45)
print("Finish time: \(finishTime)")

// 13. Pacing function using calculatePace
func pacing(currentDistance: Double, totalDistance: Double, currentTime: Double, goalTime: Double) -> String {
    let pace = calculatePace(currentDistance: currentDistance, totalDistance: totalDistance, currentTime: currentTime)
    if pace <= goalTime {
        return "Keep it up!"
    } else {
        return "You've got to push it just a bit harder!"
    }
}
let paceMessage = pacing(currentDistance: 8, totalDistance: 10, currentTime: 45, goalTime: 60)
print(paceMessage)
