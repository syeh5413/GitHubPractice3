//
//  ViewController.swift
//  GitHubPractice3
//
//  Created by Sam Yeh on 11/17/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
}

