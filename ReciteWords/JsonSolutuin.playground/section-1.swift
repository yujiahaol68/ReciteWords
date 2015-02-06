// Playground - noun: a place where people can play

import UIKit

var url = ("http://fanyi.youdao.com/openapi.do?keyfrom=xxxxxdasdadadf&key=1357665114&type=data&doctype=json&version=1.1&q=unconscious")
var request = NSURLRequest(URL: NSURL(string: url)!)
NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue()) { (response: NSURLResponse!, Data: NSData!, error:NSError!) -> Void in
    var JsonResult:AnyObject! = NSJSONSerialization.JSONObjectWithData(Data, options: NSJSONReadingOptions.AllowFragments, error: nil)
    var translation :AnyObject = JsonResult.objectForKey("translation")!
    var words:String = translation[0] as String
    println(words)
}








