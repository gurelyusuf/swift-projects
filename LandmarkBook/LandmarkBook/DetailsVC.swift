//
//  DetailsVC.swift
//  LandmarkBook
//
//  Created by GUREL on 24.05.2023.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var landmarkDetails: UILabel!
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        landmarkDetails.text = selectedLandmarkName
        imageView.image = selectedLandmarkImage
    }
    


}
