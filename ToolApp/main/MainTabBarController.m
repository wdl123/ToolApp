//
//  MainTabBarController.m
//  ToolApp
//
//  Created by wudongliang on 2017/3/21.
//  Copyright © 2017年 com. All rights reserved.
//

#import "MainTabBarController.h"
#import "IndexViewController.h"
#import "SetViewController.h"

@interface MainTabBarController ()

@end
#define HWColor(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define HWRandomColor HwColor(arc4random_uniform(256),arc4random_uniform(256),arc4random_uniform(256))

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //[self.view setBackgroundColor:[UIColor redColor]];
    [self setUpAllChildViewController];
    
}

-(void) setUpAllChildViewController {
    IndexViewController *indexVC = [[IndexViewController alloc] init];
    SetViewController *setVC = [[SetViewController alloc] init];

    [self addChildVC:indexVC image:@"home" selectedImage:@"home-hover" title:@"主页"];
    [self addChildVC:setVC image:@"me" selectedImage:@"me-hover" title:@"我的"];
}

-(void) addChildVC:(UIViewController *)vc image:(NSString *)image selectedImage:(NSString *)selectedImage title:(NSString *)title {
    UINavigationController *navVC = [[UINavigationController alloc] initWithRootViewController:vc];
    vc.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //vc.tabBarItem.badgeValue = @"10";
    //[navVC.navigationBar setBackgroundImage:[UIImage imageNamed:@""] forBarMetrics:UIBarMetricsDefault];
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = [UIColor redColor];
    NSMutableDictionary *selectedtextAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = [UIColor blueColor];
    [vc.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    [vc.tabBarItem setTitleTextAttributes:selectedtextAttrs forState:UIControlStateSelected];
    [self addChildViewController:navVC];
}

-(void) addChildVCByNum:(UIViewController *)vc image:(NSString *)image selectedImage:(NSString *)selectedImage title:(NSString *)title num:(NSNumber *)num {
    UINavigationController *navVC = [[UINavigationController alloc] initWithRootViewController:vc];
    vc.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.badgeValue = num;
    [self addChildViewController:navVC];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
