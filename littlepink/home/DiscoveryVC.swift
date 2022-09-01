//
//  DiscoveryVC.swift
//  littlepink
//
//  Created by ke xu on 2022/8/30.
//

import UIKit
import XLPagerTabStrip

class DiscoveryVC: ButtonBarPagerTabStripViewController ,IndicatorInfoProvider{
      
      override func viewDidLoad() {
            super.viewDidLoad()
      }
      
      func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
            return IndicatorInfo(title: "发现")
      }
      
      override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
            let followVC = storyboard!.instantiateViewController(withIdentifier: kFollowVCID)
            return[followVC,followVC,followVC,followVC,followVC,followVC ]
      }
      
}
