//
//  AbViewController.swift
//  Project01
//
//  Created by SWUCOMPUTER on 2018. 4. 22..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class AbViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var label: UILabel!
    
    
    
    
    @IBAction func button(_ sender: Any) {
        
        if (PlacementAnswer == 0){
            label.text = textField.text! + "님은 여성으로 표현을 잘 안하기 때문에 신비주의라는 소리를 많이 듣습니다. 상대방을 우선 관찰하고 그 사람의 타입을 먼저 알아보는 성격이죠. 직설적이기보다는 돌려말하는 스타일 이지만 상대방에게 상처가 될 수 있는 말을 내뱉은 냉정함도 가지고 있습니다."
        }
            
        else {
            label.text = textField.text! +
            "님은 남성으로 처음에는 낯가림이 심하지만 점점 친해질수록 말이 많아지는 스타일 입니다. a형의 침착한 성격과 b형의 변덕스러운 성격이 공존하는 경우가 많다고 하는대요 합리적이고 협상능력이 탁월하며 자신의 말을 소신있게 잘 하는 성격이라고 합니다."
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
