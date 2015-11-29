//
//  NavModeController.swift
//  Jeopardy Trivia
//
//  Created by Alex Folster on 11/28/15.
//  Copyright © 2015 Alex Folster. All rights reserved.
//

import UIKit

class NavModeController: UINavigationController {

    @IBOutlet weak var navBar: UINavigationBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        navBar.translucent = false
        navBar.barTintColor = UIColor(red: 59.0 / 255.0, green: 113.0 / 255.0, blue: 252.0 / 255.0, alpha: 1.0)
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
