//
//  ViewController.swift
//  NavigatinDemo2
//
//  Created by Daniil Poplavski on 29.03.2018.
//  Copyright © 2018 Daniil Poplavski. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    @IBOutlet weak var sliderNumber: UISlider!
    
    @IBOutlet weak var textFieldNumber: UITextField!
    
    @IBOutlet weak var laberFromSecondStroyboard: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        laberFromSecondStroyboard.text = text2 ?? "Unknow"
    }
    var text2:String?
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "slider"?:
           let vc = segue.destination as! ViewController2
            vc.text = "\(sliderNumber.value * 100)"
        case "textField"?:
            guard let vc2 = segue.destination as? ViewController2 else { return }
            vc2.text = textFieldNumber.text
            break
        default:
            break
        }
    }

    @IBAction func dissmissAction(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
}
extension ViewController:UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textFieldNumber.resignFirstResponder()
        return false
    }
}
