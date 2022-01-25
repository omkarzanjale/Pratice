import UIKit

//var arr = [2,6,8,5,4,2]
//arr.append(10)
//arr.remove(at: 2)
//for i in 0...arr.count-1 {
//    //print(arr[i])
//}

var a:Set<Int> = [2,3,4,5,6,2,5,7,6,8,8]

var dic: [String:String] = [:]
dic["1"] = "One"
dic["2"] = "Two"
dic["3"] = "Three"
dic.removeValue(forKey: "3")
let result = dic.updateValue("TwoUpdated", forKey: "2")
for i in dic.values {
    print(i)
}
//print(dic)
