//
//  ViewControllerForPlusPopup.swift
//  google classroom
//
//  Created by r84 on 28/07/23.
//

import UIKit


class ViewControllerForPlusPopup: UIViewController {
    

    @IBOutlet weak var popupForPlus: UIView!
    private var myList: MyList!
    var classtext = String()
    var sectionText = String()
    var RoomTxt = String()
    var suntxt = String()
    var buttonTitle: Bool = false
    var index = -1
    
//    weak var delegate: AddListVcDelegate?

   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.alpha = 0
        popupForPlus.layer.cornerRadius = 5
        popupForPlus.layer.shadowColor = UIColor.systemGray2.cgColor
        popupForPlus.layer.shadowOpacity = 4.4
        popupForPlus.layer.shadowRadius = 4.0
    
       
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.1, delay: 0.1,options: .curveLinear) {
            self.view.alpha = 1
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: false)
    }
    
    @IBAction func createClassButton(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForCreateClass") as! ViewControllerForCreateClass
        //n.delegate = self
        
        present(n, animated: true)
    }
    @IBAction func JoinClassButton(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForJoinClass") as! ViewControllerForJoinClass
        present(n, animated: true)
    }
    
}
