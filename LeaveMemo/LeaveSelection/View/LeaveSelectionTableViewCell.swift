//
//  LeaveSelectionTableViewCell.swift
//  LeaveMemo
//
//  Created by Chan Meng Hoe on 04/01/2019.
//  Copyright © 2019 Chan Meng Hoe. All rights reserved.
//

import UIKit

class LeaveSelectionTableViewCell: UITableViewCell {
    @IBOutlet weak var selectionTypeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
