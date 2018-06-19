//
//  ViewController.swift
//  Listem
//
//  Created by Jason Li on 2018-06-18.
//  Copyright © 2018 Jason Li. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

    let itemArray = ["apple", "orange", "banana"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    //MARK: - TableView DataSource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    
    //MARK: - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        //tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            // if has a checkmark: uncheck
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        else {
            // if doesn't have a checkmark: check
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }


}

