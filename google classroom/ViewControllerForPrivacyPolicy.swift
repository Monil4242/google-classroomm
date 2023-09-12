//
//  ViewControllerForPrivacyPolicy.swift
//  google classroom
//
//  Created by r84 on 04/08/23.
//

import UIKit

class ViewControllerForPrivacyPolicy: UIViewController {

    @IBOutlet weak var webForPrivayPolicy: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webForPrivayPolicy.loadRequest(URLRequest(url: URL(string:"https://policies.google.com/privacy?hl=en-GB&color_scheme=dark")!))
       
    }
    

  

}
