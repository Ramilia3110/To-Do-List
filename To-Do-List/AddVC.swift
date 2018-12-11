//
//  AddVC.swift
//  To-Do-List
//
//  Created by Ramilia Imankulova on 12/12/18.
//  Copyright © 2018 Ramilia Imankulova. All rights reserved.
//

import UIKit

class AddVC: UIViewController {

    @IBOutlet weak var itemTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func sendBtnPressed(_ sender: Any) {
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        var items : [String]
        if  let tempItems = itemsObject as? [String] {
            items = tempItems
            items.append(itemTextField.text!)
        } else {
            items = [itemTextField.text!]
        }
        UserDefaults.standard.set( items, forKey: "items")
        itemTextField.text = " "
        self.dismiss(animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    

    @IBAction func closeBtnPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil
        )
    }
}
