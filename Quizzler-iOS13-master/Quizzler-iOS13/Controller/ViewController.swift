import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionBar: UILabel!
    @IBOutlet weak var FalseButton: UIButton!
    @IBOutlet weak var TrueButton: UIButton!
    @IBOutlet weak var point: UILabel!
    
    var quizBrain = QuizBrain()
    
    @IBAction func AnswerButtonPressed(_ sender: UIButton){
        let questionAnswer:String = sender.currentTitle!
        let userGotRight = quizBrain.checkAnswer(answer : questionAnswer)
        
        if userGotRight{
            sender.backgroundColor = UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target:self, selector: #selector(updateUI), userInfo:nil, repeats: false)
        
        quizBrain.nextQuestion()

        
    }
    override func viewDidLoad() {
        updateUI()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @objc func updateUI(){
        questionBar.text = quizBrain.getQuestion()
        progressBar.progress = quizBrain.getProgress()
        point.text = String(quizBrain.point)
        TrueButton.backgroundColor = UIColor.clear
        FalseButton.backgroundColor = UIColor.clear
    }

}

