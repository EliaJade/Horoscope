//
//  SessionManager.swift
//  Horoscope
//
//  Created by Mañanas on 14/5/25.
//

import Foundation

class SessionManager {
    let defaults = UserDefaults.standard
    
    func setFavorite(id: String){
        defaults.setValue(id, forKey: "FAVORITE_HOROSCOPE")
    }
    
    func getFavorite() -> String {
        defaults.string(forKey: "FAVORITE_HOROSCOPE") ?? ""
        
    }
    
    func isFavorite(id:String) -> Bool {
        return id == getFavorite()
    }
}
