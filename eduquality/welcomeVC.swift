//
//  welcomeVC.swift
//  eduquality
//
//  Created by Preisha Mishra on 7/19/22.
//

import UIKit
import AVFoundation

class welcomeVC: UIViewController {

    @IBOutlet weak var music: UIButton!
    var player: AVAudioPlayer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   
    @IBAction func didTapButton(_ sender: Any) {
        
        if let player = player, player.isPlaying {
            //stop playback
            player.stop()
        } else {
            //set up player, and play
            let urlString = Bundle.main.path(forResource: "childhood", ofType: "mp3")
            
            do{
               try AVAudioSession.sharedInstance().setMode(.default)
               try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                guard let urlString = urlString else {
                    return
               }

                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                
                guard let player = player else {
                    return
                }
                
                player.play()
            
            }
            catch {
                print("something went wrong")
            }
        }
    
        
        
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
