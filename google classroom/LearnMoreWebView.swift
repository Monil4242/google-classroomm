//
//  LearnMoreWebView.swift
//  google classroom
//
//  Created by r84 on 25/07/23.
//

import UIKit

class LearnMoreWebView: UIViewController {

    @IBOutlet weak var webForLearnMore: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webForLearnMore.loadRequest(URLRequest(url: URL(string:"https://support.google.com/edu/classroom/answer/6020279")!))
    }
    

   

}
