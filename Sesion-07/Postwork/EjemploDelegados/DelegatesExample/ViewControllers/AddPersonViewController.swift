//
//  AddPersonViewController.swift
//  DelegatesExample
//
//  Created by Omar Guzmán on 20/10/21.
//

import UIKit

protocol AddPersonDelegate {
    func addPerson(person: Person)
}

class AddPersonViewController: UIViewController {
    @IBOutlet private weak var txtName: UITextField!
    @IBOutlet private weak var txtAge: UITextField!
    @IBOutlet private weak var txtPhone: UITextField!
    var delegate: AddPersonDelegate?
    
    @IBAction func addPerson(_ sender: UIButton) {
        let newPerson = Person(name: self.txtName?.text ?? "No-Name",
                               age: self.txtAge?.text ?? "20",
                               phoneNumber: self.txtPhone?.text ?? "0000000000")
        self.delegate?.addPerson(person: newPerson)
        self.navigationController?.popViewController(animated: true)
    }
}
