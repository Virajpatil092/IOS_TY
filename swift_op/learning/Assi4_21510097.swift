// Exercise - String Basics

// 1
let name = "Viraj Patil"

// 2
let favoriteQuote = "My favorite quote is ."

// 3
let myFavoriteQuote = "The only way to do great work is to love what you do."
let favoriteQuoteWithQuote = "\(favoriteQuote) \"\(myFavoriteQuote)\""
print(favoriteQuoteWithQuote)

// 4
let emptyString = ""
if emptyString.isEmpty {
    print("There's nothing here")
} else {
    print("It's not as empty as I thought")
}

// Exercise - Concatenation and Interpolation

// 5
let city = "Portland"
let state = "Oregon"
let home = city + ", " + state
print(home)

// 6
var introduction = "I live in "
introduction += home
print(introduction)

// 7
let myName = "John"
let age = 30
print("My name is \(myName) and after my next birthday I will be \(age + 1) years old.")

// App Exercise - Notifications

// 8
let firstName = "John"
let lastName = "Doe"
let fullName = firstName + " " + lastName
print(fullName)

// Placeholder variables
let previousBest = 1000
let newBest = 1200

// 9
let congratulations = "Congratulations, \(fullName)! You beat your previous daily high score of \(previousBest) steps by walking \(newBest) steps yesterday!"
print(congratulations)

// Exercise - String Equality and Comparison

// 10
let nameInCaps = "John Doe"
let nameLowercase = "john doe"
if nameInCaps == nameLowercase {
    print("The two are same")
} else {
    print("not same")
}

// 11
if nameInCaps.lowercased() == nameLowercase.lowercased() {
    print("\(nameInCaps.lowercased()) and \(nameLowercase.lowercased()) are the same.")
} else {
    print("\(nameInCaps.lowercased()) and \(nameLowercase.lowercased()) are not the same.")
}

// 13
let junior = "Om Kulkarni Jr."
if junior.hasSuffix("Jr.") {
    print("We found a second generation name!")
}

// 14
import Foundation
let textToSearchThrough = "To be, or not to be--that is the question"
let textToSearchFor = "to be, or not to be"
if textToSearchThrough.lowercased().contains(textToSearchFor.lowercased()) {
    print("I found it!")
}

// 15
let nameLength = name.count
print("Number of characters in my name: \(nameLength)")

// App Exercise - Password Entry and User Search

// 16
let storedUserName = "TheFittest11"
let storedPassword = "a8H1LuK91"
let enteredUserName = "thefittest11"
let enteredPassword: String = "a8H1Luk9"

if storedUserName.lowercased() == enteredUserName.lowercased() && storedPassword == enteredPassword {
    print("You are now logged in!")
} else {
    print("Please check your user name and password and try again.")
}

// 17
let userName = "StepChallenger"
let searchName = "step"
if userName.lowercased().contains(searchName.lowercased()) {
    print("User found!")
} else {
    print("User not found.")
}
