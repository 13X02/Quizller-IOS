//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Abhijith H on 21/10/22.
//

import Foundation

struct QuizBrain{
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
        
    ]
    var questionNumber = 0
    var score = 0
    mutating func checkAnswer(_ userAnswer : String) -> Bool{
        if quiz[questionNumber].answer == userAnswer{
            score += 1
            return true
        }else{
            return false
        }
    }
    func getQuestionText() -> String{
        return quiz[questionNumber].text
    }
    func getProgress() -> Float{
        return Float(questionNumber) / Float(quiz.count)
    }
    mutating func updateQuestion() {
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
        }else{
            questionNumber = 0
            score = 0
        }
    }
    func getOptionOne() -> String{
        return quiz[questionNumber].answers[0]
    }
    func getOptionTwo() -> String{
        return quiz[questionNumber].answers[1]
    }
    func getOptionThree() -> String{
        return quiz[questionNumber].answers[2]
    }
    func getScore()->Int{
        return score
    }
}
