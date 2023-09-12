//
//  ViewControllerForSuggestion.swift
//  google classroom
//
//  Created by r84 on 08/08/23.
//

import UIKit

class ViewControllerForSuggestion: UIViewController {

    @IBOutlet weak var popupForSuggestion: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.alpha = 0
        popupForSuggestion.layer.cornerRadius = 10
        popupForSuggestion.layer.shadowColor = UIColor.systemGray2.cgColor
        popupForSuggestion.layer.shadowOpacity = 2.0
        popupForSuggestion.layer.shadowRadius = 2.0
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
