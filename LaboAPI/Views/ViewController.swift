//
//  ViewController.swift
//  LaboAPI
//
//  Created by Benjamin on 16/09/2020.
//  Copyright © 2020 Benjamin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        NetworkService.getData()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

