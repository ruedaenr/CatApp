import UIKit

class CatTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Cat.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CatCell", for: indexPath) as! CatTableViewCell
        cell.NameLabel.text = Cat.catArr[indexPath.row].name
        cell.ImageView.image = Cat.catArr[indexPath.row].image
        
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
            return 100
        }
        return cell
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "DetailCatSegue"){
            let DestVC = segue.destination as! DetailViewController
            let indexPath = self.tableView.indexPath(for: sender as! CatTableViewCell)
            let row = indexPath?.row
            
            DestVC.name = Cat.catArr[row!].name
            DestVC.age = String(Cat.catArr[row!].age) + " year(s)-old"
            DestVC.type = Cat.catArr[row!].type
            DestVC.image = Cat.catArr[row!].image
        }
    }
   

}
