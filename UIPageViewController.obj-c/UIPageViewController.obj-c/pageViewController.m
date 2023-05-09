//
//  pageViewController.m
//  UIPageViewController.obj-c
//
//  Created by SwordMac32 on 04/05/23.
//

#import "pageViewController.h"
#import "ViewController.h"
@interface pageViewController ()
{
    NSArray *arrimg;
}

@end

@implementation pageViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    arrimg=[[NSArray alloc]initWithObjects:@"demo.jpeg",@"wharsapp.jpeg",@"facebook.jpeg", nil];
    self.dataSource=self;
    ViewController * vc=(ViewController *)[self viewcontorllerAtIndex:0];
    NSArray * arr=[NSArray arrayWithObject:vc];
    [self setViewControllers:arr direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    // Do any additional setup after loading the view.
}


//Helper Method
-(UIViewController *)viewcontorllerAtIndex:(NSUInteger)index
{
    ViewController *view1=[self.storyboard instantiateViewControllerWithIdentifier:@"view"];
    view1.strimg=arrimg[index];//images count
    view1.valueindex=index;//index value throught count
    return view1;
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger index=((ViewController *)viewController).valueindex;
    if (index == 0 || index == NSNotFound)
    {
        return nil;
    }
    index--;
    return [self viewcontorllerAtIndex:index];
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger index=((ViewController *)viewController).valueindex;
    if (index == NSNotFound)
    {
        return nil;
    }
    index++;
    if (index == arrimg.count)
    {
        return nil;
    }
    return [self viewcontorllerAtIndex:index];
}

@end
