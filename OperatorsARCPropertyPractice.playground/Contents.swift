//MARK: Strored/Computed Property
class Rectangle1 {
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
print("Strored/Computed Property")
let obj = Rectangle1()
print("Lenght initially :\(obj.lenght)")
print("Breadth : \(obj.breadth)")
print("area : \(obj.area)")
obj.breadth = 2
obj.area = 6
print("lenght after change: \(obj.lenght)")
print("Area : \(obj.area)")
print()

//MARK: Operators
let a = 20
let b = 10
print("A: \(a)")
print("B: \(b)")
let range = b...a
print("Range from B to A :")
for i in range {
    print(i)
}
print()
//MARK: Arthmatic Operator
func arithmeticOperator() {
    var result = a+b
    print("Arthmatic Operator")
    print("A + B: \(result)")
    result = a-b
    print("A - B: \(result)")
    result = a*b
    print("A * B: \(result)")
    result = a/b
    print("A / B: \(result)")
    result = a%b
    print("A % B: \(result)")
}
arithmeticOperator()
print()

func unaryOperator() {
    var result = +a
    print("Unary Operator")
    print("A with unary +: \(result)")
    result = -b
    print("B with unary -: \(result)")
}
unaryOperator()
print()

func compoundAssignmentOperator() {
    print("Compound Assignment Operator")
    var result = a
    result += 2
    print("Value of A inc by 2: \(result)")
}
compoundAssignmentOperator()
print()

func comparisonOperator() {
    print("Comparison Operator")
    if a>b {
        print("A is greater than B")
    }
    if a == b {
        print("A is Equal B")
    }
    if a<=b {
        print("A is less equal to B")
    }
    if a>=b {
        print("A is greater equal to B")
    }
    if a != b {
        print("A is not equal to B")
    }
}
comparisonOperator()
print()

func ternaryOperator() {
    print("Ternary Operator")
    let age = 2
    print("Age: \(age)")
    print(age >= 18 ? "Can Vote" : "Cannot Vote" )
}
ternaryOperator()
print()

func logicalOperator() {
    let is18Plus = true
    let haveVoterId = false
    print("Logical Opertors")
    print("is 18 plus: \(is18Plus)")
    print("have Voter Id: \(haveVoterId)")
    if is18Plus && haveVoterId {
        print("Eligible for voting")
    } else {
        print("Not eligible for voting")
    }

    if is18Plus || haveVoterId {
        print("18+ Or have voter id")
    }
}
logicalOperator()
print()


//MARK: ARC Reference Cycle
class Shape {
    
    var rectangleObj : Rectangle?
    init() {
        print("Class Shape is initialised.")
    }
    
    deinit {
        print("Class Shape is deinitialised.")
    }
}

class Rectangle {
    
    unowned var shapeObj: Shape
    init(shapeObj: Shape) {
        self.shapeObj = shapeObj
        print("Class Rectangle is initialised.")
    }
    
    deinit {
        print("Class Rectangle is deinitialised.")
    }
}


func checkArc() {
    let shapeobj = Shape()
    let rectobj = Rectangle(shapeObj: shapeobj)
    shapeobj.rectangleObj = rectobj
}
checkArc()

