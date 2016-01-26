//
//  ViewControllerB.h
//  NavigationExample
//
//  Created by spb-VBerkuta on 25/01/16.
//  Copyright © 2016 spb-VBerkuta. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol GoBackProtocol;

@interface ViewControllerB : UIViewController

@property (nonatomic, weak) id <GoBackProtocol> delegate;

@end
