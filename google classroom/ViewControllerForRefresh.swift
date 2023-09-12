import UIKit
class ViewControllerForRefresh: UIViewController {
    
    
    @IBOutlet weak var refreshIndicate: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        refreshIndicate.startAnimating()
        refreshIndicate.color = .systemBlue
        refreshIndicate.style = .medium
       
    }

}

