//
//  SecondViewController.swift
//  5.1 image
//
//  Created by 國分大輔 on 2020/10/27.
//  Copyright © 2020 daisuke.kokubu. All rights reserved.
//
import UIKit
class SecondViewController: UIViewController {
    @IBOutlet weak var myImageView: UIImageView!
    var imagex:UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myImageView.image = imagex
    }
    /*
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
