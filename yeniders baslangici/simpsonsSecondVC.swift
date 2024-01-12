//
//  simpsonsSecondVC.swift
//  yeniders baslangici
//
//  Created by Süleyman Kabayel on 9.02.2024.
//

import UIKit

class simpsonsSecondVC: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var uImageView: UIImageView!
    
    var selctedSimpson : simpson?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        nameLabel.text = selctedSimpson?.name
        jobLabel.text = selctedSimpson?.jov
        uImageView.image = selctedSimpson?.image

        // Do any additional setup after loading the view.
    }
    

    

}
