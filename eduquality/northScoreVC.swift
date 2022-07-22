//
//  northScoreVC.swift
//  eduquality
//
//  Created by Preisha Mishra on 7/21/22.
//

import UIKit

class northScoreVC: UIViewController {
    var noCorrect3 = 0
    var total3 = 0
    
    
    @IBOutlet weak var northRemark: UILabel!
    
    
    @IBOutlet weak var northResult: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        northResult.text = " You got \(noCorrect3) out of \(total3) correct"
        var percentRight3 = Double(noCorrect3) / Double(total3)
        percentRight3 *= 100
        var title = ""
        if(percentRight3 < 40) {
            title = "Better luck next time!"
        } else if(percentRight3 < 70) {
            title = "Almost there!!"
        }else {
            title = "Good job!!! You are now a knowledgeable activist. "
       }
        northRemark.text = title
    
        }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    }

