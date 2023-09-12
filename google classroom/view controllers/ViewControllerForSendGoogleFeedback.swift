//
//  ViewControllerForSendGoogleFeedback.swift
//  google classroom
//
//  Created by r84 on 02/08/23.
//

import UIKit

class ViewControllerForSendGoogleFeedback: UIViewController {

    @IBOutlet weak var popupSendGoogleFeedback: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        popupSendGoogleFeedback.layer.cornerRadius = 5
        popupSendGoogleFeedback.layer.shadowColor = UIColor.systemGray2.cgColor
        popupSendGoogleFeedback.layer.shadowOpacity = 4.4
        popupSendGoogleFeedback.layer.shadowRadius = 4.0

    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.1, delay: 0.1,options: .curveLinear) {
            self.view.alpha = 1
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: false)
    }

    @IBAction func privacyPolicyButtonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForPrivacyPolicy") as! ViewControllerForPrivacyPolicy
        present(n, animated: true)
    }
    @IBAction func termsAndServiceButtonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForTermsAndService") as! ViewControllerForTermsAndService
        present(n, animated: true)
    }
    @IBAction func getStartedButtonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForSendGoogleFeedbackPopup") as! ViewControllerForSendGoogleFeedbackPopup
        present(n, animated: true)
    }
    
}
