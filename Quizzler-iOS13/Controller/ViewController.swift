//
//  ViewController.swift
//  Quizzler-iOS13
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var bottomButton: UIButton!
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var middleButton: UIButton!
    var quizBrain = QuizBrain()
    @IBOutlet weak var scoreLabel: UILabel!
    var myTimer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        topButton.setTitle("Hello", for: .normal)
        updateView()
    }
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        
        sender.layer.cornerRadius = 25
        if quizBrain.checkAnswer(userAnswer!) {
            sender.backgroundColor = UIColor.green
            
        }else{
            sender.backgroundColor = UIColor.red

        }
        quizBrain.updateQuestion()

        myTimer.invalidate()
        myTimer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateView), userInfo: nil, repeats: true)
    }
    @objc func updateView(){

        questionLabel.text = quizBrain.getQuestionText()
        topButton.setTitle(quizBrain.getOptionOne(), for: .normal)
        middleButton.setTitle(quizBrain.getOptionTwo(), for: .normal)
        bottomButton.setTitle(quizBrain.getOptionThree(), for: .normal)
        topButton.backgroundColor = UIColor.clear
        bottomButton.backgroundColor = UIColor.clear
        middleButton.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score : \(quizBrain.getScore())"
    }
    
}

