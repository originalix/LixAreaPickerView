//
//  ViewController.swift
//  LixAreaPickerView
//
//  Created by Lix on 16/11/25.
//  Copyright © 2016年 Lix. All rights reserved.
//

import UIKit

class ViewController: UIViewController, LixAreaPickerDelegate {
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var subdivisionsPicker: LixAreaPickerView!

    @IBAction func selectPickerType(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            subdivisionsPicker.pickerType = .Province
        case 1:
            subdivisionsPicker.pickerType = .City
        case 2:
            subdivisionsPicker.pickerType = .District
        default:
            break
        }
    }

    func areaPickerDidUpdate(sender: LixAreaPickerView) {
        dataLabel.text = (subdivisionsPicker.province ?? "") + " " + (subdivisionsPicker.city ?? "") + " " + (subdivisionsPicker.district ?? "")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        subdivisionsPicker.pickerDelegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

