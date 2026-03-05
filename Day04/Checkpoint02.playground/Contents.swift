import Cocoa

var carBrands = [String]()
carBrands.append("BMW")
carBrands.append("Mercedes")
carBrands.append("Porsche")
carBrands.append("Lamborghini")
carBrands.append("BMW")
carBrands.append("Porsche")

print("I have \(carBrands.count) cars in my garage")
var setCarBrands = Set(carBrands)
print("But I have only \(setCarBrands.count) brands")
