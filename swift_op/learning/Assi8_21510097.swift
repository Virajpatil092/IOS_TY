// 1. Create a Spaceship class
class Spaceship {
    var name: String = ""
    var health = 0
    var position = 0
    
    // 3. Add moveLeft and moveRight methods
    func moveLeft() {
        position -= 1
        print("New position after moving left: \(position)")
    }
    
    func moveRight() {
        position += 1
        print("New position after moving right: \(position)")
    }
    
    // 4. Add wasHit method
    func wasHit() {
        health -= 5
        if health <= 0 {
            print("Sorry, your ship was hit one too many times. Do you want to play again?")
        }
        print("Health after being hit: \(health)")
    }
}

// 2. Create falcon instance
let falcon = Spaceship()
falcon.name = "Falcon"

// Move falcon
falcon.moveLeft()
falcon.moveLeft()
falcon.moveRight()

// Call wasHit on falcon
falcon.wasHit()

// 6. Create Fighter class
class Fighter: Spaceship {
    var weapon = ""
    var remainingFirePower = 5
    
    // 9. Add fire method
    func fire() {
        if remainingFirePower > 0 {
            remainingFirePower -= 1
            print("Fire! Remaining fire power: \(remainingFirePower)")
        } else {
            print("You have no more fire power.")
        }
    }
}

// 7. Create destroyer instance
let destroyer = Fighter()
destroyer.name = "Destroyer"
destroyer.weapon = "Laser"
destroyer.remainingFirePower = 10
print("Initial position of destroyer: \(destroyer.position)")
destroyer.moveRight()
print("Position after moving right: \(destroyer.position)")

// 8. Attempt to print weapon on falcon (will not work)
// print(falcon.weapon)

// 10. Define ShieldedShip class
class ShieldedShip: Fighter {
    var shieldStrength = 25
    
    // 12. Override wasHit method
    override func wasHit() {
        if shieldStrength > 0 {
            shieldStrength -= 5
        } else {
            super.wasHit()
        }
        print("Shield strength: \(shieldStrength), Health: \(health)")
    }
}

// 11. Create defender instance
let defender = ShieldedShip()
defender.name = "Defender"
defender.weapon = "Cannon"
defender.moveRight()
print("Position after moving right: \(defender.position)")
defender.fire()

// 13. Improve wasHit method in ShieldedShip
defender.wasHit()

// 14. Create subclasses with improved classes

// 15. Initialize Spaceship with an initializer
class Spaceship {
    let name: String
    var health: Int
    var position: Int
    
    init(name: String = "", health: Int = 0, position: Int = 0) {
        self.name = name
        self.health = health
        self.position = position
    }
}

// 16. Create falcon instance using initializer
let falcon = Spaceship(name: "Falcon")

// 17. Write initializer for Fighter
class Fighter: Spaceship {
    let weapon: String
    var remainingFirePower: Int
    
    init(name: String, health: Int, position: Int, weapon: String, remainingFirePower: Int) {
        self.weapon = weapon
        self.remainingFirePower = remainingFirePower
        super.init(name: name, health: health, position: position)
    }
}

// 18. Create destroyer instance using initializer
let destroyer = Fighter(name: "Destroyer", health: 100, position: 0, weapon: "Laser", remainingFirePower: 10)

// 19. Write initializer for ShieldedShip
class ShieldedShip: Fighter {
    var shieldStrength: Int
    
    init(name: String, health: Int, position: Int, weapon: String, remainingFirePower: Int, shieldStrength: Int) {
        self.shieldStrength = shieldStrength
        super.init(name: name, health: health, position: position, weapon: weapon, remainingFirePower: remainingFirePower)
    }
}

// 20. Create defender instance using initializer
let defender = ShieldedShip(name: "Defender", health: 100, position: 0, weapon: "Cannon", remainingFirePower: 10, shieldStrength: 25)

// 21. Create sameShip instance
let sameShip = falcon
print("Position of sameShip: \(sameShip.position), Position of falcon: \(falcon.position)")
sameShip.moveLeft()
print("Position of sameShip after moving left: \(sameShip.position), Position of falcon after moving left: \(falcon.position)")
// Both positions change because classes are reference types. If they were structs, they would be copied and modifications to one wouldn't affect the other.

// 22. Create registrationList
var registrationList: [String] = []

// 23. Add Sara to registrationList
registrationList.append("Sara")
print(registrationList)

// 24. Add four additional names using +=
registrationList += ["John", "Alice", "Bob", "Emily"]
print(registrationList)

// 25. Insert Charlie into registrationList
registrationList.insert("Charlie", at: 1)
print(registrationList)

// 26. Change sixth element to Rebecca
registrationList[5] = "Rebecca"
print(registrationList)

// 27. Remove last item and store it in deletedItem
let deletedItem = registrationList.removeLast()
print(deletedItem)

// 28. Create arrays for challenges
let walkingChallenges = ["Walk 3 miles a day", "Walk 10,000 steps a day"]
let runningChallenges = ["Run 5 times a week", "Run a half marathon"]

// 29. Create challenges array
let challenges: [[String]] = [walkingChallenges, runningChallenges]

// 30. Print first element of second challenge list
print(challenges[1][0])

// 31. Remove all challenges
challenges.removeAll()
print(challenges)

// 32. Create array for committed challenges
var committedChallenges: [String] = []

// 33. Check if array is empty and print appropriate message
if committedChallenges.isEmpty {
    print("Please commit to a challenge.")
} else if committedChallenges.count == 1 {
    print("The challenge you have chosen is \(committedChallenges[0]).")
} else {
    print("You have chosen multiple challenges.")
}

// 34. Create dictionary for number of days in a month
var daysInMonth: [String: Int] = ["January": 31, "February": 28, "March": 31]

// 35. Add April to the collection
daysInMonth["April"] = 30
print(daysInMonth)

// 36. Update days in February for leap year
daysInMonth.updateValue(29, forKey: "February")
print(daysInMonth)

// 37. Retrieve number of days in January using if-let
if let januaryDays = daysInMonth["January"] {
    print("January has \(januaryDays) days.")
}

// 38. Create dictionary from arrays
let shapesArray = ["Circle", "Square", "Triangle"]
let colorsArray = ["Red", "Blue", "Green"]
let dictionary = ["Shapes": shapesArray, "Colors": colorsArray]
print(dictionary)

// 39. Print last element of colorsArray using dictionary
if let colors = dictionary["Colors"] {
    print(colors.last!)
}

// 40. Create paces dictionary
var paces: [String: Double] = ["Easy": 10.0, "Medium": 8.0, "Fast": 6.0]

// 41. Add "Sprint" to paces dictionary
paces["Sprint"] = 4.0
print(paces)

// 42. Update values of "Medium" and "Fast"
paces["Medium"] = 7.5
paces["Fast"] = 5.8
print(paces)

// 43. Remove "Sprint" from paces dictionary
paces.removeValue(forKey: "Sprint")
print(paces)

// 44. Access pace value and print statement
if let pace = paces["Medium"] {
    print("Okay! I'll keep you at a \(pace) minute mile pace.")
}
