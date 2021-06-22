//
//  StartVC.swift
//  HomeWork12
//
//  Created by Nata on 22.06.2021.
//

import UIKit

class StartVC: UIViewController {

    @IBOutlet weak var startText: UILabel!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var orangeButton: UIButton!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var indigoButton: UIButton!
    @IBOutlet weak var violetButton: UIButton!

    var name = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        setupRedButton()
        setupOrangeButton()
        setupYellowButton()
        setupGreenButton()
        setupBlueButton()
        setupIndigoButton()
        setupVioletButton()

        startText.text = name
        startText.textColor = .white
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
              case "fromStartToRed":
                let destination = segue.destination as! RedVC
                destination.name2 = "RED"

              case "fromStartToOrange":
                let destination = segue.destination as! OrangeVC
                destination.name3 = "ORANGE"

              default: break
            }
        }
    
    // @IBAction func oButton() {
       // let storyboard = UIStoryboard(name: "Main", bundle: nil)
        //guard let OrangeVC = storyboard.instantiateViewController(identifier: "OrangeVC") as? OrangeVC else { return }
       // OrangeVC.name3 = "Ivan"

        //show(OrangeVC, sender: nil)
    // }

    private func setupRedButton() {
        redButton.setTitle("R", for: .normal)
    }
    private func setupOrangeButton() {
        orangeButton.setTitle("O", for: .normal)
    }
    private func setupYellowButton() {
        yellowButton.setTitle("Y", for: .normal)
    }
    private func setupGreenButton() {
        greenButton.setTitle("G", for: .normal)
    }
    private func setupBlueButton() {
        blueButton.setTitle("B", for: .normal)
    }
    private func setupIndigoButton() {
        indigoButton.setTitle("I", for: .normal)
    }
    private func setupVioletButton() {
        violetButton.setTitle("V", for: .normal)
    }

    @IBAction func rButton() {
        performSegue(withIdentifier: "fromStartToRed", sender: nil)
    }

    @IBAction func oButton() {
        performSegue(withIdentifier: "fromStartToOrange", sender: nil)
    }
    deinit {
        print("StartVC deinited")
    }
}