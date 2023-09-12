

import UIKit
import GoogleSignIn

class ViewControllerForGmailAccountPopup: UIViewController {

    @IBOutlet weak var GmailAccountPopup: UIView!
    @IBOutlet weak var manageAccountButton: UIButton!
    
    @IBOutlet weak var gmailLabel: UILabel!
    var a1 : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        view.alpha = 0
        GmailAccountPopup.layer.cornerRadius = 10
        GmailAccountPopup.layer.shadowColor = UIColor.systemGray2.cgColor
        GmailAccountPopup.layer.shadowOpacity = 4.4
        GmailAccountPopup.layer.shadowRadius = 4.0
        
        manageAccountButton.layer.cornerRadius = 18
        manageAccountButton.layer.borderWidth = 1
        manageAccountButton.layer.shadowColor = UIColor.systemGray.cgColor
       
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.1, delay: 0,options: .curveLinear) {
            self.view.alpha = 1
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: false)
    }
    @IBAction func privacyPoilicyButtonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForPrivacyPolicy") as! ViewControllerForPrivacyPolicy
        present(n, animated: true)
    }
    @IBAction func closeButtonAction(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func termsAndServiceButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForTermsAndService") as! ViewControllerForTermsAndService
        present(navigation, animated: true)
    }
    
    @IBAction func manageAnotherAccount(_ sender: Any) {
    }
}
