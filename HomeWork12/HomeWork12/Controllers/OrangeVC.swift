//
//  OrangeVC.swift
//  HomeWork12
//
//  Created by Nata on 22.06.2021.
//

import UIKit

class OrangeVC: UIViewController {
    
    @IBOutlet weak var orangeText: UILabel!
    @IBOutlet weak var nextOrangeButton: UIButton!
    var name3 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        orangeText.text = name3
        setupNextOrangeButton()
    }
    
    
   
    @IBAction func orangeBackToStart() {
        performSegue(withIdentifier: "fromOrangeToStart", sender: nil)
    }
    private func setupNextOrangeButton() {
        nextOrangeButton.setTitle("NEXT", for: .normal)
        nextOrangeButton.backgroundColor = .black
        nextOrangeButton.tintColor = .white
    }
    
    deinit {
        print("OrangeVC deinited")
    }
}
