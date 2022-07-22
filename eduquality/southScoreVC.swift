//
//  southScoreVC.swift
//  eduquality
//
//  Created by Preisha Mishra on 7/21/22.
//

import UIKit

class southScoreVC: UIViewController {

    var noCorrect4 = 0
    var total4 = 0

    
    @IBOutlet weak var southRemark: UILabel!
    
    @IBOutlet weak var southResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        southResult.text = " You got \(noCorrect4) out of \(total4) correct"
        var percentRight4 = Double(noCorrect4) / Double(total4)
        percentRight4 *= 100
        var title = ""
        if(percentRight4 < 40) {
            title = "Better luck next time!"
        } else if(percentRight4 < 70) {
            title = "Almost there!!"
        }else {
            title = "Good job!!! You are now a knowledgeable activist. "
       }
        southRemark.text = title
    
    
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
