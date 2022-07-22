//
//  asiaReviewVC.swift
//  eduquality
//
//  Created by Preisha Mishra on 7/21/22.
//

import UIKit

class asiaReviewVC: UIViewController {

    struct Question2 {
        let question2: String
        let answers2: [String]
        let correctAnswer2: Int
    }
    
    var questions2: [Question2] = [
        Question2(
        question2: "Which of the following is a reason for low female enrolment in Afghanistan? ",
        answers2: ["Traditional and cultural norms",
                   "Attitudes toward females",
                   "Lack of female teachers",
                   "All of the above"],
        correctAnswer2: 3),
        
        Question2(
        question2: "What percentage of females in Afghanistan are married before turning 15?",
        answers2: ["15%",
                   "42%",
                   "17%",
                   "34%"],
        correctAnswer2: 2),
        
        Question2(
        question2: "Which of the following is a sanitary issue in Nepal?",
        answers2: ["Toilet’s are often out of order",
                   "Only some schools have gender separated bathrooms",
                   "There aren’t enough sanitary pads available for females on their menstrual cycle",
                   "B and C"],
        correctAnswer2: 3),
        
        Question2(
        question2: "What percentage of Napalese women are married before the age of 18?",
        answers2: ["54%",
                   "39%",
                   "60%",
                   "43%"],
        correctAnswer2: 3),
        
]
    
    var currentQuestion2: Question2?
    var currentQuestionPos2 = 0
    var noCorrect2 = 0
    
    
    @IBOutlet weak var asiaQuest: UILabel!
    
    
    @IBOutlet weak var asiaProgress: UILabel!
    
    
    @IBOutlet weak var asiaAnswer0: UIButton!
    
    
    @IBOutlet weak var asiaAnswer1: UIButton!
    
    
    @IBOutlet weak var asiaAnswer2: UIButton!
    
    
    
    @IBOutlet weak var asiaAnswer3: UIButton!
    
    
    
    @IBAction func asiaOption1(_ sender: UIButton) {
        checkAnswer2(idx: 0)
    }
    
    
    @IBAction func asiaOption2(_ sender: UIButton) {
        checkAnswer2(idx: 1)
    }
    
    
    @IBAction func asiaOption3(_ sender: UIButton) {
        checkAnswer2(idx: 2)
    }
    
    
    @IBAction func asiaOption4(_ sender: UIButton) {
        checkAnswer2(idx: 3)
    }
    
    func checkAnswer2(idx: Int){
        if(idx == currentQuestion2!.correctAnswer2){
            noCorrect2 += 1
        }
        loadNextQuestion2()
    }
    
    func loadNextQuestion2(){
        if(currentQuestionPos2 + 1 < questions2.count){
            currentQuestionPos2 +=  1
            currentQuestion2 = questions2[currentQuestionPos2]
            setQuestion2()
        }
        else{
            performSegue(withIdentifier: "showResults2", sender: nil)
        }
    }
    
    
    func setQuestion2(){
        asiaQuest.text = currentQuestion2!.question2
        asiaAnswer0.setTitle(currentQuestion2!.answers2[0], for: .normal)
        asiaAnswer1.setTitle(currentQuestion2!.answers2[1], for: .normal)
        asiaAnswer2.setTitle(currentQuestion2!.answers2[2], for: .normal)
        asiaAnswer3.setTitle(currentQuestion2!.answers2[3], for: .normal)
        asiaProgress.text = " \(currentQuestionPos2 + 1) / \(questions2.count)"
       
    }
    
    override func prepare(for segue2: UIStoryboardSegue, sender: Any?){
        if(segue2.identifier == "showResults2"){
            let vc2 = segue2.destination as! asiaScoreVC
            vc2.noCorrect2 = noCorrect2
            vc2.total2 = questions2.count
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentQuestion2 = questions2[0]
        setQuestion2()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
  
}
