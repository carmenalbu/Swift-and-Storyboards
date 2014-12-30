//
//  ViewController.swift
//  Test2PostCard
//
//  Created by Carmen Albu on 30/12/14.
//  Copyright (c) 2014 Carmen Albu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func actionSendMessage(sender: AnyObject) {
        
        labelMessage.hidden = false
        labelMessage.text = messageTextField.text;
        labelMessage.textColor = UIColor.greenColor();
        
        nameLabel.hidden = false
        nameLabel.text = nameTextField.text;
        nameLabel.textColor = UIColor.blueColor();
        
        nameTextField.text = ""
        
        messageTextField.text = ""
        messageTextField.resignFirstResponder();
        
        sendButton.setTitle("Mail sent", forState: UIControlState.Normal);
    }
}

