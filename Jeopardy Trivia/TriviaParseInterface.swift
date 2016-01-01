//
//  TriviaParseInterface.swift
//  JeopardyTrivia
//
//  Created by Alex Folster on 12/28/15.
//  Copyright © 2015 Alex Folster. All rights reserved.
//

import UIKit

class TriviaParseInterface: UIViewController {

    @IBOutlet weak var easyButton: UIButton?
    @IBOutlet weak var hardButton: UIButton?
    @IBOutlet weak var geniusButton: UIButton?
    @IBOutlet weak var shortButton: UIButton?
    @IBOutlet weak var mediuButton: UIButton?
    @IBOutlet weak var ultraButton: UIButton?
    @IBOutlet weak var chooseCatButton: UIButton?
    @IBOutlet weak var randomButton: UIButton?
    
    
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
