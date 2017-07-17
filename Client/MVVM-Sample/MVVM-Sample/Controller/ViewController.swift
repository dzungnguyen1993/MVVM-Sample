//
//  ViewController.swift
//  MVVM-Sample
//
//  Created by Thanh-Dung Nguyen on 7/16/17.
//  Copyright © 2017 Thanh-Dung Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var viewModel: ViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // setup table view
        tableView.register(UINib(nibName: "GirlCell", bundle: nil), forCellReuseIdentifier: "GirlCell")
        tableView.separatorStyle = .none
        tableView.delegate = self
        tableView.dataSource = self
        
        // setup view model
        viewModel = ViewModel()
    
        // fetch data
        viewModel.fetchGirls { (isSuccess) in
            if isSuccess {
                // reload data
                self.tableView.reloadData()
            }
        }
    }

}

// MARK: Table View
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.girls?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 388
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "GirlCell") as? GirlCell {
            cell.cellId = indexPath.row
            
            if let girl = viewModel.girls?[indexPath.row] {
                cell.bindData(girl: girl)
            }
            
            return cell
        }
        
        return UITableViewCell()
    }
}
