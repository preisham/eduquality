//
//  resourceLinksVC.swift
//  eduquality
//
//  Created by Preisha Mishra on 7/22/22.
//

import UIKit

class resourceLinksVC: UIViewController {

    @IBOutlet weak var womenOneButton: UIButton!
    
    @IBOutlet weak var malalaButton: UIButton!
    
    @IBOutlet weak var organizationButton: UIButton!
    
    @IBOutlet weak var genderInequalityButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        womenOneButton.addTarget(self, action: #selector(openLink), for: .touchUpInside)
        malalaButton.addTarget(self, action: #selector(openLink), for: .touchUpInside)
        organizationButton.addTarget(self, action: #selector(openLink), for: .touchUpInside)
        genderInequalityButton.addTarget(self, action: #selector(openLink), for: .touchUpInside)
    }
    
   @objc func openLink() {
        if let urlToOpen = URL(string: "https://www.womenone.org/") {
            UIApplication.shared.open(urlToOpen, options: [:], completionHandler: nil)
        }
    
    if let urlToOpen = URL(string: "https://malala.org/") {
        UIApplication.shared.open(urlToOpen, options: [:], completionHandler: nil)
    }
       if let urlToOpen = URL(string: "https://www.cnn.com/2016/09/28/world/iyw-girl-up-michelle-obama-girls-education-how-to-help/index.html") { UIApplication.shared.open(urlToOpen, options: [:], completionHandler: nil)}
       if let urlToOpen = URL(string: "https://p4hglobal.org/p4h-blog/2019/4/12/gender-inequality-in-education") {
           UIApplication.shared.open(urlToOpen, options: [:], completionHandler: nil)
       }
   }
}
