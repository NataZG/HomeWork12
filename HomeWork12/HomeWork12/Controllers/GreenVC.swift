//
//  GreenVC.swift
//  HomeWork12
//
//  Created by Nata on 22.06.2021.
//

import UIKit

class GreenVC: UIViewController {

    @IBOutlet weak var greenText: UILabel!
    @IBOutlet weak var nextGreenButton: UIButton!

    var name5 = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        greenText.text = name5
        setupNextGreenButton()
    }

    @IBAction func greenBacktToStart() {
        performSegue(withIdentifier: "fromGreenToStart", sender: nil)
    }

    private func setupNextGreenButton() {
        nextGreenButton.setTitle("NEXT", for: .normal)
        nextGreenButton.backgroundColor = .black
        nextGreenButton.tintColor = .white
    }
    deinit {
        print("GreenVC deinited")
    }

}
