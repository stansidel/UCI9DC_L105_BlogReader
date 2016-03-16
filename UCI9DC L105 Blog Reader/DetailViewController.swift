//
//  DetailViewController.swift
//  UCI9DC L105 Blog Reader
//
//  Created by Stanislav Sidelnikov on 16/03/16.
//  Copyright © 2016 Stanislav Sidelnikov. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var contentWebView: UIWebView!


    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let contentWebView = self.contentWebView {
                contentWebView.loadHTMLString(detail.valueForKey("content")!.description, baseURL: NSURL(string: "http://googleblog.blogspot.com/"))
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

