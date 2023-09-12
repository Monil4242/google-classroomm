//
//  ViewControllerReportAndIssue.swift
//  google classroom
//
//  Created by r84 on 06/08/23.
//

import UIKit

class ViewControllerReportAndIssue: UIViewController {
    @IBOutlet weak var otherButton: UIButton!
    @IBOutlet weak var turnOffNotificationBuuton: UIButton!
    @IBOutlet weak var joinAVideoMeetingButton: UIButton!
    @IBOutlet weak var markAnAssignmentBuuton: UIButton!
    @IBOutlet weak var turnInAssaingmentBuuton: UIButton!
    @IBOutlet weak var createClassButton: UIButton!
    @IBOutlet weak var joinInClassButton: UIButton!
    
    @IBOutlet weak var popup: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        joinInClassButton.layer.cornerRadius = 10
        joinInClassButton.layer.borderWidth = 1
        joinInClassButton.layer.shadowColor = UIColor.systemGray.cgColor
        
        
        createClassButton.layer.cornerRadius = 10
        createClassButton.layer.borderWidth = 1
        createClassButton.layer.shadowColor = UIColor.systemGray.cgColor
        
        
        turnInAssaingmentBuuton.layer.cornerRadius = 10
        turnInAssaingmentBuuton.layer.borderWidth = 1
        turnInAssaingmentBuuton.layer.shadowColor = UIColor.systemGray.cgColor
        
        markAnAssignmentBuuton.layer.cornerRadius = 10
        markAnAssignmentBuuton.layer.borderWidth = 1
        markAnAssignmentBuuton.layer.shadowColor = UIColor.systemGray.cgColor
        
        joinAVideoMeetingButton.layer.cornerRadius = 10
        joinAVideoMeetingButton.layer.borderWidth = 1
        joinAVideoMeetingButton.layer.shadowColor = UIColor.systemGray.cgColor
        
        turnOffNotificationBuuton.layer.cornerRadius = 10
        turnOffNotificationBuuton.layer.borderWidth = 1
        turnOffNotificationBuuton.layer.shadowColor = UIColor.systemGray.cgColor
        
        otherButton.layer.cornerRadius = 10
        otherButton.layer.borderWidth = 1
        otherButton.layer.shadowColor = UIColor.systemGray.cgColor
        
      
        
        view.alpha = 0
        popup.layer.cornerRadius = 10
        popup.layer.shadowColor = UIColor.systemGray2.cgColor
        popup.layer.shadowOpacity = 4.4
        popup.layer.shadowRadius = 4.0
       
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
    @IBAction func closeButtonAction(_ sender: Any) {
        dismiss(animated: true)
    }
}
