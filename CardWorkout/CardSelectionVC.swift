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
<<<<<<< HEAD
=======
    var cards: [UIImage] = Card.allValues
>>>>>>> CWStoryboardsFinished
    
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
        
        for button in buttons {
            button.layer.cornerRadius = 8
        }
    }
    
<<<<<<< HEAD
=======
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        timer.invalidate()
    }
    
>>>>>>> CWStoryboardsFinished
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomImage() {
<<<<<<< HEAD
=======
        cardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
>>>>>>> CWStoryboardsFinished
        print("Timer fired off after 0.5second")
        
    }
    
    @IBAction func stopButtonTapped(_ sender: Any) {
<<<<<<< HEAD
    
    }
    
    @IBAction func restartButtonTapped(_ sender: Any) {
        
    }
    
    @IBAction func rulesButtonTapped(_ sender: Any) {
        
=======
        timer.invalidate()
    }
    
    @IBAction func restartButtonTapped(_ sender: Any) {
        timer.invalidate()
        startTimer()
    }
    
    @IBAction func rulesButtonTapped(_ sender: Any) {
//        i dont use it because i've used segue present screen modaly , i can delete it but left for explain
>>>>>>> CWStoryboardsFinished
    }
    
}
