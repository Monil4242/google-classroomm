//
//  ViewControllerForTermsAndService.swift
//  google classroom
//
//  Created by r84 on 04/08/23.
//

import UIKit

class ViewControllerForTermsAndService: UIViewController {

    @IBOutlet weak var webviewForTermsAndService: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webviewForTermsAndService.loadRequest(URLRequest(url: URL(string:"https://policies.google.com/terms?hl=en-GB&color_scheme=dark")!))
       
    }
    

    

}
