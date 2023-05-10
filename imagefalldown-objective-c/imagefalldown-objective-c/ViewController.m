//
//  ViewController.m
//  imagefalldown-objective-c
//
//  Created by SwordMac32 on 09/05/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    timer=[NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(helper) userInfo:nil repeats:YES];
    
}
-(void)helper{
    _img.center = CGPointMake(_img.center.x, _img.center.y+5);
}


@end
