//
//  DiscoveryVC.swift
//  littlepink
//
//  Created by ke xu on 2022/8/30.
//

import UIKit
import XLPagerTabStrip

class DiscoveryVC: UIViewController ,IndicatorInfoProvider{
      
      override func viewDidLoad() {
            super.viewDidLoad()
            
            // Do any additional setup after loading the view.
      }
      
      
      func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
            return IndicatorInfo(title: "发现")
      }
}
