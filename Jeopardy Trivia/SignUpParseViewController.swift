//
//  SignUpParseViewController.swift
//  Jeopardy Trivia
//
//  Created by Alex Folster on 12/4/15.
//  Copyright © 2015 Alex Folster. All rights reserved.
//

import UIKit
import Foundation
import Parse
class SignUpParseViewController: UIViewController {
    @IBOutlet weak var userField: UITextField!
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.emailField.resignFirstResponder()
        self.passField.resignFirstResponder()
        self.userField.resignFirstResponder()
    }
    
    //Parse sign-up
    @IBAction func submitAction(sender: AnyObject) {
        
        let username = userField.text
        let password = passField.text
        let email = emailField.text
        let finalEmail = email?.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
        
        //Username Check
        if username?.characters.count < 4{
            let alert = UIAlertController(title: "Invaild Username", message: "Username must be longer than 4 characters", preferredStyle: .Alert)
            let okAction = UIAlertAction(title: "Ok", style: .Default, handler: { (action) -> Void in
                
            })
            alert.addAction(okAction)
            
            self.presentViewController(alert, animated: true, completion: { () -> Void in
                
            })
            
        
        //Password check
        } else if password?.characters.count < 8 {
            let alert = UIAlertController(title: "Invaild Password", message: "Password must be longer than 8 characters", preferredStyle: .Alert)
            let okAction = UIAlertAction(title: "Ok", style: .Default, handler: { (action) -> Void in
                
            })
            alert.addAction(okAction)
            
            self.presentViewController(alert, animated: true, completion: { () -> Void in
                
            })
            
        
        
        //Email check
        } else if email?.characters.count < 8 {
            
            let alert = UIAlertController(title: "Invaild Email", message: "Please enter a vaild email address", preferredStyle: .Alert)
            let okAction = UIAlertAction(title: "Ok", style: .Default, handler: { (action) -> Void in
                
            })
            alert.addAction(okAction)
            
            self.presentViewController(alert, animated: true, completion: { () -> Void in
                
            })
            
        } else {
            //Everything is vaild
            let spinner: UIActivityIndicatorView = UIActivityIndicatorView(frame: CGRectMake(0,0,150,150)) as UIActivityIndicatorView
            spinner.startAnimating()
            
            let newUser = PFUser()
            
            newUser.username = username
            newUser.password = password
            newUser.email = finalEmail
            newUser["skill"] = "Rookie"
            newUser["xp"] = "0"
            newUser["diifMatch"] = "0"
            newUser["searching"] = "0"
            
            
            newUser.signUpInBackgroundWithBlock({ (succeed, error) -> Void in
                
                
                //Error
                spinner.stopAnimating()
                if ((error) != nil) {
                     let alert = UIAlertController(title: "Error:", message: "\(error) Try changing the username.", preferredStyle: .Alert)
                     let okAction = UIAlertAction(title: "Ok", style: .Default, handler: { (action) -> Void in
                        
                     })
                    alert.addAction(okAction)
                    
                    self.presentViewController(alert, animated: true, completion: { () -> Void in
                        
                    })
                } else {
                    //Successful
                    //FIXME: Add segue to Sign in
                    spinner.stopAnimating()
                    dispatch_async(dispatch_get_main_queue(), { () -> Void in
                        //add segue
                        //let vc: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("Home")
                        //self.presentViewController(vc, animated: true, completion: { () -> Void in
                            
                        //})
                    })
                }
                
                
               
                
            })
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
