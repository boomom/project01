//
//  BViewController.swift
//  Project01
//
//  Created by SWUCOMPUTER on 2018. 4. 22..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class BViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var label: UILabel!
    
    
    
    
    @IBAction func button(_ sender: Any) {
        
        if (PlacementAnswer == 0){
            label.text = textField.text! + "님은 여성으로 자존심이 무척 강하며 자신이 정해 놓은 기준을 침범하는 것을 무척 싫어합니다. 자기주의적 성향이 강하며 상황에 따라 자신의 감정에 매우 솔직합니다. 또한 자기 사람이라고 생각되는 사람에게는 누구보다 확실히 챙기며 의리가 강합니다."
        }
            
        else {
            label.text = textField.text! +
            "님은 남성으로 외향적인 성격의 소유자 입니다. 따라서 책임감이 강하고 리더십도 뛰어나지요. 또한 호기심이 많아 다양한 분야에 도전하기 때문에 다른 혈액형들에 비해 다양한 경험을 하는 경우가 많습니다."
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
