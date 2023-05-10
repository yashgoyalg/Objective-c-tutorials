//
//  ViewController.m
//  Scrollview-objective-c
//
//  Created by SwordMac32 on 09/05/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize scroll;
- (void)viewDidLoad {
    [super viewDidLoad];
    [scroll setScrollEnabled:YES];
    [scroll setContentSize:CGSizeMake(365, 650)];
    // Do any additional setup after loading the view.
}


@end
