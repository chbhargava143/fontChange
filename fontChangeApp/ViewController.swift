//
//  ViewController.swift
//  fontChangeApp
//
//  Created by chbn on 11/03/20.
//  Copyright © 2020 chbn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    let dataArray = ["bhargava","challa","singam","ch","bala","dear","my dear"]
    override func viewDidLoad() {
        super.viewDidLoad()
        print("app creation for font change.")
    }


}
extension ViewController : UITabBarDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.tableView_Cell.text = dataArray[indexPath.row]
        return cell
    }
    
    
}
