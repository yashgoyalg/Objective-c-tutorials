//
//  pageViewController.h
//  UIPageViewController.obj-c
//
//  Created by SwordMac32 on 04/05/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface pageViewController : UIViewController<UIPageViewControllerDataSource>
@property(nullable, nonatomic, weak) id<UIPageViewControllerDataSource> dataSource;
@end

NS_ASSUME_NONNULL_END
