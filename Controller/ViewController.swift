//
//  ViewController.swift
//  Quizzler-iOS13
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    var quizBrain = QuizBrain()

    var myTimer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
        
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.getProgress()

    }
    
}

