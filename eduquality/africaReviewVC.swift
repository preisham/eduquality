//
//  africaReviewVC.swift
//  eduquality
//
//  Created by Preisha Mishra on 7/21/22.
//

import UIKit

class africaReviewVC: UIViewController {

    struct Question {
        let question: String
        let answers: [String]
        let correctAnswer: Int
    }
    
    var questions: [Question] = [
        Question(
        question: "Which of the following is true?",
        answers: ["The Central African Republic has one of the highest literacy rates in all of Africa", "32% of youth in the nation are literate.", "The male literacy rate is 49%", "The nation’s male literacy rate is more than twice as high as the female literacy rate"],
        correctAnswer: 3),
        
        Question(
        question: "Why is the female literacy rate so low?",
        answers: ["School for girls is banned",
                  "Boys learn faster",
                  "Females are forced into child marriage",
                  "None of the above"],
        correctAnswer: 2),
        
        Question(
        question: "Which of the following is false?",
        answers: ["There is one school teacher for every 64 students",
                  "There is one school teacher for every 80 students",
                  "Twice as many girls than boys do not attend school",
                  "38% of girls in the nation do not attend school"],
        correctAnswer: 0)
        
]
    
    var currentQuestion: Question?
    var currentQuestionPos = 0
    var noCorrect = 0
    
    @IBOutlet weak var africaQuest: UILabel!
    
    
    @IBOutlet weak var africaProgress: UILabel!
    
    
    @IBOutlet weak var answer0: UIButton!
    
    
    @IBOutlet weak var answer1: UIButton!
    
    
    @IBOutlet weak var answer2: UIButton!
    
    
    @IBOutlet weak var answer3: UIButton!
    
    
    @IBAction func option1(_ sender: UIButton) {
        checkAnswer(idx: 0)
        
    }
    
    @IBAction func option2(_ sender: UIButton) {
        checkAnswer(idx: 1)
    }
    
    @IBAction func option3(_ sender: UIButton) {
        checkAnswer(idx: 2)
    }
    
    @IBAction func option4(_ sender: UIButton) {
        checkAnswer(idx: 3)
    }
    
    func checkAnswer(idx: Int){
        if(idx == currentQuestion!.correctAnswer){
            noCorrect += 1
        }
        loadNextQuestion()
    }
    
    func loadNextQuestion(){
        if(currentQuestionPos + 1 < questions.count){
            currentQuestionPos +=  1
            currentQuestion = questions[currentQuestionPos]
            setQuestion()
        }
        else{
            performSegue(withIdentifier: "showResults", sender: nil)
        }
    }
    
    
    func setQuestion(){
        africaQuest.text = currentQuestion!.question
        answer0.setTitle(currentQuestion!.answers[0], for: .normal)
        answer1.setTitle(currentQuestion!.answers[1], for: .normal)
        answer2.setTitle(currentQuestion!.answers[2], for: .normal)
        answer3.setTitle(currentQuestion!.answers[3], for: .normal)
        africaProgress.text = " \(currentQuestionPos + 1) / \(questions.count)"
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if(segue.identifier == "showResults"){
            let vc = segue.destination as! scoreAfricaVC
            vc.noCorrect = noCorrect
            vc.total = questions.count
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        currentQuestion = questions[0]
        setQuestion()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
  
}
