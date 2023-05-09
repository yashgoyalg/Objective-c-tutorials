//
//  ViewController.h
//  UIPageViewController.obj-c
//
//  Created by SwordMac32 on 04/05/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *ivScreenImage;
@property (strong, nonatomic) IBOutlet UILabel *lblScreenLabel;

@property NSString *imgFile;
@property NSUInteger pageIndex;
@property NSString *txtTittle;

@end

