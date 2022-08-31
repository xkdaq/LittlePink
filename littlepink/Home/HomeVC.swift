//
//  HomeVC.swift
//  littlepink
//
//  Created by ke xu on 2022/8/30.
//

import UIKit
import XLPagerTabStrip

class HomeVC: ButtonBarPagerTabStripViewController {
      
      override func viewDidLoad() {
            settings.style.selectedBarBackgroundColor = UIColor(named: "main")!
            settings.style.selectedBarHeight = 3
            
            settings.style.buttonBarItemBackgroundColor = .clear
            settings.style.buttonBarItemTitleColor = .label
            settings.style.buttonBarItemFont = .systemFont(ofSize: 16)
            
            super.viewDidLoad()
            
            //设置scollview不让左右外滑动
            containerView.bounces = false
            changeCurrentIndexProgressive = { (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
                  guard changeCurrentIndex == true else { return }
                  
                  //未选中
                  oldCell?.label.textColor = .secondaryLabel
                  //选中
                  newCell?.label.textColor = .label
            }
            
            //在主线程执行
            //            DispatchQueue.main.async {
            //                  self.moveToViewController(at: 1,animated: true)
            //            }
            
            
      }
      
      
      override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
            let followVC = storyboard!.instantiateViewController(withIdentifier: kFollowVCID)
            let nearByVC = storyboard!.instantiateViewController(withIdentifier: kNearByVCID)
            let discoveryVC = storyboard!.instantiateViewController(withIdentifier: kDiscoveryVCID)
            return[discoveryVC, followVC, nearByVC]
      }
      
      
}
