import Cocoa

var carBrands = [String]()
carBrands.append("BMW")
carBrands.append("Mercedes")
carBrands.append("Porsche")
carBrands.append("Lamborghini")
carBrands.append("BMW")
carBrands.append("Porsche")

print("I listed \(carBrands.count) car brands")
var setCarBrands = Set(carBrands)
print("But there are only \(setCarBrands.count) unique brands")
