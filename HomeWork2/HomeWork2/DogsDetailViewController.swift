//
//  DogsDetailViewController.swift
//  HomeWork2
//
//  Created by Sergey Shirmanov on 07.11.2021.
//

import UIKit

class DogsDetailViewController: UIViewController {
    
    @IBOutlet weak var dImageView: UIImageView!
    var dImageName = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()

        dImageView.image = UIImage(named: dImageName)
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
