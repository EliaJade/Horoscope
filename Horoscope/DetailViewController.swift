//
//  DetailViewController.swift
//  Horoscope
//
//  Created by Mañanas on 14/5/25.
//

import UIKit

class DetailViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var signImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var datesLabel: UILabel!
    
    //MARK: Properties
    var horoscope: Horoscope!
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        signImageView.image = horoscope.image
        datesLabel.text = horoscope.dates
        navigationItem.title = horoscope.name
    }
    

}
