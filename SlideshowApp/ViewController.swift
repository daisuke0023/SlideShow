//
//  ViewController.swift
//  5.1 image
//
//  Created by 國分大輔 on 2020/10/23.
//  Copyright © 2020 daisuke.kokubu. All rights reserved.
//
import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    var timer:Timer!
    var count = 1
    var image1 = UIImage(named:"DSC_0902_Original")!
    var image2 = UIImage(named:"DSC_0924_Original")!
    var image3 = UIImage(named:"DSC_0925_Original")!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func button(_ sender: UIButton) {
        if count == 1{
        imageView.image = image2
        }
        else if count == 2{
        imageView.image = image3
        }
        else if count == 3{
        imageView.image = image1
            count = 0
        }
        count += 1
    }
    @IBAction func backButton(_ sender: UIButton) {
        if count == 3{
            imageView.image = image2
        }
        else if count == 2{
            imageView.image = image1
        }
        else if count == 1{
            imageView.image = image3
            count = 4
        }
        count -= 1
    }
    @IBAction func slideShow(_ sender: Any) {
        //再生中か判断
        if (timer == nil){
            //再生する (タイマーをセット)
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
        }
        else{
            //タイマーの停止の処理
            timer.invalidate()
            //タイマーの削除
            timer = nil
        }
        }
    @objc func changeImage(){
        count += 1
        if (count == 4){
            count = 1
    }
        if count == 1{
        imageView.image = image2
        }
        else if count == 2{
        imageView.image = image3
        }
        else if count == 3{
        imageView.image = image1
        }
    }
    @IBAction func unwind(_ unwindSegue: UIStoryboardSegue) {
        // Use data from the view controller which initiated the unwind segue
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
              // segueから遷移先のResultViewControllerを取得する
              let secondViewController:SecondViewController = segue.destination as! SecondViewController
        secondViewController.imagex = imageView.image
       }
}
