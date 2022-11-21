//
//  ViewController.swift
//  GitHubPractice3
//
//  Created by Sam Yeh on 11/17/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let word = ""
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textField: UITextField!
    var array = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    @IBAction func whenButtonPressed(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Pull Item from TextField?", message: nil, preferredStyle: UIAlertController.Style.alert)
        
        let yesButton = UIAlertAction(title: "Yes", style: .default, handler: { alert in
            textFieldHandler()
        })
        
        alert.addAction(yesButton)
        present(alert, animated: true)
    }
    
    func textFieldHandler() -> UIAlertAction {
        textField.text = word
        array.append(word)
        tableView.reloadData()
        textField.text = ""
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = array[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
}

