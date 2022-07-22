//
//  northReviewVC.swift
//  eduquality
//
//  Created by Preisha Mishra on 7/21/22.
//

import UIKit

class northReviewVC: UIViewController {

    struct Question3 {
        let question3: String
        let answers3: [String]
        let correctAnswer3: Int
    }
    
    var questions3: [Question3] = [
        Question3(
        question3: "Which of the following is true?",
        answers3: ["The Central African Republic has one of the highest literacy rates in all of Africa", "32% of youth in the nation are literate.", "The male literacy rate is 49%", "The nation’s male literacy rate is more than twice as high as the female literacy rate"],
        correctAnswer3: 3),
        
        Question3(
        question3: "Why is the female literacy rate so low?",
        answers3: ["School for girls is banned",
                  "Boys learn faster",
                  "Females are forced into child marriage",
                  "None of the above"],
        correctAnswer3: 2),
        
        Question3(
        question3: "Which of the following is false?",
        answers3: ["There is one school teacher for every 64 students",
                  "There is one school teacher for every 80 students",
                  "Twice as many girls than boys do not attend school",
                  "38% of girls in the nation do not attend school"],
        correctAnswer3: 0)
        
        
]
    var currentQuestion3: Question3?
    var currentQuestionPos3 = 0
    var noCorrect3 = 0
    
    
    @IBOutlet weak var northQuest: UILabel!
    
    
    @IBOutlet weak var northProgress: UILabel!
    
    
    @IBOutlet weak var northAnswer0: UIButton!
    
    
    @IBOutlet weak var northAnswer1: UIButton!
    
    
    @IBOutlet weak var northAnswer2: UIButton!
    
    
    @IBOutlet weak var northAnswer3: UIButton!
    
    

    
    @IBAction func northOption1(_ sender: UIButton) {
        checkAnswer3(idx: 0)
    }
    
    @IBAction func northOption2(_ sender: UIButton) {
        checkAnswer3(idx: 1)
    }
    
    
    @IBAction func northOption3(_ sender: UIButton) {
        checkAnswer3(idx: 2)
    }
    
    

    @IBAction func northOption4(_ sender: UIButton) {
        checkAnswer3(idx: 3)
    }
    
    func checkAnswer3(idx: Int){
        if(idx == currentQuestion3!.correctAnswer3){
            noCorrect3 += 1
        }
        loadNextQuestion3()
    }
    
    func loadNextQuestion3(){
        if(currentQuestionPos3 + 1 < questions3.count){
            currentQuestionPos3 +=  1
            currentQuestion3 = questions3[currentQuestionPos3]
            setQuestion3()
        }
        else{
            performSegue(withIdentifier: "showResults3", sender: nil)
        }
    }
    
    
    func setQuestion3(){
        northQuest.text = currentQuestion3!.question3
        northAnswer0.setTitle(currentQuestion3!.answers3[0], for: .normal)
        northAnswer1.setTitle(currentQuestion3!.answers3[1], for: .normal)
        northAnswer2.setTitle(currentQuestion3!.answers3[2], for: .normal)
        northAnswer3.setTitle(currentQuestion3!.answers3[3], for: .normal)
        northProgress.text = " \(currentQuestionPos3 + 1) / \(questions3.count)"
       
    }
    
    override func prepare(for segue3: UIStoryboardSegue, sender: Any?){
        if(segue3.identifier == "showResults3"){
            let vc3 = segue3.destination as! northScoreVC
            vc3.noCorrect3 = noCorrect3
            vc3.total3 = questions3.count
        }
        
    }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentQuestion3 = questions3[0]
        setQuestion3()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
  
}
