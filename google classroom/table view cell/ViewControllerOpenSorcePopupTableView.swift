//
//  ViewControllerOpenSorcePopupTableView.swift
//  google classroom
//
//  Created by r84 on 14/08/23.
//

import UIKit

class ViewControllerOpenSorcePopupTableView: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    @IBOutlet weak var tableForSourceLiecences: UITableView!
    
    var arr = ["AOSP rastermil","Abseil","Android SDK","Android Settings Library","Android multidex support library","AndroidX activity Ktx library","AndroidX activity library","Android animated vectordrawable library","AndroidX annotation experimental library","AndoidX appcompat library","AndroidX appcompat resources library","AndroidX archiecture core common library","Android architecture core runtimelibrary","AndroidX archieture library","Conscrypt","Cronet","Dagger","Dear ImGui","Draco","Eigen 3","Error Phone ","Tink","UTF","Volley","stb","tz database","utf8","utf8_range","Zlib"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableForSourceLiecences.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! TableViewCellForLicence
        cell1.labelForLicence.text = arr[indexPath.row]
        return cell1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    @IBAction func backButtonAction(_ sender: Any) {
        dismiss(animated: true)
    }
}
