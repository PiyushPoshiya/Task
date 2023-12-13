//
//  LoginScreen.swift
//  PracticalTask
//
//  Created by Piyush on 13/12/23.
//

import UIKit

class LoginScreen: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnShowPass: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.SetUpView()
    }
    
    func SetUpView(){
        self.btnShowPass.setImage(UIImage(systemName: "eye.slash"), for: .normal)
    }
}

extension LoginScreen {
    
    @IBAction func btnShowPass(_ sender: Any) {
        if btnShowPass.image(for: .normal) == UIImage(systemName: "eye.slash")
        {
            self.txtPassword.isSecureTextEntry = false
            self.btnShowPass.setImage(UIImage(systemName: "eye"), for: .normal)
        }
        else if btnShowPass.image(for: .normal) == UIImage(systemName: "eye"){
            self.txtPassword.isSecureTextEntry = true
            self.btnShowPass.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        }
    }
    func checkValidation()
    {
        if txtEmail.text! == ""
        {
            view.makeToast("Please enter email address")
        }
        else if isValidEmail(email: txtEmail.text!) == false{
            view.makeToast("Please enter valid email address!")
        }
        else if txtPassword.text! == ""
        {
            view.makeToast("Please enter password")
        }
        else
        {
        }
    }
        
    @IBAction func btnSignUp(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier: "DashboardScreen") as! DashboardScreen
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
