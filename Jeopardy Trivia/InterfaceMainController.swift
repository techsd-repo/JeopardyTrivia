//
//  InterfaceMainController.swift
//  JeopardyTrivia
//
//  Created by Alex Folster on 12/28/15.
//  Copyright © 2015 Alex Folster. All rights reserved.
//

import UIKit
import Parse
class InterfaceMainController: UIViewController {

    @IBOutlet weak var progressXP: UIProgressView?
    @IBOutlet weak var totalGames: UILabel?
    @IBOutlet weak var totalWins: UILabel?
    @IBOutlet weak var totalLoses: UILabel?
    @IBOutlet weak var xpLevel: UILabel?
    @IBOutlet weak var xpLevelScore: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Get data from Parse --> labels
        var query = PFQuery(className: "User")
        query.whereKey(<#T##key: String##String#>, equalTo: AnyObject)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func triviaWithParse(sender: AnyObject) {
        
    }
    
    
    @IBAction func triviaWithGameCenter(sender: AnyObject) {
        
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
