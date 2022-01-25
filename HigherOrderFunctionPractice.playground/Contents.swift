import UIKit

//map
let arr = [2,4,1,6,3,7,5]
func map() {
    let resultArr = arr.map{ $0 * 2 }
    print("Usng Map ", resultArr)
}
map()

func sorted() {
    let resultArr = arr.sorted{ $0<$1 }
    print("Using Sorted ",resultArr)
}

sorted()

func reduce() {
    let resultArr = arr.reduce(0, {$0+$1})
    print("Using Reduce",resultArr)
}
reduce()

func filter() {
    let resultArr = arr.filter{ $0 % 2 != 0 }
    print("Using filter ",resultArr)
}
filter()

func flatMap() {
    let arr1 = [[1,4,3],[43,6]]
    let resultArr = arr1.flatMap{$0}.sorted{$0<$1}
    print("Using flateMap ",resultArr)
    let rre = [4,nil,3]
    let rr = rre.flatMap{$0}
    print(rr)
    
}
flatMap()

extension Array {
    func customMap<T>(transform: (Element)->T)->[T] {
        var result = [T]()
        forEach{ result.append(transform($0))}
        return result
    }
}
