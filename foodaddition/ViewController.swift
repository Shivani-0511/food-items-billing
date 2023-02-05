//
//  ViewController.swift
//  foodaddition
//
//  Created by Apple on 21/12/22.
//

import UIKit

class ViewController: UIViewController {
    let foodItemOrderNumber = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    let foodItemList = ["Pani Puri","Aloo Tikki", "Kathi Roll", "Pav Bhaji", "Vada Pav", "Chole Bhature", "Biryani", "Paratha","Palak Paneer", "Gulab Jamun"]
    let priceList = [20, 30, 40, 60, 20, 100, 150, 65, 190, 40]
    let foodimage = ["panipuri","tikki", "roll", "pavbhaji", "vadapav", "bhature", "biryani", "paratha","palakpaneer", "gulabjamun"]
    @IBOutlet weak var foodnumber1UITextField: UITextField!
    @IBOutlet weak var foodnumber2UITextField: UITextField!
    
    @IBOutlet weak var foodprice1UILabel: UILabel!
    @IBOutlet weak var foodprice2UILabel: UILabel!

    @IBOutlet weak var firstimageUIImageView: UIImageView!
    @IBOutlet weak var secondimageUIImageView: UIImageView!
    @IBOutlet weak var totalUILabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func doneUIButton(_ sender: UIButton) {
        let inputNumber1 = Int(foodnumber1UITextField.text!)!
        let inputNumber2 = Int(foodnumber2UITextField.text!)!
        let foodprice1 = priceList[inputNumber1-1]
        let foodprice2 = priceList[inputNumber2-1]
        let foodpricevalue = foodItemList[inputNumber1-1]
        foodprice1UILabel.text = "food 1 : \(foodprice1)"
        let foodpricevalue1 = foodItemList[inputNumber1-1]
        foodprice2UILabel.text = "food 2 : \(foodprice2)"
        let sum = foodprice1 + foodprice2
        totalUILabel.text = ("Total = \(sum)")
        let imagename1 = foodimage[inputNumber1-1]
        firstimageUIImageView.image = UIImage(named: imagename1)
        let imagename2 = foodimage[inputNumber2-1]
        secondimageUIImageView.image = UIImage(named: imagename2)
    }
}

