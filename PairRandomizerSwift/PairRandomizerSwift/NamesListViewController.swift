//
//  NamesListViewController.swift
//  PairRandomizerSwift
//
//  Created by Anne Tessier on 10/2/15.
//  Copyright © 2015 Anne Tessier. All rights reserved.
//

import UIKit

class NamesListViewController: UIViewController {
    
    let cellID = "cellID"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        PairController.sharedInstance.shuffleArray()
    }
    
    @IBAction func addButtonTapped(sender: AnyObject) {
        
        
        
    }
    

    @IBAction func randomizePairsTapped(sender: AnyObject) {
        
        
        self.performSegueWithIdentifier("showRandomPairs", sender: self)
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showRandomPairs" {
            
            PairController.sharedInstance.shuffleArray()
            
        }
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

extension NamesListViewController : UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return PairController.sharedInstance.listOfNames.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellID, forIndexPath: indexPath)
        
        cell.textLabel?.text = PairController.sharedInstance.listOfNames[indexPath.row]
        
        return cell
        
    }
    
    

}
