//
//  ViewControllerForSendFeedbakAllowNextPopup.swift
//  google classroom
//
//  Created by r84 on 06/08/23.
//

import UIKit

class ViewControllerForSendFeedbakAllowNextPopup: UIViewController {
    
    @IBOutlet weak var reportButton: UIButton!
    
    @IBOutlet weak var makeAButton: UIButton!
    
    @IBOutlet weak var popupForREport: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        reportButton.layer.cornerRadius = 18
        reportButton.layer.borderWidth = 1
        reportButton.layer.shadowColor = UIColor.systemGray.cgColor
        view.alpha = 0
        popupForREport.layer.cornerRadius = 10
        popupForREport.layer.shadowColor = UIColor.systemGray2.cgColor
        popupForREport.layer.shadowOpacity = 2.4
        popupForREport.layer.shadowRadius = 2.0
        
        makeAButton.layer.cornerRadius = 18
        makeAButton.layer.borderWidth = 1
        makeAButton.layer.shadowColor = UIColor.systemGray.cgColor
        
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
   
    
    @IBAction func reportButtonAction(_ sender: Any) {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "ViewControllerReportAndIssue") as! ViewControllerReportAndIssue
        present(naviget, animated: true)
    }
   
    @IBAction func makeASuggestionButtonAction(_ sender: Any) {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForSuggestion") as! ViewControllerForSuggestion
        present(naviget, animated: true)
        
    }
    @IBAction func closeButtonAction(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
