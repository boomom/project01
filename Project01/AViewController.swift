//
//  AViewController.swift
//  Project01
//
//  Created by SWUCOMPUTER on 2018. 4. 22..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class AViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var label: UILabel!
    
    
    
    
    @IBAction func button(_ sender: Any) {
        
        if (PlacementAnswer == 0){
            label.text = textField.text! + "님은 여성으로 신중한 성격의 소유자입니다. 겉으로 내색하지는 않지만 상처를 잘 받는 편이며 낯가림이 심하지만 한번 친해지면 비밀이 없어지고 엽기적인 반전매력을 소유하고 있죠. 또한 상대방의 말을 잘 들어주며 눈물이 많고 웃음 또한 많은 편입니다."
        }
            
        else {
            label.text = textField.text! +
            "님은 남성으로 꼼꼼한 성격의 소유자이며 완벽함을 추구하는 성향이 강합니다. 배려심이 강하며 주변사람들을 편하게 해주는군요. 하지만 소심한 성격탓에 부끄러움을 많이 타고 튀는 것을 싫어합니다."
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
