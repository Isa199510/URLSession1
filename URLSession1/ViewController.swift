//
//  ViewController.swift
//  URLSession1
//
//  Created by Иса on 18.11.2022.
//

import UIKit

class ViewController: UIViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showJSON() {
        
        
        // For urlOne
//        guard let url = URL(string: Link.urlOne.rawValue) else { return }
//        URLSession.shared.dataTask(with: url) { data, _, error in
//
//            if let error = error {
//                print(error)
//                return
//            }
//            guard let data = data else { return }
//            do {
//                let decoder = JSONDecoder()
//                let jsonString = try decoder.decode(Bella.self, from: data)
//                print(jsonString.name)
//                print(jsonString.age)
//                print(jsonString.count)
//            } catch {
//                print(error)
//            }
//        }.resume()
        // End urlOne
        
        
        // Start urlTwo
//        guard let url = URL(string: Link.urlTwo.rawValue) else { return }
//
//        URLSession.shared.dataTask(with: url) { data, response, error in
//
//            if let error = error {
//                print(error)
//                return
//            }
//            guard let data = data else { return }
//
//            do {
//                let decoder = JSONDecoder()
//                let jsonString = try decoder.decode(Bored.self, from: data)
//                print(jsonString.activity)
//                print(jsonString.type)
//                print(jsonString.participants)
//                print(jsonString.price)
//                print(jsonString.link)
//                print(jsonString.key)
//                print(jsonString.accessibility)
//            } catch {
//                print(error)
//            }
//        }.resume()
        // End urlTwo
        
        
//        // Start urlThree
//        guard let url = URL(string: Link.urlThree.rawValue) else { return }
//
//        URLSession.shared.dataTask(with: url) { data, response, error in
//            if let error = error {
//                print(error)
//                return
//            }
//            guard let data = data else { return }
//            do {
//                let decoder = JSONDecoder()
//                let jsonString = try decoder.decode(Websites.self, from: data)
//                print(jsonString.product)
//                print(jsonString.dataseries.first?.timepoint)
//                print(jsonString.dataseries.first?.cloudcover)
//                print(jsonString.dataseries.first?.seeing)
//                print(jsonString.dataseries.first?.transparency)
//                print(jsonString.dataseries.first?.lifted_index)
//                print(jsonString.dataseries.first?.rh2m)
//                print(jsonString.dataseries.first?.wind10m)
//                print(jsonString.dataseries.first?.temp2m)
//                print(jsonString.dataseries.first?.prec_type)
//            } catch {
//                print(error)
//            }
//        }.resume()
//        // End urlThree
        
        // Start urlThree
        guard let url = URL(string: Link.urlFour.rawValue) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error)
                return
            }
            guard let data = data else { return }
            do {
                
                let decoder = JSONDecoder()
                let jsonString = try decoder.decode(Coindesk.self, from: data)
                
                let textCurrency = """
\(jsonString.time.updated)
\(jsonString.time.updatedISO)
\(jsonString.time.updateduk)
\(jsonString.disclaimer)
\(jsonString.chartName)
\(jsonString.bpi.USD)
\(jsonString.bpi.GBP)
\(jsonString.bpi.EUR)
"""
                print(textCurrency)
                
            } catch {
                print(error)
            }
        }.resume()
        // End urlThree
    }
}

