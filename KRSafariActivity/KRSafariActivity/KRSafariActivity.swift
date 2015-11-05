// The MIT License (MIT)
//
// Copyright (c) 2015 Alexandre Brispot
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Foundation

public class KRSafariActivity: UIActivity {
   private var url: NSURL?
   private var image: UIImage?
   public let KRSafariActivityType: String = "KRSafariActivity"
   
   public override init() {
      super.init()
   }
   
   public init(image: UIImage) {
      super.init()
      self.image = image
   }
   
   public override func activityType() -> String? {
      return KRSafariActivityType
   }
   
   public override func activityTitle() -> String? {
      return NSLocalizedString("activityTitle", tableName: "strings", bundle: NSBundle(forClass: KRSafariActivity.self), value: "", comment: "")
   }
   
   public override func activityImage() -> UIImage? {
      if let image = self.image {
         return image
      }
      return UIImage(named: "KRSafariActivityIcon", inBundle: NSBundle(forClass: KRSafariActivity.self), compatibleWithTraitCollection: nil)
   }
   
   public override func performActivity() {
      guard let url = url else {
         activityDidFinish(false)
         return
      }
      activityDidFinish(UIApplication.sharedApplication().openURL(url))
   }
   
   public override func canPerformWithActivityItems(activityItems: [AnyObject]) -> Bool {
      for activityItem in activityItems {
         if let url = activityItem as? NSURL {
            if UIApplication.sharedApplication().canOpenURL(url) {
               return true
            }
         }
      }
      return false
   }
   
   public override func prepareWithActivityItems(activityItems: [AnyObject]) {
      for activityItem in activityItems {
         if let url = activityItem as? NSURL {
            if UIApplication.sharedApplication().canOpenURL(url) {
               self.url = url
               return
            }
         }
      }
   }
}