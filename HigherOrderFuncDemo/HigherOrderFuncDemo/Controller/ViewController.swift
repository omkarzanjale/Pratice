//
//  ViewController.swift
//  HigherOrderFuncDemo
//
//  Created by Admin on 21/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    var studentViewModel: StudentViewModel?
    
    @IBOutlet weak var studentList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.studentViewModel = StudentViewModel()
    }

    @IBAction func AscBtnAction(_ sender: Any) {
        let students = studentViewModel?.data.sorted{ $0.rno < $1.rno }
        guard let students = students else {return}
        studentViewModel?.data = students
        self.studentList.reloadData()
    }
    
    @IBAction func descBtnAction(_ sender: Any) {
        
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentViewModel?.data.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = studentList.dequeueReusableCell(withIdentifier: "Cell") as? TableViewCell
        guard let student = studentViewModel?.data[indexPath.row] else { return UITableViewCell() }
        cell?.rnoLabel.text = String(student.rno)
        cell?.nameLabel.text = student.name
        return cell ?? UITableViewCell()
    }
    
}

