//
//  LaunchScreenViewController.swift
//  Ainmated Launch screen
//
//  Created by MAC on 22/02/2022.
//  Copyright © 2022 MAC. All rights reserved.

import UIKit

class LaunchScreenViewController: UIViewController {
    
    var colorCodes: [UIColor] = [#colorLiteral(red: 0.3764705882, green: 0.7607843137, blue: 0.4784313725, alpha: 1),#colorLiteral(red: 0.4980392157, green: 0.8980392157, blue: 0.6196078431, alpha: 1),#colorLiteral(red: 0.2705882353, green: 0.5960784314, blue: 0.9647058824, alpha: 1),#colorLiteral(red: 0.431372549, green: 0.3882352941, blue: 0.8392156863, alpha: 1),#colorLiteral(red: 0.9137254902, green: 0.5568627451, blue: 0.5176470588, alpha: 1),#colorLiteral(red: 0.9058823529, green: 0.6392156863, blue: 0.2588235294, alpha: 1),#colorLiteral(red: 0.9215686275, green: 0.9098039216, blue: 0.3176470588, alpha: 1)]
    
    var charIndx: Double = 0

    var timer:Timer!


    override func viewDidLoad() {
        super.viewDidLoad()

        diplayAnimate()

    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

       timer = Timer.scheduledTimer(timeInterval: 5.0, target:self, selector: #selector(updateTimer), userInfo:nil, repeats: true)

        }

        @objc func updateTimer() {

            timer.invalidate()
            naviagteToNextScreen()
    }

        func diplayAnimate()  {

            for colorDisplay in colorCodes {

                Timer.scheduledTimer(withTimeInterval: 0.7 * charIndx, repeats: false) { (timer) in
                    self.view.backgroundColor = colorDisplay
                }
                charIndx += 1

            }
        }

        func naviagteToNextScreen() {

            performSegue(withIdentifier: "goToSecreen", sender: self)

        }
    }
    


    
    // uche Workings to navigate to next screen
    
//var colorCheck:[UIColor]!
//    var charIndx: Double = 0
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        navigateToNextScreen()
//    }
//
//    func navigateToNextScreen() {
//
//        for color in colorCodes {
//            if color == colorCodes.last {
//                print("last color:  \(color)")
//
//                DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
//                    self.performSegue(withIdentifier: "goToSecreen", sender: self)
//                }
//
//            } else {
//
//                Timer.scheduledTimer(withTimeInterval: 0.7 * charIndx, repeats: false) { (timer) in
//                    self.view.backgroundColor = color
//                }
//                charIndx += 1
//            }
//        }
//
//
//    }
//
//}







