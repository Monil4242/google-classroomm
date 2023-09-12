//
//  LoginPageController.swift
//  google classroom
//
//  Created by monil sojitra on 07/08/23.
//

import UIKit
import FirebaseAuth
import FirebaseCore
import FirebaseDatabase
import FirebaseFirestore

class LoginPageController: UIViewController {
    
    var userId = ""
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    var ref: DatabaseReference!
    var refa : Firestore!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        ref = Database.database().reference()
        refa = Firestore.firestore()
        
        
    }
//    func newuser(){
//        Auth.auth().createUser(withEmail:emailTextField.text!, password: passwordTextField.text!) { [self] authDataResult, error in
//            if error == nil {
//                refa.collection("user").document((authDataResult?.user.uid)!).setData(["Email Address":emailTextField.text as Any,"Password":passwordTextField.text as Any ])
//            }
//            else {
//
//                print(authDataResult,error.debugDescription)
//            }
//
//        }
//
//    }
    func newuser(){

        Auth.auth().createUser(withEmail:emailTextField.text!, password: passwordTextField.text!) { [self] authDataResult, error in
            if error == nil {
                refa.collection("user").document(Auth.auth().currentUser!.uid).setData(["Email Address":emailTextField.text!,"password": passwordTextField.text! as Any])
            }
            else{
                print(authDataResult,error.debugDescription)
            }

        }

    }
    func navigate(){
        let n = storyboard?.instantiateViewController(withIdentifier: "uiviewControllerForHomePage") as! uiviewControllerForHomePage
        present(n, animated: true)
    }
    func showalert(message:String){
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "Ok", style: .default))
        alert.addAction(UIAlertAction.init(title: "Cancel", style: .destructive))
        present(alert, animated: true)
    }
    func passwordalert(){
        let alert = UIAlertController(title: "Incorrect password", message: "The Password you Entered is incorrect.Please try again", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        present(alert, animated: true)
    }
    
    @IBAction func logInButtonAction(_ sender: Any) {
                if emailTextField.text == "" && passwordTextField.text == ""{
                    showalert(message: "Please Enter Your User Name & Password")
                }
                else if emailTextField.text == ""{
                    showalert(message: "Please Enter Your User Name")
                }
                else if passwordTextField.text == ""{
                    showalert(message: "Please Enter Your Password")
                  
        
                }
        
               else{
                   newuser()
                   navigate()
               }
    }
    
}
