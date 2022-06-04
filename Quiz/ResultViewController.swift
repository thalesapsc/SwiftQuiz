//
//  ResultViewController.swift
//  Quiz
//
//  Created by thales Aparecido Silva Carneiro on 01/06/22.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var lbAnswerd: UILabel!
    @IBOutlet weak var lbCorrect: UILabel!
    @IBOutlet weak var lbWrong: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    var totalCorrectAnswers: Int = 0
    var totalAnswers: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbAnswerd.text = "Pertuntas respondidas: \(totalAnswers)"
        lbCorrect.text = "Pertuntas corretas: \(totalCorrectAnswers)"
        lbWrong.text = "Perguntas erradas: \(totalAnswers - totalCorrectAnswers)"
        
        let score = totalCorrectAnswers*100/totalAnswers
        lbScore.text = "\(score)%"
    }
    


    @IBAction func close(_ sender: Any) {
        dismiss(animated: true,completion: nil)
    }
}
    


