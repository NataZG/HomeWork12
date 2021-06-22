//
//  IndigoVC.swift
//  HomeWork12
//
//  Created by Nata on 22.06.2021.
//

import UIKit

class IndigoVC: UIViewController {

    @IBOutlet weak var indigoText: UILabel!
    @IBOutlet weak var nextIndigoButton: UIButton!
    
    var name7 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        indigoText.text = name7
        setupNextIndigoButton()

    }
    
    @IBAction func indigoBackToStart() {
        performSegue(withIdentifier: "fromIndigoToStart", sender: nil)
    }
    
    private func setupNextIndigoButton() {
        nextIndigoButton.setTitle("NEXT", for: .normal)
        nextIndigoButton.backgroundColor = .black
        nextIndigoButton.tintColor = .white
    }
    
    deinit {
        print("IndigoVC deinited")
    }
}
