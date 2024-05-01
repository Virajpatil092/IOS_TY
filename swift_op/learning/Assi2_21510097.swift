// 1. Declare two variables with decimal values
var firstDecimal: Double = 5.5
var secondDecimal: Float = 3.14

// 2. Declare a boolean variable and try to assign it to firstDecimal
var trueOrFalse: Bool = true
// Uncommenting the line below will result in a compile error
// firstDecimal = trueOrFalse
print("Cannot assign a boolean value to a variable of type Double.")

// 3. Declare a string variable and try to assign it to firstDecimal
var stringValue: String = "Hello"
// Uncommenting the line below will result in a compile error
// firstDecimal = stringValue
print("Cannot assign a string value to a variable of type Double.")

// 4. Declare a variable with a whole number value and try to assign it to firstDecimal
var wholeNumberValue: Int = 10
// Uncommenting the line below will result in a compile error
// firstDecimal = wholeNumberValue
print("Cannot assign an integer value to a variable of type Double.")

// 5. Declare a boolean variable for fitness information
var hasMetStepGoal: Bool = false

// 6. Format the constant and variable for step count in a more readable way
let goalNumberOfSteps: Int = 10000
var currentStepCount: Int = 5348

// 7. Declare a String variable without giving it a value
var name: String
// Uncommenting the line below will result in a compile error
// print(name)
print("Cannot print an uninitialized variable.")

// 8. Declare a variable for distance traveled and set it to 0 without an explicit type
var distanceTraveled = 0.0

// 9. Assign a value of 54.3 to distanceTraveled
distanceTraveled = 54.3

// 10. Declare a variable for percent completed without explicitly assigning a type
var percentCompleted = 0.0

// 11. Assign 34.67 to percentCompleted
percentCompleted = 34.67
