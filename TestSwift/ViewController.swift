//
//  ViewController.swift
//  TestSwift
//  Going to modify.
//  Created by Macmini on 7/21/18.
//  Copyright © 2018 Macmini. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var scrollView : UIScrollView!
    @IBOutlet weak var userNameTextField : UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NotificationCenter.default.addObserver(self, selector: #selector(handleKeyboardShowEvent(notification:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(handleKeyboardHideEvent(notification:)), name: NSNotification.Name.UIKeyboardDidShow, object: nil)
        
    }

    func handleKeyboardShowEvent( notification : Notification) {
        print("notification ---- \(notification)")
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            let contentInset = UIEdgeInsets(top: 0.0, left: 0.0, bottom: keyboardSize.height+300, right: 0.0)
            scrollView.contentInset = contentInset
        }
        
    }
    
    
    func handleKeyboardHideEvent( notification : Notification) {
        print("notification ---- \(notification)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //print("size of device --- \()")
    }
    
    @IBAction func login() {
        print("userNameTextField frame ---- \(userNameTextField.frame)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
}

