//
//  ViewController.m
//  DisplayImage-objective-c
//
//  Created by SwordMac32 on 09/05/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (IBAction)btn:(UIButton *)sender {
    _img.image=[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://source.unsplash.com/user/c_v_r/1600x900"]]];
}
@end
