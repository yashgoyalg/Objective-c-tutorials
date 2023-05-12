//
//  ViewController.m
//  Tags-objective-c
//
//  Created by SwordMac32 on 11/05/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //for tag 1
    UILabel *lbl = (UILabel *)[self.view viewWithTag:1];
    lbl.text = @"Hello I'm Yash";
    lbl.textColor = [UIColor redColor];
    lbl.textAlignment = NSTextAlignmentCenter;
    lbl.backgroundColor = [UIColor blackColor];
    
    //for tag 2
    UIButton *btn = (UIButton *)[self.view viewWithTag:2];
    

}


@end
