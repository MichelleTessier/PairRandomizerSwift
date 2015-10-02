//
//  PairsViewController.swift
//  PairRandomizerSwift
//
//  Created by Anne Tessier on 10/2/15.
//  Copyright © 2015 Anne Tessier. All rights reserved.
//

import UIKit

class PairsViewController: UIViewController {
    
    let cellID = "cellID"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

extension PairsViewController : UITableViewDataSource {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        var sectionsToReturn : Int!
        
        if PairController.sharedInstance.shuffledListOfNames.count % 2  == 0 {
        
            sectionsToReturn = PairController.sharedInstance.shuffledListOfNames.count / 2
            
        } else {
            
            sectionsToReturn = (PairController.sharedInstance.shuffledListOfNames.count / 2) + 1
            
        }
        
        return sectionsToReturn
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellID, forIndexPath: indexPath)
        
        cell.textLabel?.text = PairController.sharedInstance.shuffledListOfNames[indexPath.row + indexPath.section + indexPath.section]
        
        return cell
        
    }
    
    
    
}
