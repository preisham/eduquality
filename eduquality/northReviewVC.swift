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
        question3: "What accounts for the gender gap in American education? ",
        answers3: ["Boys being seen as more mathematically able",
                   "Girls are undermined in classrooms",
                   "A and B",
                   "None of the Above"],
        correctAnswer3: 2),
        
        Question3(
        question3: "What is the effect of teachers underestimating girls in?",
        answers3: ["Girls have to work harder than boys for the same recognition",
                   "Stereotypes and bias lead girls to underestimate themselves",
                   "The gap of gender  achievement increases",
                   "All of the above"],
        correctAnswer3: 3),
        
        Question3(
        question3: "What percentage of women graduates are involved in mathematics, computer and informational science?",
        answers3: ["20%",
                   "48%",
                  "32%",
                   "23%"],
        correctAnswer3: 2),
        
        Question3(
        question3: "What is a pressing issue in Canadian classrooms?",
        answers3: ["Lack of gender-diversity",
                   "Large gap of gender inequality",
                   "Women are underrepresented in leadership positions",
                   "Nothing!"],
        correctAnswer3: 0),
    
        
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
