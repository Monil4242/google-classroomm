//
//  uiviewControllerForHomePage.swift
//  google classroom
//
//  Created by r84 on 25/07/23.
//

import UIKit
import FirebaseCore
import FirebaseAuth
import FirebaseDatabase
import FirebaseFirestore
import GoogleSignIn
import SideMenu

class uiviewControllerForHomePage: UIViewController, UINavigationControllerDelegate {

    @IBOutlet weak var plusUiviewPopup: UIView!
    
    @IBOutlet weak var tb: UITableView!
    
    var colourhelper : [String : UIColor] = ["darkgray" : UIColor.darkGray,"blue" : UIColor.blue,"gray" : UIColor.gray,"systemGray6" : UIColor.systemGray6,"black" : UIColor.black,"lightGray" : UIColor.lightGray,"cyan" : UIColor.cyan,"systemOrange" : UIColor.systemOrange]
    var bgcolor = ["darkgray","blue","gray","systemGray6","black","lightGray","cyan","systemOrange"]
     var dataOfLists: [MyList] = []
     var mylist: MyList!
     var indexPath: IndexPath!
     var index = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        cornerRadius()
        //createSideMenuButton()
  
    }
//    func createSideMenuButton() {
//        let menuButton = UIBarButtonItem(image: UIImage(named: "menu_icon"), style: .plain, target: self, action: #selector(openSideMenu))
//        navigationItem.leftBarButtonItem = menuButton
//    }
//    @objc func openSideMenu() {
//        // Configure your side menu settings
//        let menu = UISideMenuNavigationController(rootViewController: sidemenucontroller())
//        SideMenuManager.default.leftMenuNavigationController = menu
//        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
//        SideMenuManager.delegate1 = self
//
//        // Show the side menu
//        present(menu, animated: true, completion: nil)
//    }
    
    @IBAction func threeDotButtonAction(_ sender: Any) {
        navigationThreeDot()
    }
    func navigationThreeDot(){
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerThreeDotPopup") as! ViewControllerThreeDotPopup
        present(n, animated: false)
    }
    func navigation(){
        let n = storyboard?.instantiateViewController(withIdentifier: "tabBarController") as! tabBarController
        
        
       // navigationController?.pushViewController(n, animated: true)
        present(n, animated: false)
    }
    func Alert(with index: IndexPath) {
       let alert = UIAlertController(title: "Are you sure", message: "You want to remove this list", preferredStyle: .alert)
       let deleteButton = UIAlertAction(title: "Delete", style: .destructive) { [self] _ in
           dataOfLists.remove(at: index.row)
           tb.reloadData()
       }
       let cancelButton = UIAlertAction(title: "Cancel", style: .default)
       alert.addAction(cancelButton)
       alert.addAction(deleteButton)
       present(alert, animated: true)
   }
    @IBAction func plusButtonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForCreateClass") as! ViewControllerForCreateClass
        n.delegate = self
//        //navigationController?.pushViewController(n, animated: true)
        present(n, animated: false)
    
        //navigationController?.pushViewController(n, animated: true)
//        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForPlusPopup") as! ViewControllerForPlusPopup
//        n.delegate = self
//       present(n, animated: false)
    }
    
    @IBAction func menuButtonAction(_ sender: Any) {
        
        
//        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForCreateClass") as! ViewControllerForCreateClass
        //delegate1 = self
//        present(n, animated: false)
    }
    func cornerRadius(){
        plusUiviewPopup.layer.cornerRadius = 30
        plusUiviewPopup.layer.shadowColor = UIColor.systemGray2.cgColor
        plusUiviewPopup.layer.shadowOpacity = 4.4
        plusUiviewPopup.layer.shadowRadius = 6.0
        
    }
    
    @IBAction func accountButtonAction(_ sender: Any) {
        googleSignIn()
//        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForGmailAccountPopup") as! ViewControllerForGmailAccountPopup
//        present(n, animated: true)
    }
    func googleSignIn(){
        guard let clientID = FirebaseApp.app()?.options.clientID else {return}
        
        let config = GIDConfiguration(clientID: clientID)
        GIDSignIn.sharedInstance.configuration = config
        GIDSignIn.sharedInstance.signIn(withPresenting: self){[ unowned self ]  result , error in
            guard error == nil else {
                return
            }
            guard let user = result?.user,
                  let idToken = user.idToken?.tokenString
            else{
                return
            }
            let credential = GoogleAuthProvider.credential(withIDToken: idToken, accessToken: user.accessToken.tokenString)
        }
    }
}

extension uiviewControllerForHomePage:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataOfLists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tb.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MainTableViewCell
        let arr = dataOfLists[indexPath.row]
        cell.layer.backgroundColor = colourhelper[bgcolor[indexPath.row]]?.cgColor
        cell.layer.cornerRadius = 10
        cell.className.text = arr.title
        cell.Sectionname.text = arr.Section
        cell.menuButton.tag = indexPath.row
        cell.delegate = self
        self.indexPath = indexPath
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            Alert(with: indexPath)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigation()
        let add = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForCreateClass") as! ViewControllerForCreateClass
        plusUiviewPopup.isHidden = true
        add.buttonTitle = true
        add.delegate = self
        
        add.classtext = dataOfLists[indexPath.row].title
        add.sectionText = dataOfLists[indexPath.row].Section
        add.RoomTxt = dataOfLists[indexPath.row].Room
        add.suntxt = dataOfLists[indexPath.row].Subject
        add.index = indexPath.row
        self.indexPath = indexPath
        present(add, animated: true)
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    
}
extension uiviewControllerForHomePage: AddListVcDelegate {
   
    func passMyList(with list: MyList) {
       plusUiviewPopup.isHidden = false
        
        if dataOfLists.isEmpty {
            dataOfLists.append(list)
            tb.reloadData()
        } else {
            if list.index == indexPath.row {
                dataOfLists[indexPath.row] = list
                tb.reloadData()
            } else {
                dataOfLists.append(list)
                tb.reloadData()
            }
        }
    }

    func setButtonState() {
        plusUiviewPopup.isHidden = false
    }
}

extension uiviewControllerForHomePage: AddListTableViewCellDelegate {
    func editlist(with index: IndexPath) {
        let addListVc = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForCreateClass") as! ViewControllerForCreateClass
        plusUiviewPopup.isHidden = true
        addListVc.buttonTitle = true
        addListVc.delegate = self
        addListVc.classtext = dataOfLists[index.row].title
        addListVc.sectionText = dataOfLists[index.row].Section
        addListVc.RoomTxt = dataOfLists[index.row].Room
        addListVc.suntxt = dataOfLists[index.row].Subject
        addListVc.index = index.row
        self.indexPath = index
        present(addListVc, animated: true)
    }
    
    func deleteList(with index: IndexPath) {
       Alert(with: index)
    }
}



