//
//  ViewController.swift
//  google classroom


import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func learnMoreActionButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "LearnMoreWebView") as! LearnMoreWebView
        present(navigation, animated: false)
    }
    func navigate(){
        let n = storyboard?.instantiateViewController(withIdentifier: "LoginPageController") as! LoginPageController
        navigationController?.pushViewController(n, animated: true)
    }
    
    @IBAction func getStartedButtonAction(_ sender: Any) {
           navigate()
          //checkHomaePageNavigation()
        
    }
    func checkHomaePageNavigation(){
        let n = storyboard?.instantiateViewController(withIdentifier: "uiviewControllerForHomePage") as! uiviewControllerForHomePage
        present(n, animated: false)
    }
    
}
