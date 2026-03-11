import Cocoa

let luckyNumber = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

luckyNumber.filter{ $0.isMultiple(of: 2) == false }.sorted{ $0 < $1 }.map{ print("\($0) is a lucky number") }
