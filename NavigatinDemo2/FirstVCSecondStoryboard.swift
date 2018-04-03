//
//  FirstVCSecondStoryboard.swift
//  NavigatinDemo2
//
//  Created by Daniil Poplavski on 29.03.2018.
//  Copyright © 2018 Daniil Poplavski. All rights reserved.
//

import UIKit

class FirstVCSecondStoryboard: UIViewController {
    @IBOutlet weak var TextFieldNumber2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let navigationController = segue.destination as? UINavigationController else { return }
        guard let vc = segue.destination as? ViewController else { return }

            vc.text2 = TextFieldNumber2.text
        }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
