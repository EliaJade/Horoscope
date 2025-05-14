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
    
    @IBOutlet weak var favoriteMenu: UIBarItem!
    
    //MARK: Properties
    var horoscope: Horoscope!
    var isFavorite = false
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        signImageView.image = horoscope.image
        datesLabel.text = horoscope.dates
        navigationItem.title = horoscope.name
        
        isFavorite = SessionManager().isFavorite(id: horoscope.id)
    }
    
    func setFavoriteIcon() {
        if isFavorite {
            favoriteMenu.image = UIImage(systemName: "heart.fill")
        } else {
            favoriteMenu.image = UIImage(systemName: "heart")
        }
    }
    
    
    
    @IBAction func favoriteMenu(_ sender: Any) {
    }
    
}
