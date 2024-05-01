// 1. Print your favorite song details
print("Bohemian Rhapsody")
print("Artist: Queen")

// 2. Print lyrics to the song
print("Is this the real life?")
print("Is this just fantasy?")
// ... (add more lyrics)

// 3. Declare a constant for the number of friends on social media
let friends: Int = 500
print("Number of friends: \(friends)")

// 4. Update the friends constant
// friends = 300 // Uncommenting this line will result in a compilation error

// 5. Explanation for compilation error
print("Constants cannot be changed after they are set.")

// 6. Update age variable after birthday
var age: Int = 25
age += 1
print("Age: \(age)")

// 7. Create and update a double variable
var myDouble: Double = 1.1
print("Double value: \(myDouble)")
myDouble = 2.2
print("Double value: \(myDouble)")
myDouble = 3.3
print("Double value: \(myDouble)")
myDouble = 4.4
print("Double value: \(myDouble)")

// 8. Create and update a boolean variable
var isTrue: Bool = true
print("Boolean value: \(isTrue)")
isTrue = false
print("Boolean value: \(isTrue)")

// 9. Type annotation to allow assignment of a double to an integer
var myInt: Int = 0
var myDouble2: Double = 0.0
myInt = Int(myDouble2)

// 10. Format a large integer for readability
var largeNumber: Int = 1_000_000_000
print("Large Number: \(largeNumber)")

// 11-12. App Exercise - Step Goal
let goalSteps: Int = 10_000
print("Your step goal for the day is:")
print(goalSteps)

// 13-15. Update variable for schooling
var schooling: Int = 12
print("Years of Schooling: \(schooling)")
schooling += 1
print("Updated Years of Schooling: \(schooling)")

// 16-17. App Exercise - Step Count
var steps: Int = 0
print("Step count in the morning: \(steps)")
steps = 2000
print("Latest step count: \(steps)")
print("Good job! You're well on your way to your daily goal.")

// 18-21. Constants and variables for photo sharing app and fitness tracking app
let numberOfLikes: Int = 100
let numberOfComments: Int = 20
let yearCreated: Int = 2024
let monthCreated: Int = 1
let dayCreated: Int = 17

var userName: String = "John Doe"
var userAge: Int = 30
var stepsToday: Int = 5000
let goalStepsUser: Int = 8000
var averageHeartRate: Int = 75

// Print explanations for choices
print("Constants were chosen for metrics that should not change, like the post creation date.")
print("Variables were chosen for metrics that may change, like the user's steps and average heart rate.")
