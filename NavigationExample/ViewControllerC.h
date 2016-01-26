//
//  ViewControllerC.h
//  NavigationExample
//
//  Created by spb-VBerkuta on 25/01/16.
//  Copyright © 2016 spb-VBerkuta. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "GoBackProtocol.h"

@interface ViewControllerC : UIViewController

@property (nonatomic, weak) id <GoBackProtocol> delegate;

@property (weak, nonatomic) IBOutlet UIButton *buttonA;
@property (weak, nonatomic) IBOutlet UIButton *buttonB;

@end
