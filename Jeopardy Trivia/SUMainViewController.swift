//
//  SUMainViewController.swift
//  Jeopardy Trivia
//
//  Created by Alex Folster on 12/3/15.
//  Copyright © 2015 Alex Folster. All rights reserved.
//

import UIKit
import Parse
class SUMainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    @IBAction func parseSignUp(sender: AnyObject) {
        performSegueWithIdentifier("signup", sender: nil)
        
    }

    @IBAction func parseSignIn(sender: AnyObject) {
        performSegueWithIdentifier("signin", sender: nil)
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
