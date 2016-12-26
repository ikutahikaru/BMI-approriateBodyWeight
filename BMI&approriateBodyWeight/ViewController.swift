//
//  ViewController.swift
//  BMI&approriateBodyWeight
//
//  Created by Hikaru Ikuta on 2016/12/21.
//  Copyright © 2016年 Hikaru Ikuta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   //各ラベルボタンを紐付け
    @IBOutlet weak var heightLabel: UITextField!
    @IBOutlet weak var weightLabel: UITextField!
    @IBOutlet weak var bmiText: UILabel!
    @IBOutlet weak var approWeightText: UILabel!
    //TapGestureRecognizerを使う
    @IBAction func tapAction(_ sender: UITapGestureRecognizer) {
        //画面をタップするとキーボードが下がる
        view.endEditing(true)
    }
    
    //計算するボタンが押された時の処理
    @IBAction func caliculateButton(_ sender: UIButton) {
        //定数を定義する（小数点をatukaunodeDouble型）
        let height = Double(heightLabel.text!)
        let weight = Double(weightLabel.text!)
        
        //BMIと適正体重の計算()内の計算が優先される
        var bmi = weight! / (height! * height!)
        var approWeight = height! * height! * 22
        
        //一度掛け算し、roundで再度掛けた分割ることで、四捨五入される
        bmi = bmi * 100
        bmi = round(bmi)/100
        
        approWeight = approWeight * 100
        approWeight = round(approWeight)/100
        
        
        //テキストに表示.\はoptionと¥を同時押し
        bmiText.text = "BMI \(bmi)"
        approWeightText.text = "適正体重 \(approWeight)"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

