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
        Horoscope(id: "aries", name: "Aries", dates: "March 21 - April 19", image: UIImage(named: "icons-horoscope/aries-svgrepo-com")!),
        Horoscope(id: "taurus", name: "Taurus", dates: "April 20 - May 20", image: UIImage(named: "icons-horoscope/taurus-svgrepo-com")!),
        Horoscope(id: "gemini", name: "Gemini", dates: "May 21 - June 21", image: UIImage(named: "icons-horoscope/gemini-svgrepo-com")!),
        Horoscope(id: "cancer", name: "Cancer", dates: "June 22 - July 22", image: UIImage(named: "icons-horoscope/cancer-svgrepo-com")!),
        Horoscope(id: "leo", name: "Leo", dates: "July 23 - August 22", image: UIImage(named: "icons-horoscope/leo-svgrepo-com")!),
        Horoscope(id: "virgo", name: "Virgo", dates: "August 23 - September 22", image: UIImage(named: "icons-horoscope/virgo-svgrepo-com")!),
        Horoscope(id: "libra", name: "Libra", dates: "September 23 - October 22", image: UIImage(named: "icons-horoscope/libra-svgrepo-com")!),
        Horoscope(id: "scorpio", name: "Scorpio", dates: "October 23 - November 21", image: UIImage(named: "icons-horoscope/scorpio-svgrepo-com")!),
        Horoscope(id: "sagittarius", name: "Sagittarius", dates: "November 22 - December 21", image: UIImage(named: "icons-horoscope/sagittarius-svgrepo-com")!),
        Horoscope(id: "capricorn", name: "Capricorn", dates: "December 22 - January 19", image: UIImage(named: "icons-horoscope/capricorn-svgrepo-com")!),
        Horoscope(id: "aquarius", name: "Aquarius", dates: "January 20 - February 18", image: UIImage(named: "icons-horoscope/aquarius-svgrepo-com")!),
        Horoscope(id: "pisces", name: "Pisces", dates: "February 19 - March 20", image: UIImage(named: "icons-horoscope/pisces-svgrepo-com")!)
    ]
    
    static func getAll() -> [Horoscope] {
    return horoscopeList
}
}
