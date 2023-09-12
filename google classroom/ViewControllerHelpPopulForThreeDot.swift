//
//  ViewControllerHelpPopulForThreeDot.swift
//  google classroom
//
//  Created by r84 on 14/08/23.
//

import UIKit

class ViewControllerHelpPopulForThreeDot: UIViewController {

    @IBOutlet weak var threeDotPopup: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        threeDotPopup.layer.cornerRadius = 10
        threeDotPopup.layer.shadowColor = UIColor.systemGray2.cgColor
        threeDotPopup.layer.shadowOpacity = 2.0
        threeDotPopup.layer.shadowRadius = 2.0
        
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

    @IBAction func viewOpenLicenceButtonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerOpenSorcePopupTableView") as! ViewControllerOpenSorcePopupTableView
        present(n, animated: true)
    }
    
}
