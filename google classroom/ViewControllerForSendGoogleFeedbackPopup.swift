//
//  ViewControllerForSendGoogleFeedbackPopup.swift
//  google classroom
//
//  Created by r84 on 05/08/23.
//

import UIKit

class ViewControllerForSendGoogleFeedbackPopup: UIViewController {

    @IBOutlet weak var SubmitPopupGoogleFeedback: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.alpha = 0
        SubmitPopupGoogleFeedback.layer.cornerRadius = 10
        SubmitPopupGoogleFeedback.layer.shadowColor = UIColor.systemGray2.cgColor
        SubmitPopupGoogleFeedback.layer.shadowOpacity = 4.4
        SubmitPopupGoogleFeedback.layer.shadowRadius = 4.0
        
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

    @IBAction func allowOneTimeBUttonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForSendFeedbakAllowNextPopup") as! ViewControllerForSendFeedbakAllowNextPopup
        present(n, animated: true)
    }
    
    @IBAction func dontAllowButtonAction(_ sender: Any) {
        dismiss(animated: false)
    }
    
    
}
