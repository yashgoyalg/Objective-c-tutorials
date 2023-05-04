//
//  ViewController.m
//  UICollectionView-obj-c
//
//  Created by SwordMac32 on 03/05/23.
//

#import "ViewController.h"
#import "secoundViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _arrimag= [[NSMutableArray alloc]initWithObjects:@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg"@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg",@"demo.jpeg", nil];
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _arrimag.count;
}
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    UIImageView *imag1= (UIImageView *)[cell viewWithTag:1];
    imag1.image= [UIImage imageNamed:[_arrimag objectAtIndex:indexPath.row]];
    
    return cell;
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    secoundViewController *sec = [self.storyboard instantiateViewControllerWithIdentifier:@"sec"];
    sec.strimage=[_arrimag objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:sec animated:YES];
}

@end
