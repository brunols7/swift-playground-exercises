import Cocoa

let team = ["Santos", "Portuguesa", "São Paulo"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Santos" {
        return true
    } else if name2 == "Santos" {
        return false
    }
    
    return name1 < name2
}

let captainFirstTeam = team.sorted {
    
    if $0 == "Santos" {
        return true
    } else if $1 == "Santos" {
        return false
    }
    
    return $0 < $1
    
}

print(captainFirstTeam)

let reverseTeam = team.sorted{ $0 > $1 }

let tOnly = team.filter { $0.hasPrefix("Sa")}
print(tOnly)

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

func generateNumbers() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumbers)
print(newRolls)
