//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Abhijith H on 21/10/22.
//

import Foundation

struct Question{
    let text : String
    let answers : [String]
    let answer : String
    init(q:String,a:[String],correctAnswer:String){
        text = q
        answers = a
        answer = correctAnswer
    }
}
