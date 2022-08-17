//
//  imageViewController.swift
//  TableViewPractice2
//
//  Created by M. Can Devecioğlu on 5.06.2022.
//

import UIKit

class imageViewController: UIViewController {
    
    var selectedCountryName = String()
    var selectedCountryImage = UIImage()
    var selectedCountryDesc = String()

    @IBOutlet weak var countryImageView: UIImageView!
    @IBOutlet weak var countryNameLabel: UILabel!
    @IBOutlet weak var countryDesc: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        countryNameLabel.text = selectedCountryName
        countryImageView.image = selectedCountryImage
        countryDesc.text = selectedCountryDesc
    }

}
