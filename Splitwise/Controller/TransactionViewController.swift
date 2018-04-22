//
//  TransactionViewController.swift
//  Splitwise
//
//  Created by Kh. Deepalaxmi on 22/04/18.
//  Copyright © 2018 Kh. Deepalaxmi. All rights reserved.
//

import UIKit

class TransactionViewController: UIViewController {
    

    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func closeAction(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    var transactionList = [Transaction]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initialSetUp()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initialSetUp() {
        self.tableView.registerCellNib(TransactionTableViewCell.self)
        self.tableView.tableFooterView = UIView()
    }
    
}

extension TransactionViewController : UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(transactionList.count > 0){
            self.tableView?.backgroundView = nil
        } else {
            let noDataLabel: UILabel     = UILabel(frame: CGRect(x: 0, y: 0, width: self.tableView!.bounds.size.width, height: self.tableView!.bounds.size.height))
            noDataLabel.numberOfLines = 1
            noDataLabel.text          = "No Data Available"
            noDataLabel.textColor     = UIColor.gray
            noDataLabel.textAlignment = .center
            self.tableView?.backgroundView  = noDataLabel
            self.tableView?.separatorStyle  = .none
        }
        return transactionList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "TransactionTableViewCell") as! TransactionTableViewCell
        cell.setUp(transactionObj: transactionList[indexPath.row])
        return cell
    }
}


