//
//  ScheduleViewController.swift
//  google classroom
//
//  Created by monil sojitra on 21/08/23.
//

import UIKit

class ScheduleViewController: UIViewController {

    let datepicker : UIDatePicker = {
        let datepicker = UIDatePicker()
        datepicker.locale = .current
        //datepicker.datePickerMode = .countDownTimer
        datepicker.preferredDatePickerStyle = .compact
        datepicker.tintColor = .black
        return datepicker
    }()
    
    let currendate : UIButton = {
        let button = UIButton()
        button.setTitle("print date", for: .normal)
        button.setTitleColor(.black, for: .normal )
        button.addTarget(self, action: #selector(printDate), for: .touchUpInside)
        return button
    }()
    @IBOutlet weak var pop: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(datepicker)
        datepicker.center = view.center
        
        view.addSubview(currendate)
        currendate.frame = CGRect(x: view.frame.size.width/2 - 50, y: view.frame.size.width/2 - 25 + 75, width: 100, height: 100)
        pop.layer.cornerRadius = 5
        pop.layer.masksToBounds = true

        
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
    
    @objc func printDate(){
        print("date: \(datepicker.date)")
    }
    

    @IBAction func saveButtonAction(_ sender: Any) {
    }
    
    @IBAction func cancelButtonAction(_ sender: Any) {
        dismiss(animated: false)
    }
}
