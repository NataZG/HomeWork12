//
//  YellowVC.swift
//  HomeWork12
//
//  Created by Nata on 22.06.2021.
//

import UIKit

class YellowVC: UIViewController {

    @IBOutlet weak var yellowText: UILabel!

    @IBOutlet weak var nextYellowButton: UIButton!
    
    var name4 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNextYellowButton()
        yellowText.text = name4
    }
    @IBAction func yellowBackToStart() {
        performSegue(withIdentifier: "fromYellowToStart", sender: nil)
    }
    private func setupNextYellowButton() {
        nextYellowButton.setTitle("NEXT", for: .normal)
        nextYellowButton.backgroundColor = .black
        nextYellowButton.tintColor = .white
    }
    deinit {
        print("YellowVC deinited")
    }
}

