//
//  southReviewVC.swift
//  eduquality
//
//  Created by Preisha Mishra on 7/21/22.
//

import UIKit

class southReviewVC: UIViewController {

    struct Question4 {
        let question4: String
        let answers4: [String]
        let correctAnswer4: Int
    }
    
    var questions4: [Question4] = [
        Question4(
        question4: "Which of the following is true?",
        answers4: ["The Central African Republic has one of the highest literacy rates in all of Africa", "32% of youth in the nation are literate.", "The male literacy rate is 49%", "The nation’s male literacy rate is more than twice as high as the female literacy rate"],
        correctAnswer4: 3),
        
        Question4(
        question4: "Why is the female literacy rate so low?",
        answers4: ["School for girls is banned",
                  "Boys learn faster",
                  "Females are forced into child marriage",
                  "None of the above"],
        correctAnswer4: 2),
        
        Question4(
        question4: "Which of the following is false?",
        answers4: ["There is one school teacher for every 64 students",
                  "There is one school teacher for every 80 students",
                  "Twice as many girls than boys do not attend school",
                  "38% of girls in the nation do not attend school"],
        correctAnswer4: 0)
        
]
    
    var currentQuestion4: Question4?
    var currentQuestionPos4 = 0
    var noCorrect4 = 0
    
    
    
    @IBOutlet weak var southQuest: UILabel!
    
    
    @IBOutlet weak var southProgress: UILabel!
    
    
    
    @IBOutlet weak var southAnswer0: UIButton!
    
    @IBOutlet weak var southAnswer1: UIButton!
    
    @IBOutlet weak var southAnswer2: UIButton!
    
    @IBOutlet weak var southAnswer3: UIButton!
    
    
  
    @IBAction func southOption1(_ sender: UIButton) {
        checkAnswer4(idx: 0)
        
        
    }
    
    @IBAction func southOption2(_ sender: UIButton) {
        checkAnswer4(idx: 1)
    }
    
    @IBAction func southOption3(_ sender: UIButton) {
        checkAnswer4(idx: 2)
    }
    
    
    @IBAction func southOption4(_ sender: UIButton) {
        checkAnswer4(idx: 3)
    }
    
    func checkAnswer4(idx: Int){
        if(idx == currentQuestion4!.correctAnswer4){
            noCorrect4 += 1
        }
        loadNextQuestion4()
    }
    
    func loadNextQuestion4(){
        if(currentQuestionPos4 + 1 < questions4.count){
            currentQuestionPos4 +=  1
            currentQuestion4 = questions4[currentQuestionPos4]
            setQuestion4()
        }
        else{
            performSegue(withIdentifier: "showResults4", sender: nil)
        }
    }
    
    
    func setQuestion4(){
        southQuest.text = currentQuestion4!.question4
        southAnswer0.setTitle(currentQuestion4!.answers4[0], for: .normal)
        southAnswer1.setTitle(currentQuestion4!.answers4[1], for: .normal)
        southAnswer2.setTitle(currentQuestion4!.answers4[2], for: .normal)
        southAnswer3.setTitle(currentQuestion4!.answers4[3], for: .normal)
        southProgress.text = " \(currentQuestionPos4 + 1) / \(questions4.count)"
       
    }
    
    override func prepare(for segue4: UIStoryboardSegue, sender: Any?){
        if(segue4.identifier == "showResults4"){
            let vc4 = segue4.destination as! southScoreVC
            vc4.noCorrect4 = noCorrect4
            vc4.total4 = questions4.count
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        currentQuestion4 = questions4[0]
        setQuestion4()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
  

}
