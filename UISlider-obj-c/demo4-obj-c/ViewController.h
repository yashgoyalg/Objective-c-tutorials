//
//  ViewController.h
//  demo4-obj-c
//
//  Created by SwordMac32 on 03/05/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UISlider *s1;
@property (strong, nonatomic) IBOutlet UISlider *s2;
@property (strong, nonatomic) IBOutlet UISlider *s3;
- (IBAction)slider:(UISlider *)sender;

@end

