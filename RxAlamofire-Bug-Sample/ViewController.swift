//
//  ViewController.swift
//  RxAlamofire-Bug-Sample
//
//  Created by a on 6/13/17.
//  Copyright © 2017 Kizito Nwose. All rights reserved.
//

import UIKit
import RxSwift
import RxAlamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        RxAlamofire.request(urlRequest: ApiRouter.user(withId: "randomm_id_8yma3bw7n"))

    }

}

