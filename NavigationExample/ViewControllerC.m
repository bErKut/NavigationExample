//
//  ViewControllerC.m
//  NavigationExample
//
//  Created by spb-VBerkuta on 25/01/16.
//  Copyright © 2016 spb-VBerkuta. All rights reserved.
//

#import "ViewControllerC.h"
#import "GoBackProtocol.h"

@interface ViewControllerC ()

@end

@implementation ViewControllerC

- (IBAction)goA:(UIButton *)sender
{
    [self.delegate controller:self didPressBackButton:sender];
}

- (IBAction)goB:(UIButton *)sender
{
    [self.delegate controller:self didPressBackButton:sender];
}

@end
