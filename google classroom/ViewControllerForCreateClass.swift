//
//  ViewControllerForCreateClass.swift
//  google classroom
//
//  Created by r84 on 28/07/23.
//

import UIKit
import Foundation

protocol AddListVcDelegate: AnyObject {
    func passMyList(with list: MyList )
    func setButtonState()
}
protocol AddListDelegate: AnyObject {
    func passMyList(with list: Data )
}


class ViewControllerForCreateClass: UIViewController {
    
    @IBOutlet weak var ClassTextField: UITextField!
    
    @IBOutlet weak var sectionTextField: UITextField!
    
    @IBOutlet weak var RoomTextField: UITextField!
    
    @IBOutlet weak var SubTextField: UITextField!
    
    @IBOutlet weak var createOt: UIButton!
    var textEntries: [TextEntry] = []
    private var myList: MyList!
    private var data:Data!
    var classData = String()
    var index1 = -1
    let inputString = "abcdefghijklmnopqrstuvwxyz0123456789"
    let codeLength = 7
    var mynav : UINavigationController?
    var classtext = String()
    var sectionText = String()
    var RoomTxt = String()
    var suntxt = String()
    var buttonTitle: Bool = false
    var index = -1
    
    weak var delegate: AddListVcDelegate?
    weak var delegate1: AddListDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        cornerRadius()
   
    }
    
    func cornerRadius(){
        
        [ClassTextField, sectionTextField, RoomTextField,SubTextField].forEach { textFields in
            textFields?.delegate = self
        }
        
        
        if buttonTitle {
            createOt.setTitle("Edit", for: .normal)
            ClassTextField.text = classtext
            ClassTextField.text = classData
            sectionTextField.text = sectionText
            RoomTextField.text = RoomTxt
            SubTextField.text = suntxt
        } else {
            createOt.setTitle("Create", for: .normal)
        }
    }
    
    private func Alert() {
        let alert = UIAlertController(title: "Please Enter Detailes.", message: "Please fill all list data", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default)) 
        UIAlertAction(title: "Cancel", style: .destructive)
        present(alert, animated: true)
        
    }
    private func check() {
         if ClassTextField.text == "" {
            Alert()
            
        } else if sectionTextField.text == "" {
            Alert()
            
        } else if RoomTextField.text == ""  {
            Alert()
            
        }
        else if SubTextField.text == ""  {
            Alert()
            
        }
        else {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.dismiss(animated: true) { [self] in
                    myList = MyList(title: classtext, Section: sectionText, Room: RoomTxt, Subject: suntxt,  index: index)
                    data = Data(title: classData, index: index1)
                    print(classtext)
                    print(classData)
                    delegate?.passMyList(with: myList)
                    delegate1?.passMyList(with: data)
                    
                }
            }
        }
        
    }
    
    @IBAction func closeButtonAction(_ sender: Any) {
        dismiss(animated: true)
        delegate?.setButtonState()
    
    }
    
    
    @IBAction func createButtonAction(_ sender: Any) {
        check()
        let randomCode = generateRandomCode(from: inputString, length: codeLength)
        print("Randomly generated code: \(randomCode)")
       // codeLabel.text = randomCode
       generateRandomCode(from: "abcdefghijklmnopqrstuvwxyz0123456789", length: 7)
        
        
    }
    
    @IBAction func threeDotButtonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForthreeDotInJoinClass") as! ViewControllerForthreeDotInJoinClass
        present(n, animated: true)
    }
    

    func generateRandomCode(from inputString: String, length: Int) -> String {
        let allowedCharacters = Array(inputString)
        var randomCode = ""

        for _ in 0..<length {
            let randomIndex = Int.random(in: 0..<allowedCharacters.count)
            let randomCharacter = allowedCharacters[randomIndex]
            randomCode.append(randomCharacter)
        }
     


        return randomCode
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

      
}
extension ViewControllerForCreateClass: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        switch textField {
        case ClassTextField:
            classtext = ""
            //classData = ""
            
        case ClassTextField:
            classData = ""
            
        case sectionTextField:
            sectionText = ""
            
        case RoomTextField:
            RoomTxt = ""
            
        case SubTextField:
            suntxt = ""
            
        default:
            break
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        switch textField {
            
        case ClassTextField:
            if let text = textField.text {
                classtext = text
                //classData = text
            }
        case ClassTextField:
            if let text = textField.text {
                classData = text
            }
            
        case sectionTextField:
            if let text = textField.text {
                sectionText = text
            }
            
        case RoomTextField:
            if let text = textField.text {
                RoomTxt = text
            }
        case SubTextField:
            if let text = textField.text {
                suntxt = text
            }
            
        default:
            break
        }
    }
}

