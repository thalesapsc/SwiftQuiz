//
//  QuizViewController.swift
//  Quiz
//
//  Created by thales Aparecido Silva Carneiro on 01/06/22.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var viTimer: UILabel!
    @IBOutlet weak var lbQuestion: UILabel!
    @IBOutlet var btAnswers: [UIButton]!
   
    let quizManager = QuizManager()
     
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        viTimer.frame.size.width =  view.frame.size.width
        UIView.animate(withDuration: 60.0, delay: 0, options: .curveLinear, animations: {
            self.viTimer.frame.size.width = 0
    
        }) { (sueccess) in self.showResults()
        }
        
        getNewQuiz()
    }
    
    func getNewQuiz(){
        quizManager.refreshQuiz()
        lbQuestion.text = quizManager.question
        for i in 0..<quizManager.options.count{
            let option = quizManager.options[i]
            let button = btAnswers[i]
            button.setTitle(option, for: .normal)
        }
    }
     
  
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewcontroller = segue.destination as!
        ResultViewController
        resultViewcontroller.totalAnswers = quizManager.totalAnswers
        resultViewcontroller.totalCorrectAnswers = quizManager.totalCorrecteAnswers
        
    }

    
    func showResults(){
        performSegue(withIdentifier: "resultSegue", sender: nil)
        
    }
    
    
    
    @IBAction func selectAnswer(_ sender: UIButton) {
        let index = btAnswers.firstIndex(of: sender)!
        quizManager.validateAnswer(index: index)
        getNewQuiz()
    }
    

}
