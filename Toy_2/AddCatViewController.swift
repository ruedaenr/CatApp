//
//  AddCatViewController.swift
//  Toy_2
//
//  Created by Enrique Rueda on 1/8/19.
//  Copyright © 2019 appdev. All rights reserved.
//

import UIKit

class AddCatViewController: UIViewController {

    @IBOutlet weak var TableView: UITableView!
    
    @IBAction func ClearButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func DoneButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
