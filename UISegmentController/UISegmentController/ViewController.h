//
//  ViewController.h
//  UISegmentController
//
//  Created by SwordMac32 on 04/05/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *img;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segout;

- (IBAction)segac:(id)sender;

@end

