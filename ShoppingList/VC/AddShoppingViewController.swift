//
//  AddShoppingViewController.swift
//  ShoppingList
//
//  Created by Shelan on 2/12/19.
//  Copyright © 2019 Shelan. All rights reserved.
//

import UIKit

class AddShoppingViewController: UIViewController {
    
    // MARK: Outlets

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var segementedControl: UISegmentedControl!
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillShow(with:)),
            name: .UIKeyboardWillShow,
            object: nil
        )
    }
    
    // MARK: Actions
    
    @objc func keyboardWillShow(with notification: Notification) {
        guard let keyboardFrame = notification.userInfo?[""] as? NSValue else { return}
        
        let keyboardHeight = keyboardFrame.cgReactValue.height
    }
    

    @IBAction func cancel(_ sender: UIButton)
    {
        dismiss(animated: true)
    }
    @IBAction func done(_ sender: UIButton) {
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
