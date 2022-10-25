//
//  CardSelectionVC.swift
//  CardWorkout
//
//  Created by Maciej Szostak on 17/10/2022.
//

import UIKit

class CardSelectionVC: UIViewController {

    @IBOutlet var cardImageView: UIImageView!
    @IBOutlet var buttons: [UIButton]!

    var cards: [UIImage] = Card.allValues
    
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
        
        for button in buttons {
            button.layer.cornerRadius = 8
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        timer.invalidate()
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomImage() {

        cardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
        cardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
        print("Timer fired off after 0.5second")
        
    }
    
    @IBAction func stopButtonTapped(_ sender: Any) {

    
    }
    
    @IBAction func restartButtonTapped(_ sender: Any) {
        
    }
    
    @IBAction func rulesButtonTapped(_ sender: Any) {
        timer.invalidate()
    }
    
}
