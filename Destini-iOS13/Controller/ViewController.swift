//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var storyBrain: StoryBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI(){
        storyLabel.text = storyBrain.storyInContext.title
        choice1Button.setTitle(storyBrain.storyInContext.choice1.choice, for: .normal)
        choice2Button.setTitle(storyBrain.storyInContext.choice2.choice, for: .normal)
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        storyBrain.handleChoice(choice: sender.currentTitle!)
        
        updateUI()
    }
    

}

