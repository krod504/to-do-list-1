//
//  AddToDo1ViewController.swift
//  to do list 1
//
//  Created by Karla Rodriguez on 6/8/20.
//  Copyright © 2020 Karla Rodriguez. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    var previousVC = ToDoTableTableViewController()

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
   override func viewDidLoad() {
       super.viewDidLoad()
    
      }
  
    @IBAction func addTapped(_ sender: Any) {
    
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

            // we are creating a new ToDoCD object here, naming it toDo
            let toDo = ToDoCD(entity: ToDoCD.entity(), insertInto: context)

            // if the titleTextField has text, we will call that text titleText
            if let titleText = titleTextField.text {
                // we will take the titleText and assign that value to toDo.name
                // this .name and .important came from the attributes you typed in on the Core Data page!
                toDo.name = titleText
                toDo.important = importantSwitch.isOn
            }

            try? context.save()

            navigationController?.popViewController(animated: true)
          }

        }
    
    // let toDo = ToDo()
               //if let titleText = titleTextField.text {
                   // toDo.name = titleText
                 //  toDo.important = importantSwitch.isOn
                  //}
                //  previousVC.toDos.append(toDo)
            //     previousVC.tableView.reloadData()
               //   navigationController?.popViewController(animated: true)
       //    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
