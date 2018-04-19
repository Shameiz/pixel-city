//
//  PopVC.swift
//  pixel-city
//
//  Created by Shameiz Rangwala on 2018-04-15.
//  Copyright © 2018 CodeSchool. All rights reserved.
//

import UIKit

class PopVC: UIViewController,UIGestureRecognizerDelegate {

    @IBOutlet weak var popImageView: UIImageView!
    var passedImage:UIImage!
    func initData(forImage image:UIImage){
        self.passedImage = image
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        addDoubleTap()
        // Do any additional setup after loading the view.
    }
    
    func addDoubleTap(){
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired=2;
        doubleTap.delegate=self;
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenWasDoubleTapped(){
        dismiss(animated: true, completion: nil)
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
