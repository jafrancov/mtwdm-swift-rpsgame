//
//  OptionsViewController.swift
//  P03-RPSGameApp
//
//  Created by Alejandro Franco on 08/02/20.
//  Copyright © 2020 Alejandro Franco. All rights reserved.
//

import UIKit

class OptionsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnClick(_ sender: UIButton) {
        let controller: ResultsViewController
        controller = storyboard?.instantiateViewController(withIdentifier: "ResultsViewController") as! ResultsViewController
        //Pass data to destination viewcontroller. ResultsRPSViewController must be declare myvar as int.
        controller.rpsSelected = sender.tag //pass data.
        present(controller, animated: true, completion: nil)
    }
}
