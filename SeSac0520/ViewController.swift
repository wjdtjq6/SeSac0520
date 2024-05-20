//
//  ViewController.swift
//  SeSac0520
//
//  Created by t2023-m0032 on 5/20/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label3: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label1: UILabel!
    
    @IBOutlet var button3: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //labelName: 매개변수
        //label1,2,3,: 전달인자 argument
        designLabelUI(label1, thisIsTextColor: .red)
        designLabelUI(label2, thisIsTextColor: .blue)
        designLabelUI(label3, thisIsTextColor: .green)
        designButtonUI() // 함수 호출 연산자
    }
    //매개변수 parameter
    //외부 매개변수(thisIsTextColor) argument label
    //내부 매개변수(color) parameter name
    //_ : wild card 식별자

    func designLabelUI(_ a: UILabel, thisIsTextColor color: UIColor) {
        a.text = "0"
        a.textColor = color
        a.font = .monospacedDigitSystemFont(ofSize: 20.0, weight: .semibold)
        a.textAlignment = .center
        a.layer.borderWidth = 1
    }
    lazy var buttons = [button1, button2, button3]
    
    //매게변수 parameter
    func designButtonUI() {
        for i in buttons {
            i!.setTitle("버튼", for: .normal)
            i!.setTitleColor(.magenta, for: .normal)
            i!.setTitleColor(.clear, for: .highlighted)
            i!.layer.borderColor = UIColor.black.cgColor
            i!.layer.borderWidth = 2
            i!.layer.cornerRadius = 10
            i!.layer.backgroundColor = UIColor.secondaryLabel.cgColor
        }
    }
    var count1 = 0
    var count2 = 0
    var count3 = 0

    @IBAction func button1Pressed(_ sender: UIButton) {
        count1 += 1
        label1.text = "\(count1)"
    }
    
    @IBAction func button2Pressed(_ sender: UIButton) {
        count2 += 1
        label2.text = "\(count2)"
    }
    
    @IBAction func button3Pressed(_ sender: UIButton) {
        count3 += 1
        label3.text = "\(count3)"
    }
}

