//
//  ViewControllerThreeDotPopup.swift
//  google classroom
//
//  Created by r84 on 25/07/23.
//

import UIKit

class ViewControllerThreeDotPopup: UIViewController {

    @IBOutlet weak var popupThreeDot: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        view.alpha = 0
        popupThreeDot.layer.cornerRadius = 10
        popupThreeDot.layer.shadowColor = UIColor.systemGray2.cgColor
        popupThreeDot.layer.shadowOpacity = 4.4
        popupThreeDot.layer.shadowRadius = 4.0
        
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
   
    @IBAction func sendGoogleFeedBack(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForSendGoogleFeedback") as! ViewControllerForSendGoogleFeedback
        present(n, animated: true)
    }
}
