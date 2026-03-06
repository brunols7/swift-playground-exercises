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

let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    
    if name1 == "Santos" {
        return true
    } else if name2 == "Santos" {
        return false
    }
    
    return name1 < name2
    
})

print(captainFirstTeam)
