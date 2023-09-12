//
//  ViewControllerForHelpSidebar.swift
//  google classroom
//
//  Created by r84 on 14/08/23.
//

import UIKit

class ViewControllerForHelpSidebar: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func threeDotButtonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerHelpPopulForThreeDot") as! ViewControllerHelpPopulForThreeDot
        present(n, animated: true)
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        dismiss(animated: true)
    }
    

}
