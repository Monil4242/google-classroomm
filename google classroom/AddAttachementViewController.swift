//
//  AddAttachementViewController.swift
//  
//
//  Created by monil sojitra on 19/08/23.
//

import UIKit

class AddAttachementViewController: UIViewController {

    @IBOutlet weak var popUp: UIView!
    var nav : UINavigationController?
    override func viewDidLoad() {
        super.viewDidLoad()
        popUp.layer.cornerRadius = 10
        popUp.layer.masksToBounds = true

        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.5, delay: 0,options: .curveLinear) {
            self.view.alpha = 1
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: false)
    }

    @IBAction func addFromDriveButton(_ sender: Any) {
//        let n = storyboard?.instantiateViewController(withIdentifier: "AddFromDriveViewController") as! AddFromDriveViewController
//      //  nav?.pushViewController(n, animated: true)
//        present(n, animated: true)
        
    }
    
    @IBAction func insertLinkButtonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "InsertLinkViewController") as! InsertLinkViewController
        present(n, animated: false)
    }
    
    @IBAction func uploadFileButtonAction(_ sender: Any) {
    }
    
    @IBAction func takephotoButtonAction(_ sender: Any) {
    }
    
    @IBAction func recordVideoButtonAction(_ sender: Any) {
    }
    
    @IBAction func pdfButtonAction(_ sender: Any) {
    }
}
