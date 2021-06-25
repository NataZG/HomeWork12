//
//  RainbowVC.swift
//  HomeWork12
//
//  Created by Nata on 22.06.2021.
//

import UIKit

class RainbowVC: UIViewController {

    @IBOutlet weak var rainbowText: UILabel!

    @IBOutlet weak var finishButton: UIButton!
    var name = ""
    var textfromRainbow = "This is Rainbow!"

    override func viewDidLoad() {
        super.viewDidLoad()
        rainbowText.text = name
        setupFinishButton()
    }

    @IBAction func backToWelcome() {
        performSegue(withIdentifier: "fromSkipToWelcome", sender: textfromRainbow)
    }

    private func setupFinishButton() {
        finishButton.setTitle("FINISH", for: .normal)
        finishButton.backgroundColor = .purple
        finishButton.tintColor = .white
    }
    deinit {
        print("RainbowVC deinited")
    }
// как реализовать этот код :/

    /*: private var firstWord = "This is"
     private var secondWord = "Rainbow"

     var name: String {
         get {
             return firstWord + " " + secondWord
         }
         set(newValue) {
             let split = newValue.components(separatedBy: " ")
             firstWord = split[0]
             secondWord = split[1]
             print("firstWord = \(firstWord), lastName = \(secondWord)")
         }
     }
 */
}
