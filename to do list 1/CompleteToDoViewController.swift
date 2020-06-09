//
//  CompleteToDoViewController.swift
//  to do list 1
//
//  Created by Karla Rodriguez on 6/9/20.
//  Copyright © 2020 Karla Rodriguez. All rights reserved.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    var previousVC = ToDoTableTableViewController()
    var selectedToDo = ToDo()
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         titleLabel.text = selectedToDo.name
    }
    
    @IBAction func completeTapped(_ sender: Any) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
