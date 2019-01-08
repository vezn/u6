
//
//  ViewController.swift
//  u6
//
//  Created by Andrey Kedr on 08/01/2019.
//  Copyright © 2019 Andrey Kedr. All rights reserved.
//





import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var forgotUsernameButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func forgotUserNameButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "ForgottUserNameOrPassword", sender: forgotUsernameButton)
    }

    @IBAction func forgotPasswordButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "ForgottUserNameOrPassword", sender: forgotPasswordButton)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = userNameTextField.text
        }
    }
}

