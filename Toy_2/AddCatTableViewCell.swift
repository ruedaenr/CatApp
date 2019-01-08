import UIKit

class AddCatTableViewCell: UITableViewCell {

    @IBOutlet weak var TextView: UITextView!
    @IBOutlet weak var PickerView: UIPickerView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
