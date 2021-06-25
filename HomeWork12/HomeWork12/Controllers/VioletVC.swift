//
//  VioletVC.swift
//  HomeWork12
//
//  Created by Nata on 22.06.2021.
//

import UIKit

class VioletVC: UIViewController {

    @IBOutlet weak var violetText: UILabel!
    @IBOutlet weak var nextVioletButton: UIButton!

    var name = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        violetText.text = name
        setupNextVioletButton()

    }
    @IBAction func violetBackToStart() {
        performSegue(withIdentifier: "fromVioletToStart", sender: nil)
    }

    private func setupNextVioletButton() {
        nextVioletButton.setTitle("NEXT", for: .normal)
        nextVioletButton.backgroundColor = .black
        nextVioletButton.tintColor = .white
    }
    deinit {
        print("VioletVC deinited")
    }
}
