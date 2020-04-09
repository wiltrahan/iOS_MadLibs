//
//  ViewController.swift
//  MadLibs
//
//  Created by William Trahan on 4/8/20.
//  Copyright © 2020 Wil Trahan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var verbTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    @IBOutlet weak var animalSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberOfPetsStepper: UIStepper!
    @IBOutlet weak var numberSlider: UISlider!
    @IBOutlet weak var happyEndingSwitch: UISwitch!
    
    @IBOutlet weak var containerView: UIView!
    
    
    @IBAction func lessOrMoreValueDidChange(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            containerView.isHidden = true
        } else if sender.selectedSegmentIndex == 1 {
            containerView.isHidden = false
        }
    }
    
    
    @IBAction func sliderDidChange(_ sender: UISlider) {
        numberLabel.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func createStoryDidTapped(_ sender: UIButton) {
        
        let animal = animalSegmentedControl.titleForSegment(at: animalSegmentedControl.selectedSegmentIndex)
        let happyEnding = happyEndingSwitch.isOn ? "Now they live happily ever after" : "Things didn't turn out to well..."
        let story = "At the age of \(ageTextField.text!), \(firstNameTextField.text!) took a trip to \(locationTextField.text!) with \(Int(numberOfPetsStepper.value)) pets in order to \(verbTextField.text!) with a \(animal!). \(firstNameTextField.text!) decided to buy \(Int(numberSlider.value)). \(happyEnding)"
        
        let alertController = UIAlertController(title: "My Story", message: story, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    

}
    
