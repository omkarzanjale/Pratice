//
//  StudentViewModel.swift
//  HigherOrderFuncDemo
//
//  Created by Admin on 21/01/22.
//

import Foundation

class StudentViewModel {
    var data = [Student]()
    
    init() {
        config()
    }
    
    private func config() {
        let s3 = Student(rno: 3, name: "3rd")
        let s1 = Student(rno: 1, name: "1st")
        data.append(s3)
        data.append(s1)
    }
    
}
