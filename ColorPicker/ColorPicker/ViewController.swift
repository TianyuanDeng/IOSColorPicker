//
//  ViewController.swift
//  ColorPicker
//
//  Created by Deng tianyuan on 10/5/18.
//  Copyright © 2018 Deng tianyuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let dataSource = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple"]
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        detailLabel.text = dataSource[row]
        if(row == 0)
        {
            view.backgroundColor = UIColor.red
        }
        else if(row == 1)
        {
            view.backgroundColor = UIColor.orange
        }
        else if(row == 2)
        {
            view.backgroundColor = UIColor.yellow
        }
        else if(row == 3)
        {
            view.backgroundColor = UIColor.green
        }
        else if(row == 4)
        {
            view.backgroundColor = UIColor.blue
        }
        else if(row == 5)
        {
            view.backgroundColor = UIColor.purple
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSource[row]
    }
    
//    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
//    {
//        
//    }
}
