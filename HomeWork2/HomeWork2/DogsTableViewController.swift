//
//  DogsTableViewController.swift
//  HomeWork2
//
//  Created by Sergey Shirmanov on 07.11.2021.
//

import UIKit

class DogsTableViewController: UITableViewController {
    
    let dogsNames = ["bragada", "mysh", "picachu", "sino", "sticker"]
    
    let dogsImages = ["bragada.jpeg", "mysh.jpeg", "picachu.jpeg", "sino.jpeg", "sticker.jpeg"]

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dogsNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dCell = tableView.dequeueReusableCell(withIdentifier: "dCell", for: indexPath)
        dCell.textLabel?.text = dogsNames[indexPath.row]
        dCell.imageView?.image = UIImage(named: dogsImages[indexPath.row])
        dCell.imageView?.layer.cornerRadius = dCell.frame.size.height / 2
        dCell.imageView?.clipsToBounds = true
        
        return dCell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "dogsSegue" {
            if let indexPathD = tableView.indexPathForSelectedRow {
                let dvcd = segue.destination as! DogsDetailViewController
                dvcd.dImageName = self.dogsImages[indexPathD.row]
            }
        }
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

   

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
