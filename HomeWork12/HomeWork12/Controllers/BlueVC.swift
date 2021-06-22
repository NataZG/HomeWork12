//
//  BlueVC.swift
//  HomeWork12
//
//  Created by Nata on 22.06.2021.
//

import UIKit

class BlueVC: UIViewController {

    @IBOutlet weak var blueText: UILabel!
    @IBOutlet weak var nextBlueButton: UIButton!
    
    var name6 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blueText.text = name6
        setupNextBlueButton()
    }
    
    @IBAction func blueBackToStart() {
        performSegue(withIdentifier: "fromBlueToStart", sender: nil)
    }
    
    private func setupNextBlueButton() {
        nextBlueButton.setTitle("NEXT", for: .normal)
        nextBlueButton.backgroundColor = .black
        nextBlueButton.tintColor = .white
    }
    deinit {
        print("BlueVC deinited")
    }
}
