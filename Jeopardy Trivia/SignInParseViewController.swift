//
//  SignInParseViewController.swift
//  Jeopardy Trivia
//
//  Created by Alex Folster on 12/5/15.
//  Copyright © 2015 Alex Folster. All rights reserved.
//


import UIKit
import Parse

class SignInParseViewController: UIViewController {

    @IBOutlet weak var userField: UITextField!
    @IBOutlet weak var passField: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.userField.resignFirstResponder()
        self.passField.resignFirstResponder()
    }

    @IBAction func logInAction(sender: AnyObject) {
        let activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView(frame: CGRectMake(0,0,150,150)) as UIActivityIndicatorView
        
        //Check for invaild username
        
        if userField.text?.characters.count < 4 {
            let alert = UIAlertController(title: "Error", message: "Invaild username. Username must be longer than 4 characters", preferredStyle: .Alert)
            let okAction = UIAlertAction(title: "Ok", style: .Default, handler: { (action) -> Void in
                
            })
            
            alert.addAction(okAction)
            
            self.presentViewController(alert, animated: true, completion: { () -> Void in
                
            })
            
            //Check for invaild password
        } else if passField.text?.characters.count < 8 {
            let alert = UIAlertController(title: "Error", message: "Invaild password. Password must be longer than 8 characters", preferredStyle: .Alert)
            let okAction = UIAlertAction(title: "Ok", style: .Default, handler: { (action) -> Void in
                
            })
            alert.addAction(okAction)
            
            self.presentViewController(alert, animated: true, completion: { () -> Void in
                
            })
        } else {
            //Log in user here
            let userf = self.userField.text
            let passf = self.passField.text
            activityIndicator.startAnimating()
            PFUser.logInWithUsernameInBackground(userf!, password: passf!) { (user, error) -> Void in
                if user != nil {
                    activityIndicator.stopAnimating()
                    //Yay! Logged in successfully
                    
                    //FIXME: Add segue to Main screen
                } else {
                    //Error.. hmm...
                    activityIndicator.stopAnimating()
                    let alert = UIAlertController(title: "Error:", message: "\(error) Try changing your username or password", preferredStyle: .Alert)
                    let okAction = UIAlertAction(title: "Ok", style: .Default, handler: { (action) -> Void in
                        
                    })
                    alert.addAction(okAction)
                    
                    self.presentViewController(alert, animated: true, completion: { () -> Void in
                        
                    })
                }
                
            
            }
        }
        
    
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
