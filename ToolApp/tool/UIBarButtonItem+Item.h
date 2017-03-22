//
//  UIBarButtonItem+Item.h
//  ToolApp
//
//  Created by wudongliang on 2017/3/22.
//  Copyright © 2017年 com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Item)

+ (UIBarButtonItem *)barButtonItemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;


@end
