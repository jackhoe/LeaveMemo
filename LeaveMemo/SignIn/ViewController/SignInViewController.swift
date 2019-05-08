//
//  SignInViewController.swift
//  LeaveMemo
//
//  Created by Chan Meng Hoe on 24/04/2018.
//  Copyright © 2018 Chan Meng Hoe. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController{

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        hideKeyboardWhenTappedAround()
    }
    
    //Mark - Sign Up Button Action
    @IBAction func signUpButtonTapped(_ sender: Any) {
        let viewController = storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as? SignUpViewController
        let signUpNav : UINavigationController = UINavigationController(rootViewController: viewController!)
        self.present(signUpNav, animated: true, completion: nil)
    }
    
    @IBAction func signInButtonTapped(_ sender: Any) {
        //Accessing AppDelegate window from viewController
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        appDelegate?.window?.rootViewController = storyboard?.instantiateViewController(withIdentifier: "RootTabBarViewController")
    }
    
}

// MARK : tableViewDataDelegate
extension SignInViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 2 {
            return 80
        } else {
            return 50
        }
    }
}

// MARK : tableViewDataSource
extension SignInViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let signInEmailCell = tableView.dequeueReusableCell(withIdentifier: "SignInEmailTableViewCell", for: indexPath)
            return signInEmailCell
        }else if indexPath.section == 1 {
            let signInPasswordCell = tableView.dequeueReusableCell(withIdentifier: "SignInPasswordTableViewCell", for: indexPath)
            
            return signInPasswordCell
        }else {
            let forgotPasswordAndSignUpCell = tableView.dequeueReusableCell(withIdentifier: "ForgotPasswordAndSignUpTableViewCell", for: indexPath)
            
            return forgotPasswordAndSignUpCell
        }
    }
}

