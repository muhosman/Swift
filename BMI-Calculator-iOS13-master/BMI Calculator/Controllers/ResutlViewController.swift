import UIKit


class resultViewController: UIViewController{
    var BMIValue:String = ""
    

    @IBOutlet weak var BMIvalue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        BMIvalue.text = BMIValue
        
    }
    
    @IBAction func reCalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
