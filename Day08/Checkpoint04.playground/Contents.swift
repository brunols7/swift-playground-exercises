import Cocoa

enum SquareErrors: Error {
    case outOfBounds, noRoot
}

func squareRoot(_ number: Int) throws -> Int {
    if number < 1 || number > 10_000 {
        throw SquareErrors.outOfBounds
    }
    
    for i in 1...100 {
        if i * i == number {
            return i
        }
    }
    
    throw SquareErrors.noRoot
}

do {
    let root = try squareRoot(64)
    print("Root number: \(root)")
} catch SquareErrors.outOfBounds {
    print("Out of bounds.")
} catch SquareErrors.noRoot {
    print("No root.")
}
