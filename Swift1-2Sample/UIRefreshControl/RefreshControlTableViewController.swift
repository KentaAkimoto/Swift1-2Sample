//
//  RefreshControlTableViewController.swift
//  Swift1-2Sample
//
//  Created by Kenta Akimoto on 2015/07/03.
//  Copyright (c) 2015年 KentaAkimoto. All rights reserved.
//

import UIKit

class RefreshControlTableViewController: UITableViewController, UITableViewDelegate {

    var dataArray:Array<String> = ["ラッパ","ごりら","りんご"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let tempRefreshControl:UIRefreshControl = UIRefreshControl()
        tempRefreshControl.addTarget(self, action: "onRefresh", forControlEvents: UIControlEvents.ValueChanged)
        self.refreshControl = tempRefreshControl
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func onRefresh() {
        self.refreshControl?.beginRefreshing()
        
        NSLog("refresh")
        self.dataArray.insert("パンダ", atIndex: 0)
        let tableView:UITableView = self.view as! UITableView
        tableView.reloadData()
        
        self.refreshControl?.endRefreshing()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArray.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "CELL")
        cell.textLabel?.text = self.dataArray[indexPath.row]
        return cell
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
