//
//  ViewController.m
//  Roundbtn-objective-c
//
//  Created by SwordMac32 on 11/05/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize btn;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    btn.layer.borderColor=[UIColor whiteColor].CGColor;
    btn.layer.borderWidth = 1;
    btn.layer.cornerRadius= 25;
}


@end
