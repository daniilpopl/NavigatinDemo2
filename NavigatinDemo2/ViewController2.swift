//
//  ViewController2.swift
//  NavigatinDemo2
//
//  Created by Daniil Poplavski on 29.03.2018.
//  Copyright © 2018 Daniil Poplavski. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var labelText: UILabel!
    
    var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
            labelText.text = text ?? "Unknow"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
