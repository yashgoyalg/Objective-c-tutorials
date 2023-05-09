//
//  ViewController.m
//  UIPageViewController.obj-c
//
//  Created by SwordMac32 on 04/05/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lblScreenLabel.text = self.txtTittle;
    self.ivScreenImage.image=[UIImage imageNamed:self.imgFile];
    // Do any additional setup after loading the view.
}
-(void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

@end
