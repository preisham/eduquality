//
//  scoreAfricaVC.swift
//  eduquality
//
//  Created by Preisha Mishra on 7/21/22.
//

import UIKit

class scoreAfricaVC: UIViewController {

    var noCorrect = 0
    var total = 0
    
    @IBOutlet weak var africaRemark: UILabel!
    
    @IBOutlet weak var africaResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        africaResult.text = " You got \(noCorrect) out of \(total) correct"
        var percentRight = Double(noCorrect) / Double(total)
        percentRight *= 100
        var title = ""
        if(percentRight < 40) {
            title = "Better luck next time!"
        } else if(percentRight < 70) {
            title = "Almost there!!"
        }else {
            title = "Good job!!! You are now a knowledgeable activist. "
       }
        africaRemark.text = title
        
        

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
