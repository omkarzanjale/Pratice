
class Rectangle {
    var lenght = 12
    var breadth = 2
    var area: Double {
        get {
            return Double(lenght*breadth)
        }
        set {
            lenght = Int(newValue) / breadth
        }
    }
    deinit {
        print("Deinitialised")
    }
    
}

let obj = Rectangle()
print("Lenght initially :\(obj.lenght)")
print("Breadth : \(obj.breadth)")
print("area : \(obj.area)")
obj.breadth = 2
obj.area = 6
print("lenght after change: \(obj.lenght)")
print("Area : \(obj.area)")



