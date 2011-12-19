//
//  TitleView.m
//  Navigationbar
//
//  Created by Xubing Zhang on 11-12-19.
//  Copyright 2011 Ad-Sage. All rights reserved.
//

#import "TitleView.h"


@implementation TitleView


- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code.
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code.
	
	UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[button setTitle:@"Bing" forState:UIControlStateNormal];
	[button sizeToFit];
	CGPoint newPoint =self.center;
    button.center =newPoint;
	[self addSubview:button];
}


- (void)dealloc {
    [super dealloc];
}


@end
