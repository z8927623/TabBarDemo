//
//  WYNavigationController.h
//  CustomPopAnimation
//
//  Created by wangyang on 6/11/14.
//  Copyright (c) 2014 wangyang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface WYNavigationController : UINavigationController <UINavigationControllerDelegate, UIGestureRecognizerDelegate>

@property (nonatomic, assign) int tag;

@end
