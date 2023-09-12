//
//  sidemenucontroller.swift
//  google classroom
//
//  Created by monil sojitra on 03/08/23.
//

import UIKit

class sidemenucontroller: UIViewController{
    
   
    @IBOutlet weak var tb: UITableView!
    
    var arr = ["Classes","Calender","Notification"]
    var photo = [UIImage(named: "home 1"),UIImage(named: "calendar"),UIImage(named: "bell (2)")]
    var arr2 = ["BHAUTIK- A-IOS-2","PIYUSH-G-C-5"]
    var photo2 = [UIImage(systemName: "b.circle.fill"),UIImage(systemName: "p.circle.fill")]
    var arr3 = ["Offline files","Archived classes","Classroom folders","Settings","Help"]
    var photo3 = [UIImage(named: "check"),UIImage(named: "download-file"),UIImage(named: "empty-folder"),UIImage(named: "setting 1"),UIImage(named: "information")]
    var dataOfLists1: [Data] = []
    var mylist1: Data!
    var indexPath: IndexPath!
    var index1 = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
extension sidemenucontroller:UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return arr.count
        }
        else if section == 1{
            return dataOfLists1.count
        }
        else {
            return arr3.count
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = tb.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! sideMenuTableViewCell1
            cell.img1.image = photo[indexPath.row]
            cell.section1Label.text = arr[indexPath.row]
            return cell
        }
        else if indexPath.section == 1{
            let cell1 = tb.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! sideMenuTableViewCell2
//            let arr = dataOfLists1[indexPath.row]
//            cell1.section2Label.text = arr.title
//            //cell1.img2.image = photo2[indexPath.row]
//            //cell1.delegate1 = self
//            self.indexPath = indexPath
//            //cell1.section2Label.text = arr2[indexPath.row]
            return cell1
        }
        else {
            let cell2 = tb.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! sideMenuTableViewCell3
            cell2.img3.image = photo3[indexPath.row]
            cell2.section3Label.text = arr3[indexPath.row]
            return cell2
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 55
        }
        else if indexPath.section == 1{
            return 55
        }
        else{
            return 55
        }
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return ""
        }
        else if section == 1{
            return "Enrolled"
        }
        else
        {
            return "Other"
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let add = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForCreateClass") as! ViewControllerForCreateClass
        //plusUiviewPopup.isHidden = true
        //add.buttonTitle = true
       // add.delegate = self
        
//        add.classData = dataOfLists1[indexPath.row].title
//        add.index1 = indexPath.row
//        self.indexPath = indexPath
//        present(add, animated: true)
//        if tableView == self.tb{
//            if indexPath.row == 9{
//                let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForSidbarSetting") as! ViewControllerForSidbarSetting
//                present(n, animated: true)
//            }
//            else{
//                let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForSidbarSetting") as! ViewControllerForSidbarSetting
//                present(n, animated: true)
//            }
//        }
    }
}
extension sidemenucontroller: AddListDelegate {
    func passMyList(with list: Data) {
        if dataOfLists1.isEmpty {
            dataOfLists1.append(list)
            tb.reloadData()
        } else {
            if list.index == indexPath.row {
                dataOfLists1[indexPath.row] = list
                tb.reloadData()
            } else {
                dataOfLists1.append(list)
                tb.reloadData()
            }
        }

    }
    
   
    
    
    
   

    
}
