//
//  Link.swift
//  URLSession1
//
//  Created by Иса on 19.11.2022.
//

enum Link: String {
    case urlOne = "https://api.agify.io/?name=bella"
    case urlTwo = "https://www.boredapi.com/api/activity"
    case urlThree = "https://www.7timer.info/bin/astro.php?lon=113.2&lat=23.1&ac=0&unit=metric&output=json&tzshift=0"
    case urlFour = "https://api.coindesk.com/v1/bpi/currentprice.json"
}


// For urlOne
//struct Bella: Decodable {
//    let age: Int
//    let count: Int
//    let name: String
//}
// End struct Bella



// For urlTwo
//struct Bored: Decodable {
//    let activity: String
//    let type: String
//    let participants: Int
//    let price: Double
//    let link: String
//    let key: String
//    let accessibility: Double
//}
// End struct Bored



 // For urlThree
//struct Websites: Decodable {
//    let product: String
//    let dataseries: [DataSeries]
//}
//
//struct DataSeries: Decodable {
//    let timepoint: Int
//    let cloudcover: Int
//    let seeing: Int
//    let transparency: Int
//    let lifted_index: Int
//    let rh2m: Int
//    let wind10m: Wind10m
//    let temp2m: Int
//    let prec_type: String
//}
//
//struct Wind10m: Decodable {
//    let direction: String
//    let speed: Int
//}
// End structs for urlThree



// For urlFour
struct Coindesk: Decodable {
    let time: Time
    let disclaimer: String
    let chartName: String
    let bpi: BPI
}

struct Time: Decodable {
    let updated: String
    let updatedISO: String
    let updateduk: String
}

struct BPI: Decodable {
    let USD: Currency
    let GBP: Currency
    let EUR: Currency
}

struct Currency: Decodable {
    let code: String
    let symbol: String
    let rate: String
    let description: String
    let rate_float: Float
}
