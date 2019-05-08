//
//  SignUpViewController.swift
//  LeaveMemo
//
//  Created by Chan Meng Hoe on 24/04/2018.
//  Copyright © 2018 Chan Meng Hoe. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var cancelBarButton: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //dismiss editing
        hideKeyboardWhenTappedAround()
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.none
    }
    
    //Cancel Button Action
    @IBAction func cancelBarButtonTapped(_ sender: Any) {
        self .dismiss(animated: true, completion: nil)
    }
    
    //Register Button Action
    @IBAction func registerButtonTapped(_ sender: Any) {
    }
}

// MARK : tableViewDataDelegate
extension SignUpViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
    }
}

// MARK : tableViewDataSource
extension SignUpViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let signUpInfoCell = tableView.dequeueReusableCell(withIdentifier: "SignUpInfoTableViewCell", for: indexPath) as! SignUpInfoTableViewCell
        if indexPath.row == 0 {
            signUpInfoCell.textField.placeholder = "Username"
        } else if indexPath.row == 1 {
            signUpInfoCell.textField.placeholder = "Email"
            signUpInfoCell.textField.keyboardType = UIKeyboardType.emailAddress
        } else if indexPath.row == 2 {
            signUpInfoCell.textField.placeholder = "Total Leave"
            signUpInfoCell.textField.keyboardType = UIKeyboardType.numberPad
        } else if indexPath.row == 3 {
            signUpInfoCell.textField.placeholder = "Reset Date"
        } else if indexPath.row == 4 {
            signUpInfoCell.textField.placeholder = "Password"
        } else if indexPath.row == 5 {
            signUpInfoCell.textField.placeholder = "Confirm Password"
        }
        
        return signUpInfoCell
    }
}
