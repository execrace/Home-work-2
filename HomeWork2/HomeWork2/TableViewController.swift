//
//  TableViewController.swift
//  HomeWork2
//
//  Created by Sergey Shirmanov on 02.11.2021.
//

import UIKit

class TableViewController: UITableViewController {

    let catsNames = ["ъуъ", "nePonyal", "romashka", "udivil", "zloyKot"]
    
    let catsImages = ["ъуъ.jpeg", "nePonyal.jpeg", "romashka.jpeg", "udivil.jpeg", "zloyKot.jpeg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return catsNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = catsNames[indexPath.row]
//        cell.imageView?.image = UIImage(named: catsNames[indexPath.row])
        cell.imageView?.image = UIImage(named: catsImages[indexPath.row])
        cell.imageView?.layer.cornerRadius = cell.frame.size.height / 2
        cell.imageView?.clipsToBounds = true
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let dvc = segue.destination as! CatsDetailViewController
                dvc.imageName = self.catsImages[indexPath.row]
            }
        }
    }
    
    

    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
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
