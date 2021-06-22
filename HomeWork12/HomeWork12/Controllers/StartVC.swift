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

    @IBOutlet weak var skipAllButton: UIButton!
    
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
        setupSkipAllButton()

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

        case "fromStartToYellow":
            let destination = segue.destination as! YellowVC
            destination.name4 = "YELLOW"
            
        case "fromStartToGreen":
            let destination = segue.destination as! GreenVC
            destination.name5 = "GREEN"
            
        case "fromStartToBlue":
            let destination = segue.destination as! BlueVC
            destination.name6 = "BLUE"

        default: break
        }
    }

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
    private func setupSkipAllButton() {
        skipAllButton.setTitle("SKIP", for: .normal)
    }

    @IBAction func rButton() {
        performSegue(withIdentifier: "fromStartToRed", sender: nil)
    }

    @IBAction func oButton() {
        performSegue(withIdentifier: "fromStartToOrange", sender: nil)
    }
    @IBAction func yButton() {
        performSegue(withIdentifier: "fromStartToYellow", sender: nil)
    }
    @IBAction func gButton() {
        performSegue(withIdentifier: "fromStartToGreen", sender: nil)
    }
    @IBAction func bButton() {
        performSegue(withIdentifier: "fromStartToBlue", sender: nil)
    }
    deinit {
        print("StartVC deinited")
    }
}
