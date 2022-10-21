import UIKit


class resultViewController: UIViewController{
    var BMIValue:String = ""
    var BMIColor:UIColor = UIColor.white
    var BMIAdvice:String = ""
    

    @IBOutlet weak var BMIvalue: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        BMIvalue.text = BMIValue
        view.backgroundColor = BMIColor
        adviceLabel.text = BMIAdvice
    }
    
    @IBAction func reCalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
