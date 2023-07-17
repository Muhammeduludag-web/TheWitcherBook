//
//  DetailsVCSec.swift
//  TheWitcherBook
//
//  Created by uludağ on 17.07.2023.
//

import UIKit

class DetailsVCSec: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobsLabel: UILabel!
    
    var selectedWitcher : witcher?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        nameLabel.text = selectedWitcher?.name
        jobsLabel.text = selectedWitcher?.jobs
        imageView.image = selectedWitcher?.image
    }
    


}
