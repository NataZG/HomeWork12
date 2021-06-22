//
//  welcomeVC.swift
//  HomeWork12
//
//  Created by Nata on 22.06.2021.
//

import UIKit

class welcomeVC: UIViewController {

    @IBOutlet weak var welcomeText: UILabel!
    @IBOutlet weak var welcomeButton: UIButton!

    var name = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        setupWelcomeText()
        setupWelcomeButton()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "goToStart" else { return }
        guard let destination = segue.destination as? StartVC else { return }
        destination.name = "Follow One by One!"
    }

    @IBAction func unwindToWelcomeVC(_ unwindSegue: UIStoryboardSegue) {
        guard unwindSegue.identifier == "fromSkipToWelcome" else { return }
        guard let source = unwindSegue.source as? RainbowVC else { return }
        welcomeText.text = source.textfromRainbow
    }

    @IBAction func buttonTapped() {
        performSegue(withIdentifier: "goToStart", sender: nil)
    }
    private func setupWelcomeText() {
        welcomeText.text = "MEET ROY G. BIV!"
        welcomeText.textColor = .white
    }
    private func setupWelcomeButton() {
        welcomeButton.setTitle("WHO?", for: .normal)
    }
}


