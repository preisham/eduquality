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
        question4: "What does the organization CENIT do?",
        answers4: ["Encourages girls to envision successful futures",
                   "Provides a variety of services while decreasing abuse in workplaces",
                   "Rehabilitizes schools in rural areas",
                   "Runs girls clubs"],
        correctAnswer4: 1),
        
        Question4(
        question4: "What percentage of girls are subjected to some sort of abuse?",
        answers4: ["17%",
                  "68%",
                   "78%",
                   "50%"],
        correctAnswer4: 2),
        
        Question4(
        question4: "What is the Centro Educativo Mbaracayu?",
        answers4: ["A non-profit organization",
                   "A boarding school for girls",
                   "A government organization",
                   "A forest nature reserve"],
        correctAnswer4: 1),
       
        Question4(
        question4: "What causes the gender gap in education?",
        answers4: ["Girls getting married at a young age",
                   "Girls dropping out of school",
                   "Poverty",
                   "All of the above"],
        correctAnswer4: 3),

        
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
