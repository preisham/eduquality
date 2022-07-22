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
        question: "Which factor contributes to the lack of females attending school in Guinea?",
        answers: ["Minimal space in classrooms",
                  "Lack of proper toilet facilities",
                  "They don’t want an education",
                  "None of the above"],
        correctAnswer: 1),
        
        Question(
        question: "Why is education difficult for females living in rural areas in Guinea?",
        answers: ["They are not allowed to attend any schools",
                  "Children in rural areas are banned from going to school",
                 "Families commonly keep girls home to complete housework",
                  "Other"],
        correctAnswer: 2),
        
        Question(
        question: "Which of the following is true? ",
        answers: ["The Central African Republic has one of the highest literacy rates in all of Africa",
                  "32% of youth in the nation are literate.",
                  "The male literacy rate is 49%",
                  "The nation’s male literacy rate is more than twice as high as the female literacy rate"],
        correctAnswer: 3),
        
        Question(
        question: "What percentage of females in CAR get married before turning 18 years old?",
        answers: ["45%",
                  "68%",
                 "72%",
                  "11%"],
        correctAnswer: 1),
        
        Question(
        question: "Which statement is true about Ethiopia?",
        answers: [ "Four out of ten females get married before they turn 18",
            "Eight out of ten females get married before they turn 18",
            "Females are much more likely to have access to basic healthcare than to have access to education",
            "None of the above"],
        correctAnswer: 0),
        
        Question(
        question: "What discrimination do girls face when attending school in Ethiopia?",
        answers: [ "Physical abuse",
                   "Mental abuse",
                   "Sexual violence",
                  "A and C"],
        correctAnswer: 3),
        
        
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
