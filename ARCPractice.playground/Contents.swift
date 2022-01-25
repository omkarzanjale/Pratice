import UIKit

class School {
    var address: String
    var phoneNumber: String?
    var studentObj: Student?
    init(address: String) {
        self.address = address
        print("School initialised.")
    }
    
    func printAddress() {
        print("School Address : \(address)")
    }
    
    deinit{
        print("School deinitialsed.")
    }
}

class Student {
    var address: String?
    unowned var schoolObj: School?
    init() {
        print("Student initialised.")
    }
    
    func printAddress() {
        print("Student Address : \(address ?? "")")
    }
    
    deinit{
        print("Student deinitialsed.")
    }
}


func checkARC() {
    let schoolObj = School(address: "School address")
    schoolObj.printAddress()
    let studentObj = Student()
    schoolObj.studentObj = studentObj
    studentObj.schoolObj = schoolObj
}
checkARC()

