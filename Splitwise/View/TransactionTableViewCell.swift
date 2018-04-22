//
//  TransactionTableViewCell.swift
//  Splitwise
//
//  Created by Kh. Deepalaxmi on 22/04/18.
//  Copyright © 2018 Kh. Deepalaxmi. All rights reserved.
//

import UIKit

class TransactionTableViewCell: UITableViewCell {
    @IBOutlet weak var tnrxLabel: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUp(transactionObj: Transaction){
        self.tnrxLabel.text = "Transaction \(transactionObj.id) : \(transactionObj.createdDatatime)"
        for obj in transactionObj.involvedUserList {
            if obj.dueAmountPerTransaction < 0 {
                if obj.id == 0{
                    self.label1.isHidden = false
                    self.label1.text = "\(obj.name) owes \(-obj.dueAmountPerTransaction)"
                }else if obj.id == 1{
                    self.label2.isHidden = false
                    self.label2.text = "\(obj.name) owes \(-obj.dueAmountPerTransaction)"

                }else if obj.id == 2{
                    self.label3.isHidden = false
                    self.label3.text = "\(obj.name) owes \(-obj.dueAmountPerTransaction)"

                }else if obj.id == 3{
                    self.label4.isHidden = false
                    self.label4.text = "\(obj.name) owes \(-obj.dueAmountPerTransaction)"

                }else if obj.id == 4{
                    self.label5.isHidden = false
                    self.label5.text = "\(obj.name) owes \(-obj.dueAmountPerTransaction)"

                }
            }
        }
        
    }
    
}
