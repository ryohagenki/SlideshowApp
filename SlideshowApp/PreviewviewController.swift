//
//  PreviewController.swift
//  SlideshowApp
//
//  Created by 小柳崚 on 2022/04/27.
//

import UIKit

class PreviewViewController: UIViewController {
    
    @IBOutlet weak var imageView2: UIImageView!
    
    
    
    var image: UIImage!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView2.image = image
        let angle = 90 * CGFloat.pi / 180
        var transRotate = CGAffineTransform()
        transRotate = CGAffineTransform(rotationAngle: CGFloat(angle));
        imageView2.transform = transRotate
        // Do any additional setup after loading the view.
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
