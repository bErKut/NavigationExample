//
//  ViewControllerB.m
//  NavigationExample
//
//  Created by spb-VBerkuta on 25/01/16.
//  Copyright © 2016 spb-VBerkuta. All rights reserved.
//

#import "ViewControllerB.h"
#import "ViewControllerC.h"
#import "GoBackProtocol.h"

@interface ViewControllerB () <GoBackProtocol>

@end

@implementation ViewControllerB

- (IBAction)presentC:(id)sender
{
    ViewControllerC *modalController = [ViewControllerC new];
    modalController.delegate = self;
    [self presentViewController:modalController animated:YES completion:nil];
}

#pragma mark - GoBackProtocol

- (void)controller:(UIViewController *)controller didPressBackButton:(UIButton *)button
{
    ViewControllerC *modalController = (ViewControllerC *)controller;
    if (button == modalController.buttonB)
    {
        [controller.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    }
    else if (button == modalController.buttonA)
    {
        [controller.presentingViewController dismissViewControllerAnimated:NO completion:nil];
        [self.delegate controller:self didPressBackButton:nil];
    }
}

@end
