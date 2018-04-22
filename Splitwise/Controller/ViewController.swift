//
//  ViewController.swift
//  Splitwise
//
//  Created by Kh. Deepalaxmi on 21/04/18.
//  Copyright © 2018 Kh. Deepalaxmi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var dataArray = [User]()
    var transactionArray = [Transaction]()

    @IBAction func addPressed(_ sender: UIButton) {
        push()
    }
    
    @IBAction func allTransactionAction(_ sender: UIButton) {
        pushTransaction()
    }
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var tablewView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tablewView.dataSource = self
        self.tablewView.delegate = self
        self.tablewView.registerCellNib(tableViewCell.self)
        self.tablewView.tableFooterView = UIView()
        initial()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initial(){
        dataArray = [User]()
        let obj1 = User(name: "A", id: 0)
        dataArray.append(obj1)
        
        let obj2 = User(name: "B", id: 1)
        dataArray.append(obj2)
        let obj3 = User(name: "C", id: 2)
        dataArray.append(obj3)
        
        let obj4 = User(name: "D", id: 3)
        dataArray.append(obj4)
        let obj5 = User(name: "E", id: 4)
        dataArray.append(obj5)
        
    }
    
    func push(){
        let vc = AddNewTransactionViewController(nibName: "AddNewTransactionViewController", bundle: nil)
        vc.transactionList = transactionArray
        _ = dataArray.map{
            $0.dueAmountPerTransaction = 0
            $0.paidAmountPerTransaction = 0
            $0.masterDueAmountPerTransactionWithRespectToA = 0
        }
        vc.dataArray = dataArray
        vc.delegate = self
        self.present(vc, animated: true, completion: nil)
        
    }
    
    func pushTransaction(){
        let vc = TransactionViewController(nibName: "TransactionViewController", bundle: nil)
        vc.transactionList = transactionArray
       self.present(vc, animated: true, completion: nil)
        
    }




}


extension ViewController : UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = self.tablewView.dequeueReusableCell(withIdentifier: "tableViewCell") as! tableViewCell
        cell.setUp(userObj: dataArray[indexPath.row])
        return cell
        
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}

extension ViewController: saveDelegate{
    
    func didSave(data: [User], transactionList: [Transaction]) {
        dataArray = data
        transactionArray = transactionList
        self.tablewView.reloadData()
    }
    
}
