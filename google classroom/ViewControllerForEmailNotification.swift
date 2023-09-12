//
//  ViewControllerForEmailNotification.swift
//  google classroom
//
//  Created by r84 on 09/08/23.
//

import UIKit

class ViewControllerForEmailNotification: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func threeDotButtonaction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForthreeDotInJoinClass") as! ViewControllerForthreeDotInJoinClass
        present(n, animated: true)
    }
    @IBAction func arrowButtonAction(_ sender: Any) {
        dismiss(animated: true)
    }
}
