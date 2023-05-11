//
//  ViewController.m
//  GIF_Animation-objective-c
//
//  Created by SwordMac32 on 10/05/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize img;
- (void)viewDidLoad {
    [super viewDidLoad];

    
    // Do any additional setup after loading the view.
}


- (IBAction)btn:(UIButton *)sender {
    img.animationImages=[[NSArray alloc]initWithObjects:
                         [UIImage imageNamed:@"1.gif"],
                         [UIImage imageNamed:@"2.gif"],
                         [UIImage imageNamed:@"3.gif"],
                         [UIImage imageNamed:@"4.gif"],
                         [UIImage imageNamed:@"5.gif"],
                         [UIImage imageNamed:@"6.gif"],
                         [UIImage imageNamed:@"7.gif"],
                         [UIImage imageNamed:@"8.gif"],
                         [UIImage imageNamed:@"9.gif"],
                         [UIImage imageNamed:@"10.gif"],
                         [UIImage imageNamed:@"11.gif"],
                         [UIImage imageNamed:@"12.gif"],
                         [UIImage imageNamed:@"13.gif"],
                         [UIImage imageNamed:@"14.gif"],
                         [UIImage imageNamed:@"15.gif"],
                         [UIImage imageNamed:@"16.gif"],
                         [UIImage imageNamed:@"17.gif"],
                         [UIImage imageNamed:@"18.gif"],nil];
    img.animationDuration=2;
    [img setAnimationRepeatCount:0];
    [img startAnimating];
}
@end
