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
    
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
        
        for button in buttons {
            button.layer.cornerRadius = 8
        }
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomImage() {
        print("Timer fired off after 0.5second")
        
    }
    
    @IBAction func stopButtonTapped(_ sender: Any) {
    
    }
    
    @IBAction func restartButtonTapped(_ sender: Any) {
        
    }
    
    @IBAction func rulesButtonTapped(_ sender: Any) {
        
    }
    
}
