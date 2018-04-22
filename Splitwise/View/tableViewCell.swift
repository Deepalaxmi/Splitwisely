//
//  tableViewCell.swift
//  Splitwise
//
//  Created by Kh. Deepalaxmi on 21/04/18.
//  Copyright © 2018 Kh. Deepalaxmi. All rights reserved.
//

import UIKit

class tableViewCell: UITableViewCell {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    class var identifier: String { return String.className(self) }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    func setUp(userObj: User, type: Int = 0){
        if type == 0 {
            self.label.text = userObj.name
            self.textField.text = "\(userObj.overallMasterDueAmountWithRespectToA)"
            self.textField.isUserInteractionEnabled = false

        }else{
            self.label.text = userObj.name
            self.textField.isUserInteractionEnabled = true
            self.textField.keyboardType = .numberPad
            self.textField.tag = userObj.id

        }
        
    }

    
}
