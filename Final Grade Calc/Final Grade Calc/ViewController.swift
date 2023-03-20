import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var Xcredit: UILabel!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var current: UITextField!
    @IBOutlet weak var desired: UITextField!
    @IBOutlet weak var needed: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    @IBAction func calc(_ sender: UIButton)
    {
        var Desired = Float(desired.text!)!
        
        var Exam = Float(weight.text!)!
        
        var Current = Float(current.text!)!
        
        var finnal = ((Desired * 100) - (100 - Exam ) * (Current)) / Exam 
        
        needed.text = "\(finnal)"
        
        if finnal<=100
        {
            view.backgroundColor=UIColor.green
            
        }
        
        else if finnal > 100
        {
            view.backgroundColor=UIColor.red
            Xcredit.text="You needa ask the teacher for extra credit"
            
        }
        
    }
    
}
