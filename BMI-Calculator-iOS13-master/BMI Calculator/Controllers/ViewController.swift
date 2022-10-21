import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightText: UILabel!
    @IBOutlet weak var heightText: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider){
        heightText.text = "\(String(format:"%.2f",sender.value))m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider){
        weightText.text = "\(String(format:"%.0f",sender.value))kg"
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        calculatorBrain.calculateBMI(height: heightSlider.value, weight: weightSlider.value)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as? resultViewController
            destinationVC?.BMIValue = String(format:"%.1f" ,calculatorBrain.getBMI())
            destinationVC?.BMIColor = calculatorBrain.getColor()
            destinationVC?.BMIAdvice = calculatorBrain.getAdvice()
        }
    }
}

