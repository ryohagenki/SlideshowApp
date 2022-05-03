//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 小柳崚 on 2022/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var nowIndex:Int = 0
    
    var timer: Timer!
    
    var imageArray:[UIImage] = [
            UIImage(named: "cafe1")!,
            UIImage(named: "cafe2")!,
            UIImage(named: "cafe3")!
        ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func slideShowButton(_ sender: Any) {
        
        if (timer == nil) {

            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
                } else {
                    timer.invalidate()
                    timer = nil
                }
    }
    
    @IBAction func backButton(_ sender: Any) {
        if (timer == nil) {
            nowIndex -= 1
        if (nowIndex == -1) {
            nowIndex += 3
        }
        imageView.image = imageArray[nowIndex]
        }
    }
    
    @IBAction func nextButton(_ sender: Any) {
        if (timer == nil) {
            nowIndex += 1
        if (nowIndex == 3) {
            nowIndex -= 3
        }
        imageView.image = imageArray[nowIndex]
        }
    }
    
    @objc func changeImage() {

        nowIndex += 1
        if (nowIndex == imageArray.count) {
            nowIndex = 0
        }
        imageView.image = imageArray[nowIndex]
    }
    
    @IBAction func imageViewTapped(_ sender: Any) {
        performSegue(withIdentifier: "exit", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
            let previewViewController: PreviewViewController
                 = segue.destination as! PreviewViewController
            previewViewController.image = imageArray[nowIndex]
    }
    
    
}

