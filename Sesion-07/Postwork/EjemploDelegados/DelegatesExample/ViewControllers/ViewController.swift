//
//  ViewController.swift
//  DelegatesExample
//
//  Created by Omar Guzmán on 20/10/21.
//

import UIKit

class ViewController: UITableViewController {

    var people = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        people = [Person(name: "John", age: "23", phoneNumber: "9938888828"),
                  Person(name: "Angela", age: "20", phoneNumber: "3888377266"),
                  Person(name: "Mike", age: "29", phoneNumber: "999288376"),
                  Person(name: "Laura", age: "25", phoneNumber: "2228839947"),
                  Person(name: "Betzi", age: "18", phoneNumber: "228830948")
        ]
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "PersonCell")
        let item = people[indexPath.row]
        cell.textLabel?.text = "Name: \(item.name) Age: \(item.age)"
        cell.detailTextLabel?.text = "Phone: \(item.phoneNumber)"
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addPersonVC = segue.destination as? AddPersonViewController {
            addPersonVC.delegate = self
        } else {
            print("Error al agregar el delegado")
        }
    }
}

extension ViewController: AddPersonDelegate {
    func addPerson(person: Person) {
        // Agregar la nueva persona al arreglo de peopole
        people.append(person)
        tableView.reloadData()
    }
}
