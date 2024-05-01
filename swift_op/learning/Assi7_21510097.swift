// Exercise - Structs, Instances, and Default Values

// 1.
struct GPS {
    var latitude: Double = 0.0
    var longitude: Double = 0.0
}

// 2.
var somePlace = GPS()
print("Latitude: \(somePlace.latitude), Longitude: \(somePlace.longitude)")

// 3.
somePlace.latitude = 51.514004
somePlace.longitude = 0.125226
print("Updated Latitude: \(somePlace.latitude), Updated Longitude: \(somePlace.longitude)")

// 4.
struct Book {
    var title: String = ""
    var author: String = ""
    var pages: Int = 0
    var price: Double = 0.0
}

// 5.
var favoriteBook = Book()
favoriteBook.title = "The Great Gatsby"
favoriteBook.author = "F. Scott Fitzgerald"
favoriteBook.pages = 180
favoriteBook.price = 10.99
print("Title: \(favoriteBook.title), Author: \(favoriteBook.author), Pages: \(favoriteBook.pages), Price: \(favoriteBook.price)")

// 6.
struct RunningWorkout {
    var distance: Double = 0.0
    var time: Double = 0.0
    var elevation: Double = 0.0
}

// 7.
var firstRun = RunningWorkout()
print("Distance: \(firstRun.distance), Time: \(firstRun.time), Elevation: \(firstRun.elevation)")

// 9.
struct Laptop {
    var screenSize: Int = 13
    var repairCount: Int = 0
    var yearPurchased: Int
    
    init(yearPurchased: Int) {
        self.yearPurchased = yearPurchased
    }
}

let laptop1 = Laptop(yearPurchased: 2022)
let laptop2 = Laptop(yearPurchased: 2023)

// 14.
struct Height {
    var heightInInches: Double
    var heightInCentimeters: Double
    
    init(heightInInches: Double) {
        self.heightInInches = heightInInches
        self.heightInCentimeters = heightInInches * 2.54
    }
    
    init(heightInCentimeters: Double) {
        self.heightInCentimeters = heightInCentimeters
        self.heightInInches = heightInCentimeters / 2.54
    }
}

var someonesHeight = Height(heightInInches: 65)
print("Height in centimeters: \(someonesHeight.heightInCentimeters)")

var myHeight = Height(heightInCentimeters: 180)
print("My height in inches: \(myHeight.heightInInches), My height in centimeters: \(myHeight.heightInCentimeters)")

// Users and Distance

// 16.
struct User {
    var name: String
    var age: Int
    var height: Double
    var weight: Double
    var activityLevel: Int
}

// 17.
let myself = User(name: "John", age: 30, height: 180.0, weight: 75.0, activityLevel: 8)
print("Name: \(myself.name), Age: \(myself.age), Height: \(myself.height), Weight: \(myself.weight), Activity Level: \(myself.activityLevel)")

// 18.
struct Distance {
    var meters: Double
    var feet: Double
    
    init(meters: Double) {
        self.meters = meters
        self.feet = meters * 3.28084
    }
    
    init(feet: Double) {
        self.feet = feet
        self.meters = feet / 3.28084
    }
}

var mile = Distance(meters: 1600)
print("Feet: \(mile.feet)")

var anotherDistance = Distance(feet: 3000)
print("Meters: \(anotherDistance.meters), Feet: \(anotherDistance.feet)")

// Methods

// 19.
struct BookDescription {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    
    func description() {
        print("Title: \(title), Author: \(author), Pages: \(pages), Price: \(price)")
    }
}

var myBook = BookDescription(title: "1984", author: "George Orwell", pages: 328, price: 9.99)
myBook.description()

// 20.
struct WorkoutStats {
    var distance: Double
    var time: Double
    var elevation: Double
    
    func postWorkoutStats() {
        print("Distance: \(distance), Time: \(time), Elevation: \(elevation)")
    }
}

var myRun = WorkoutStats(distance: 2396, time: 15.3, elevation: 94)
myRun.postWorkoutStats()

// 21.
struct StepTracker {
    var steps: Int
    var goal: Int
    
    mutating func takeStep() {
        steps += 1
    }
}

var todaySteps = StepTracker(steps: 9999, goal: 10000)
print("Steps before: \(todaySteps.steps)")
todaySteps.takeStep()
print("Steps after: \(todaySteps.steps)")

// Computed Properties and Property Observers

// 22.
struct Rectangle {
    var width: Int
    var height: Int
    
    var area: Int {
        return width * height
    }
}

var myRectangle = Rectangle(width: 5, height: 10)
print("Area: \(myRectangle.area)")

// 23.
struct AdjustedHeight {
    var heightInInches: Double {
        didSet {
            heightInCentimeters = heightInInches * 2.54
        }
    }
    var heightInCentimeters: Double {
        didSet {
            heightInInches = heightInCentimeters / 2.54
        }
    }
    
    init(heightInInches: Double) {
        self.heightInInches = heightInInches
        self.heightInCentimeters = heightInInches * 2.54
    }
    
    init(heightInCentimeters: Double) {
        self.heightInCentimeters = heightInCentimeters
        self.heightInInches = heightInCentimeters / 2.54
    }
}

var heightExample = AdjustedHeight(heightInInches: 65)
print("Height in centimeters: \(heightExample.heightInCentimeters)")

heightExample.heightInCentimeters = 180
print("Height in inches: \(heightExample.heightInInches), Height in centimeters: \(heightExample.heightInCentimeters)")

// 24.
struct RunningCalculation {
    var distance: Double
    var time: Double
    var elevation: Double
    
    static let meterInFeet = 3.28084
    static let mileInMeters = 1600.0
    
    static func mileTimeFor(distance: Double, time: Double) -> Double {
        return time / (distance / mileInMeters)
    }
}

var myRun2 = RunningCalculation(distance: 2400, time: 15.3, elevation: 94)
print("Average Mile Time: \(RunningCalculation.mileTimeFor(distance: myRun2.distance, time: myRun2.time)) seconds")

// Print unit conversions
print("Meter in Feet: \(RunningCalculation.meterInFeet)")
print("Mile in Meters: \(RunningCalculation.mileInMeters)")
