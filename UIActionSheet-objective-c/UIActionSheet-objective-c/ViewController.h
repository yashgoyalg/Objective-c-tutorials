//
//  ViewController.h
//  UIActionSheet-objective-c
//
//  Created by SwordMac32 on 09/05/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIActionSheetDelegate>
@property (strong, nonatomic) IBOutlet UIImageView *img;

- (IBAction)action:(UIButton *)sender;

@end

