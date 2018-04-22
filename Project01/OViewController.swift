//
//  OViewController.swift
//  Project01
//
//  Created by SWUCOMPUTER on 2018. 4. 22..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class OViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var label: UILabel!
    
    
    
    
    @IBAction func button(_ sender: Any) {
        
        if (PlacementAnswer == 0){
            label.text = textField.text! + "님은 여성으로 밝고 성격이 좋기로 유명합니다. 보통 활발하고 밝다는 소리를 많이 듣는 편이지요. 긍정적인 마인드와 외향적인 성격 덕에 인맥이 넓고 인기가 많은 편입니다."
        }
            
        else {
            label.text = textField.text! +
            "님은 남성으로 긍정적이며 외향적인 성격을 가지고 있습니다. 사교성이 좋지만 자존심이 강하고 고집이 센 편입니다. 그렇기 때문에 힘든 내색을 잘 하지 않고 혼자 해결하려는 성향이 강하죠. 그만큼 책임감이 강하고 추진력이 좋습니다."
        }
        
    }
    
    var PlacementAnswer = 0
    
    let gender = ["여자", "남자"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
        
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return gender[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return gender.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        PlacementAnswer = row
        
    }
    
    
    override func viewDidLoad() {
        self.textField.delegate = self
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return (true)
    }
    
    
    
}
