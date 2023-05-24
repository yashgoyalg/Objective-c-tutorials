//
//  ViewController.h
//  UIGestureRecognizer-objective-c
//
//  Created by SwordMac32 on 09/05/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *lbl;
@property (strong,nonatomic)UISwipeGestureRecognizer *left;
@property (strong,nonatomic)UISwipeGestureRecognizer *right;
@property (strong,nonatomic)UISwipeGestureRecognizer *top;
@property (strong,nonatomic)UISwipeGestureRecognizer *bottom;




@end

