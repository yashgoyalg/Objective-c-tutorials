//
//  ViewController.h
//  star_rating-objective-c
//
//  Created by SwordMac32 on 08/05/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *btn_out;
- (IBAction)btn_act:(UIButton *)sender;


@end

