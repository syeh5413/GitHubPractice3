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
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return array.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    <#code#>
}

}

