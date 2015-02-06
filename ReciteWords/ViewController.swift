//
//  ViewController.swift
//  ReciteWords
//
//  Created by Sherlock.Yu on 15-2-4.
//  Copyright (c) 2015年 Sherlock.Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        LoadData()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func LoadData(){
        var url = ("http://fanyi.youdao.com/openapi.do?keyfrom=xxxxxdasdadadf&key=1357665114&type=data&doctype=json&version=1.1&q=unconscious")
        var request = NSURLRequest(URL: NSURL(string: url)!)
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue()) { (response: NSURLResponse!, Data: NSData!, error:NSError!) -> Void in
            var JsonResult:AnyObject! = NSJSONSerialization.JSONObjectWithData(Data, options: NSJSONReadingOptions.AllowFragments, error: nil)
            var translation :AnyObject = JsonResult.objectForKey("translation")!
            var explains :AnyObject = JsonResult.objectForKey("basic")!
            var word :String = translation[0] as String
            var wordexplains :AnyObject = explains.objectForKey("explains")!
            var ManyExplains :String = wordexplains[0] as String
            println(word)
            println(ManyExplains)
        }
    }
}

