//
//  Quiz.swift
//  Quiz
//
//  Created by thales Aparecido Silva Carneiro on 03/06/22.
//

import Foundation

class Quiz {
    
    let question: String
    let options: [String]
    private let correctedAnswer: String
    
    init(question: String, options: [String], correctedAnswer: String) {
        
        self.question = question
        self.options = options
        self.correctedAnswer = correctedAnswer
    }
    func validateOption(_ index: Int) -> Bool{
        let answer = options[index]
        
        return answer == correctedAnswer
    }
    deinit {
        print("Liberou quis da memória")
    }
}
