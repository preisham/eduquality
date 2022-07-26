//
//  asiaScoreVC.swift
//  eduquality
//
//  Created by Preisha Mishra on 7/21/22.
//

import UIKit

class asiaScoreVC: UIViewController {
    
    var noCorrect2 = 0
    var total2 = 0

    
    
    @IBOutlet weak var asiaRemark: UILabel!
    
    @IBOutlet weak var asiaScore: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        asiaScore.text = " You got \(noCorrect2) out of \(total2) correct"
        var percentRight2 = Double(noCorrect2) / Double(total2)
        percentRight2 *= 100
        var title = ""
        if(percentRight2 < 40) {
            title = "Better luck next time!"
        } else if(percentRight2 < 70) {
            title = "Almost there!!"
        }else {
            title = "Good job!!! You are now a knowledgeable activist. "
       }
        asiaRemark.text = title
    
        }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    }
