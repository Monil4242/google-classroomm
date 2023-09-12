//
//  ViewControllerForSidbarSetting.swift
//  google classroom
//
//  Created by r84 on 09/08/23.
//

import UIKit

class ViewControllerForSidbarSetting: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func backarrowButtonAction(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func threedotButtonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForthreeDotInJoinClass") as! ViewControllerForthreeDotInJoinClass
        present(n, animated: true)
    }
    
}
