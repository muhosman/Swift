import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var storyBrain = StoryBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTitle(storyBrain.titleNumber)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextTitle()
        updateUI()
    }
    
    func updateUI(){
        setTitle(storyBrain.titleNumber)
    }
    
    func setTitle(_ titleNumber:Int){
        storyLabel.text = storyBrain.story[titleNumber].title
        choice1Button.setTitle(storyBrain.story[titleNumber].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.story[titleNumber].choice2, for: .normal)
    }
}

