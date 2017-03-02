//
//  BlackoutView.m
//  GSUIKit
//
//  Created by Gamandeep Sethi on 17/03/16.
//
//

#import "BlackoutView.h"

@implementation BlackoutView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetBlendMode(context, kCGBlendModeDestinationOut);
    
    for (NSValue *value in self.framesToCutOut) {
        CGRect pathRect = [value CGRectValue];
        UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:pathRect];
        [path fill];
    }
    
    CGContextSetBlendMode(context, kCGBlendModeNormal);
}

@end
