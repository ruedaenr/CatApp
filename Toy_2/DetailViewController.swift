import UIKit

class DetailViewController: UIViewController {
    
    var name: String! = ""
    var age: String! = ""
    var type: String! = ""
    var image: UIImage!
    
    @IBOutlet weak var ImageView: UIImageView!
   
    @IBOutlet weak var NameLabel: UILabel!
    
    @IBOutlet weak var AgeLabel: UILabel!
   
    @IBOutlet weak var TypeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NameLabel.text = name
        AgeLabel.text = age
        TypeLabel.text = type
        ImageView.image = image
    }

}
