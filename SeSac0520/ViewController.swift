//
//  ViewController.swift
//  SeSac0520
//
//  Created by t2023-m0032 on 5/20/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelList: [UILabel]!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label1: UILabel!
    
    @IBOutlet var button3: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button1: UIButton!
    
    @IBOutlet var alertLabel: UILabel!
    var counts = [0, 0, 0]
    
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

    @IBAction func button1Pressed(_ sender: UIButton) {
        counts[sender.tag] += sender.tag + 1

        labelList[sender.tag].text = "\(counts[sender.tag])"

        if counts[0] == counts[1] && counts[0] == counts[2] {
            alertLabel.text = "congraturaion!!! the number is \(counts[0])"
            alertLabel.textAlignment = .center
        }
        else {
            alertLabel.text = "Try again"
            alertLabel.textAlignment = .center
        }
    }
}

