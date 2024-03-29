
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    func buttonAlphaAnimate(_ sender:UIButton){
        UIView.animate(withDuration: 0.3) {
            sender.alpha = 0.5
        }
        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3 ) {
            UIView.animate(withDuration: 0.3) {
                sender.alpha = 1.0
            }
        }
    }

    
    
    func playSound(soundName:String){
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    @IBAction func keyPressed(sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
        buttonAlphaAnimate(sender)
        
    }
    
}








