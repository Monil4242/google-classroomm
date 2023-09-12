//
//  ViewControllerForeCreateThreeDotPopup.swift
//  google classroom
//
//  Created by r84 on 02/08/23.
//

import UIKit

class ViewControllerForeCreateThreeDotPopup: UIViewController {

    @IBOutlet weak var popupCraeteClass: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        popupCraeteClass.layer.cornerRadius = 5
        popupCraeteClass.layer.shadowColor = UIColor.systemGray2.cgColor
        popupCraeteClass.layer.shadowOpacity = 4.4
        popupCraeteClass.layer.shadowRadius = 4.0
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

    @IBAction func sendGoogleFeedbackButton(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForSendGoogleFeedback") as! ViewControllerForSendGoogleFeedback
        present(n, animated: true)
    }
    


   

}
