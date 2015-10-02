//
//  PairController.swift
//  PairRandomizerSwift
//
//  Created by Anne Tessier on 10/2/15.
//  Copyright © 2015 Anne Tessier. All rights reserved.
//

import Foundation

class PairController  {
    
    static let sharedInstance = PairController()
    
    var listOfNames : [String] = ["Jake", "Taylor", "Michael", "Jordan"]
    var shuffledListOfNames: [String] = []
    
    //Alert Controlller on NamesListViewController will add name to list of names
    
    //Swipe to delete on cell will remove name
    
    //Randomize List of names
    
    //That could return a dictionary
    
    func shuffleArray() {
        
        shuffledListOfNames = listOfNames
        
            print("BEFORE:\(shuffledListOfNames)")
            
            for name in shuffledListOfNames {
                
                if let index = shuffledListOfNames.indexOf(name) {
                    
                    let incrementedIndex = UInt32(index + 1)
                    let randomIndex = Int(arc4random_uniform(incrementedIndex))
                    let removedName = shuffledListOfNames.removeAtIndex(index)
                    shuffledListOfNames.insert(removedName, atIndex: randomIndex)
                    
                }
                
                
                
            }
            
            print("AFTER:\(shuffledListOfNames)")
       
        
    }
    
}

//extension Array {
//
//    mutating func shuffle() {
//        
//        
//    }
//    
//}