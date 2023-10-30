//
//  ViewController.swift
//  Hometask 3
//
//  Created by Assel Akmakanova on 30.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelCountry: UILabel!
    @IBOutlet weak var labelCity: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    //var country = ""
    //var city = ""
   // var imagename = ""
    
    var CountryAndCitys = CountryAndCity ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelCountry.text = CountryAndCitys.country
        labelCity.text = CountryAndCitys.city
        imageView.image = UIImage(named: CountryAndCitys.imagename)
    }


}

