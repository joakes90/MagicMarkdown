//
//  ConmposeViewController.swift
//  Magic Markdown
//
//  Created by Justin Oakes on 5/16/16.
//  Copyright © 2016 Oklasoft LLC. All rights reserved.
//

import UIKit
import OKSGutteredCodeView

class ConmposeViewController: UIViewController {

    @IBOutlet weak var composeView: OKSGutteredCodeView!
    @IBOutlet weak var previewWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let toolbar: UIToolbar = UIToolbar(frame: CGRectMake(0, 0, 100, 70))
        let quoteButton: UIBarButtonItem = UIBarButtonItem(image: UIImage(named: "quote3x"), style: .Plain, target: nil, action: nil)
        let linkButton: UIBarButtonItem = UIBarButtonItem(image: UIImage(named: "Link3x"), style: .Plain, target: nil, action: nil)
        let imageButton: UIBarButtonItem = UIBarButtonItem(image: UIImage(named: "Image3x"), style: .Plain, target: nil, action: nil)
        let codeButton: UIBarButtonItem = UIBarButtonItem(image: UIImage(named: "Code3x"), style: .Plain, target: nil, action: nil)
        let flexSpace: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .FlexibleSpace, target: nil, action: nil)
        let fixedSpace: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .FixedSpace, target: nil, action: nil)
        fixedSpace.width = 40
        toolbar.items = [flexSpace, quoteButton, fixedSpace, linkButton, fixedSpace, imageButton, fixedSpace, codeButton, flexSpace]
        
        self.composeView.addTextViewAccessoryView(toolbar)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
