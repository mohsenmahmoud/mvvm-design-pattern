//
//  LoginViewController.swift
//  mvvm
//
//  Created by mohsen on 18/12/2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var passowrdFeld: UITextField!
    @IBOutlet weak var emailFeld: UITextField!
    private let viewModel = loginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
setupBinders()
        // Do any additional setup after loading the view.
    }
    

    func setupBinders(){
        viewModel.error.bind{
            [weak self] Error in
            if let error = Error{
                print(Error)
            }else{
                self?.goToHomepage()
            }
        }
    }
    
    func goToHomepage(){
        let controller = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
         present(controller, animated: true, completion: nil)
    }
 
    @IBAction func loginButtonClicked(_ sender: Any) {
        
        guard let email = emailFeld.text,
              let passowrd = passowrdFeld.text else{
                  print("plase enter email and passowrd")
                  return
              }
        viewModel.login(email: email, passowrd: passowrd)
        
        
    }
    override func touchesBegan(_ touches : Set<UITouch> , with event:UIEvent?){
        self.view.endEditing(true)
    }
    
}
