//
//  secondViewController.h
//  protocolanddelegate-objective-c
//
//  Created by SwordMac32 on 11/05/23.
//

#import <UIKit/UIKit.h>
@protocol ABC <NSObject>
-(void)setlastname: (NSString*)lastname;
-(void)setbgcolor: (UIColor*)bgcolor;
-(void)settextcolor: (UIColor*)txtcolor;





NS_ASSUME_NONNULL_BEGIN

@interface secondViewController : UIViewController
- (IBAction)btnsave:(UIButton *)sender;

@end

NS_ASSUME_NONNULL_END
