//
//  ViewController.swift
//  StickyBottom
//
//  Created by Vendor292 on 4/5/2564 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollview: UIScrollView!
    @IBOutlet weak var buttonTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var myButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let contenHeight = scrollview.contentSize.height
        if contenHeight > self.view.bounds.height, contenHeight != 0 {
            buttonTopConstraint.constant = 20
        } else if contenHeight != 0 {
            let topConstraint = self.view.bounds.height - scrollview.contentSize.height - myButton.bounds.height
            buttonTopConstraint.constant = topConstraint
        }
    }

}

