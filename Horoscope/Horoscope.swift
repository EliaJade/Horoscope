//
//  Horoscope.swift
//  Horoscope
//
//  Created by Mañanas on 12/5/25.
//

import Foundation
import UIKit


struct Horoscope {
    
    let id: String
    let name: String
    let dates: String
    let image: UIImage
    
    static let horoscopeList = [
        Horoscope(id: "aries", name: "Aries", dates: "from March 21 to April 19", image: UIImage(named: "icons-horoscope/aries-svgrepo-com")!),
        Horoscope(id: "taurus", name: "Taurus", dates: "from April 20 to May 20", image: UIImage(named: "icons-horoscope/taurus-svgrepo-com")!),
        Horoscope(id: "gemini", name: "Gemini", dates: "from May 21 to June 21", image: UIImage(named: "icons-horoscope/gemini-svgrepo-com")!),
        Horoscope(id: "cancer", name: "Cancer", dates: "from June 22 to July 22", image: UIImage(named: "icons-horoscope/cancer-svgrepo-com")!),
        Horoscope(id: "leo", name: "Leo", dates: "from July 23 to August 22", image: UIImage(named: "icons-horoscope/leo-svgrepo-com")!),
        Horoscope(id: "virgo", name: "Virgo", dates: "from August 23 to September 22", image: UIImage(named: "icons-horoscope/virgo-svgrepo-com")!),
        Horoscope(id: "libra", name: "Libra", dates: "from September 23 to October 22", image: UIImage(named: "icons-horoscope/libra-svgrepo-com")!),
        Horoscope(id: "scorpio", name: "Scorpio", dates: "from October 23 to November 21", image: UIImage(named: "icons-horoscope/scorpio-svgrepo-com")!),
        Horoscope(id: "sagittarius", name: "Sagittarius", dates: "from November 22 to December 21", image: UIImage(named: "icons-horoscope/sagittarius-svgrepo-com")!),
        Horoscope(id: "capricorn", name: "Capricorn", dates: "from December 22 to January 19", image: UIImage(named: "icons-horoscope/capricorn-svgrepo-com")!),
        Horoscope(id: "aquarius", name: "Aquarius", dates: "from January 20 to February 18", image: UIImage(named: "icons-horoscope/aquarius-svgrepo-com")!),
        Horoscope(id: "pisces", name: "Pisces", dates: "from February 19 to March 20", image: UIImage(named: "icons-horoscope/pisces-svgrepo-com")!)
    ]
    
    static func getAll() -> [Horoscope] {
        
    }
}
