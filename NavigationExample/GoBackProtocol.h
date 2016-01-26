//
//  GoBackProtocol.h
//  NavigationExample
//
//  Created by spb-VBerkuta on 25/01/16.
//  Copyright © 2016 spb-VBerkuta. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol GoBackProtocol <NSObject>

- (void)controller:(UIViewController *)controller didPressBackButton:(UIButton *)button;

@end
