//
//  SummaryTableViewCell.swift
//  LeaveMemo
//
//  Created by Chan Meng Hoe on 11/06/2018.
//  Copyright © 2018 Chan Meng Hoe. All rights reserved.
//

import UIKit

class SummaryTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func cellInit(indexPath: IndexPath) {
        if indexPath.row == 0 {
            self.titleLabel.text = "Leave Taken :"
        } else if indexPath.row == 1 {
            self.titleLabel.text = "Additional Leave :"
        } else {
            self.titleLabel.text = "Leave Remaining :"
        }
    }
}
