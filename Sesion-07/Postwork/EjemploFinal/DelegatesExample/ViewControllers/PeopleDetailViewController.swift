//
//  PeopleDetailViewController.swift
//  DelegatesExample
//
//  Created by Omar Guzmán on 22/10/21.
//

import UIKit

class PeopleDetailViewController: UIViewController {
    
    @IBOutlet private weak var lblName: UILabel!
    @IBOutlet private weak var lblAge: UILabel!
    @IBOutlet private weak var lblPhone: UILabel!
    var person: Person?
    var delegate: AddPersonDelegate?
    
    override func viewDidLoad() {
        if let person = person {
            lblName.text = person.name
            lblAge.text = person.age
            lblPhone.text = person.phoneNumber
        }
    }
    
    @IBAction func deletePerson() {
        if let person = person {
            delegate?.deletePerson(person: person)
            self.navigationController?.popViewController(animated: true)
        }
    }
}
