//
//  RootViewController.h
//  UIPageViewController.obj-c
//
//  Created by SwordMac32 on 05/05/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RootViewController : UIViewController<UIPageViewControllerDataSource>

@property (nonatomic,strong) UIPageViewController *PageViewController;
@property (nonatomic,strong) NSArray *arrPageTitles;
@property (nonatomic,strong) NSArray *arrPageImages;

- (PageContentViewController *)viewControllerAtIndex:(NSUInteger)index;
- (IBAction)btnStartAgain:(id)sender;

@end

NS_ASSUME_NONNULL_END
