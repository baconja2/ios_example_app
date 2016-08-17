//
//  GameViewController.swift
//  Example
//
//  Created by John Bacon on 8/17/16.
//  Copyright © 2016 Example, Inc. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  @IBAction func swipeRecognized(_ sender: UISwipeGestureRecognizer) {
    switch sender.state {
    case UIGestureRecognizerState.recognized:
      switch sender.direction {
      case UISwipeGestureRecognizerDirection.down:
        NSLog("swiped down - paper")
      case UISwipeGestureRecognizerDirection.right:
        NSLog("swiped right - rock")
      case UISwipeGestureRecognizerDirection.left:
        NSLog("swiped left - scissors")
      default:
        NSLog("swiped but i don't care")
      }
    default: break
      // do nothing
    }
  }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
