//
//  ViewController.m
//  UISegmentController
//
//  Created by SwordMac32 on 04/05/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize segout,img;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)segac:(id)sender {
    switch (self.segout.selectedSegmentIndex) {
        case 0:
            self.img.image = [UIImage imageNamed:@"facebook.jpeg"];
            break;
        case 1:
            self.img.image = [UIImage imageNamed:@"Linkedin.jpeg"];
            break;
        case 2:
            self.img.image = [UIImage imageNamed:@"Whatsapp.jpeg"];
            break;
        case 3:
            self.img.image = [UIImage imageNamed:@"instagram.jpeg"];
            break;
                              
        default:
            break;
    }
}
@end
