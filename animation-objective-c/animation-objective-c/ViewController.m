//
//  ViewController.m
//  animation-objective-c
//
//  Created by SwordMac32 on 09/05/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize iimg;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)animationbtn:(UIButton *)sender {
    iimg.animationImages=[[NSArray alloc]initWithObjects:
                          [UIImage imageNamed:@"emoji.jpg"],[UIImage imageNamed:@"emoji1.jpg"],[UIImage imageNamed:@"emoji.jpg"],[UIImage imageNamed:@"emoji1.jpg"],[UIImage imageNamed:@"emoji.jpg"],[UIImage imageNamed:@"emoji1.jpg"],[UIImage imageNamed:@"emoji.jpg"],[UIImage imageNamed:@"emoji1.jpg"],[UIImage imageNamed:@"emoji.jpg"],[UIImage imageNamed:@"emoji1.jpg"],[UIImage imageNamed:@"emoji.jpg"],[UIImage imageNamed:@"emoji1.jpg"],nil];
    [iimg setAnimationDuration:2];
    [iimg startAnimating];
    
}
@end

