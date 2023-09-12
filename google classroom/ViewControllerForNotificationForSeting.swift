//
//  ViewControllerForNotificationForSeting.swift
//  google classroom
//
//  Created by r84 on 09/08/23.
//

import UIKit

class ViewControllerForNotificationForSeting: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    @IBAction func threeDotButtonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForthreeDotInJoinClass") as! ViewControllerForthreeDotInJoinClass
        present(n, animated: true)
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func emailButtonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForEmailNotification") as! ViewControllerForEmailNotification
        present(n, animated: true)
    }
    
}
