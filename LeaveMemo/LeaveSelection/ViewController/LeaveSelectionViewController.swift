//
//  LeaveSelectionViewController.swift
//  LeaveMemo
//
//  Created by Chan Meng Hoe on 24/04/2018.
//  Copyright © 2018 Chan Meng Hoe. All rights reserved.
//

import UIKit

class LeaveSelectionViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.tableFooterView = UIView()
    }
    
    @IBAction func cancelBarButtonTapped(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
// MARK: tableview delegate
extension LeaveSelectionViewController:UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LeaveSelectionTableViewCell", for: indexPath)
        return cell
    }
}

extension LeaveSelectionViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
}
