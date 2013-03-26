//
//  MKCollectionCell.m
//  Milkyway
//
//  Created by epimobile on 26/03/13.
//  Copyright (c) 2013 epimobile. All rights reserved.
//

#import "MKCollectionCell.h"

@implementation MKCollectionCell

@synthesize label = _label, ImageView = _ImageView;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
