//
//  RedVC.swift
//  HomeWork12
//
//  Created by Nata on 22.06.2021.
//

import UIKit

class RedVC: UIViewController {

    @IBOutlet weak var redText: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    var name2 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redText.text = name2
        setupNextButton()

    }
    
    @IBAction func button() {
        performSegue(withIdentifier: "fromRedToStart", sender: nil)
    }
    private func setupNextButton() {
        nextButton.setTitle("Next", for: .normal)
        nextButton.tintColor = .white
        nextButton.backgroundColor = .black
    }
    deinit {
        print("RedVC deinited")
    }
}
