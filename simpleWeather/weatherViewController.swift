//
//  weatherViewController.swift
//  simpleWeather
//
//  Created by WonDongHyun on 2022/09/05.
//

import UIKit

class weatherViewController: UIViewController {

    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var tempLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    let cities = ["Busan","Seoul","PyeongYang","Ulsan","Gimpo"]
    let weathers = [
    "cloud.fill","sun.max.fill","wind","cloud.sun.rain.fill"]
    
    @IBAction func changeButton(_ sender: UIButton) {
        
        cityLabel.text = cities.randomElement()
        
        let imageName = weathers.randomElement()!
        
        
        weatherImageView.image = UIImage(systemName: imageName)?.withRenderingMode(.alwaysOriginal)
        
        let randomtemp = Int.random(in: 10..<40)
        
        tempLabel.text = "\(randomtemp)°"
        
        
    }
    
   

}
