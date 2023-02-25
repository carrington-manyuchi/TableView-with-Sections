//
//  ViewController.swift
//  TableView
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/02/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    var data = [
        TableData(sectionType: "Animals", sectionName: ["Rabbit", "Cat", "Horse", "Dog", "Rabbit", "Cat", "Horse", "Dog"]),
        TableData(sectionType: "Electronics", sectionName: ["TV", "Radio", "Computer", "Heater", "TV", "Radio", "Heater"]),
        TableData(sectionType: "Vegetables", sectionName: ["Carrots", "Onions","Chillies","Tomato", "Carrots", "Onions"]),
        TableData(sectionType: "Animals", sectionName: ["Rabbit", "Cat", "Horse", "Dog","Rabbit", "Cat", "Horse", "Dog"]),
        TableData(sectionType: "Electronics", sectionName: ["TV", "Radio", "Computer", "Heater"]),
        TableData(sectionType: "Vegetables", sectionName: ["Carrots", "Onions","Chillies","Tomato"]),
        TableData(sectionType: "Animals", sectionName: ["Rabbit", "Cat", "Horse", "Dog", "Rabbit", "Cat", "Horse", "Dog"]),
        TableData(sectionType: "Electronics", sectionName: ["TV", "Radio", "Computer", "Heater", "TV", "Radio", "Heater"]),
        TableData(sectionType: "Vegetables", sectionName: ["Carrots", "Onions","Chillies","Tomato", "Carrots", "Onions"])
    ]
    
    var searchingNames = [String]()
    var searching = false
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return data[section].sectionType
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].sectionName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = data[indexPath.section].sectionName[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .orange
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        view.backgroundColor = .cyan
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(data[indexPath.section].sectionName[indexPath.row]!) is Tapped")
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
}



