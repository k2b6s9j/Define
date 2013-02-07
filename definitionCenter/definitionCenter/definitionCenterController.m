//
//  definitionCenterController.m
//  definitionCenter
//
//  Created by Kepler Sticka-Jones on 2/5/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "definitionCenterController.h"

@implementation definitionCenterController

-(id)init
{
	if ((self = [super init]))
	{
	}

	return self;
}

-(void)dealloc
{
	[_view release];
	[super dealloc];
}

- (UIView *)view
{
	if (_view == nil)
	{
		_view = [[UIView alloc] initWithFrame:CGRectMake(2, 0, 316, 71)];

		UIImage *bg = [[UIImage imageWithContentsOfFile:@"/System/Library/WeeAppPlugins/definitionCenter.bundle/WeeAppBackground.png"] stretchableImageWithLeftCapWidth:5 topCapHeight:71];
		UIImageView *bgView = [[UIImageView alloc] initWithImage:bg];
		bgView.frame = CGRectMake(0, 0, 316, 71);
		[_view addSubview:bgView];
		[bgView release];

		/*
        UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 316, 71)];
		lbl.backgroundColor = [UIColor clearColor];
		lbl.textColor = [UIColor whiteColor];
		lbl.text = @"Hello, World!";
		lbl.textAlignment = UITextAlignmentCenter;
		[_view addSubview:lbl];
		[lbl release];
         */
        
        UITextField *termField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 300, 71)];
        UIButton *lookUpButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 16, 71)];
        [_view addSubview:termField];
        [termField release];
	}

	return _view;
}

- (float)viewHeight
{
	return 71.0f;
}

@end