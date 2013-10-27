//
//  DuokanViewLayoutCalc.m
//  AePubReader
//
//  Created by 贺 贤明 on 13-10-19.
//
//

#import "DuokanViewLayoutCalc.h"

@implementation DuokanViewLayoutCalc
@synthesize frame,cx,cy,ry,rx,frame_height,frame_width,rx_prev,rx_menu,rx_next;

@synthesize rect_prev,rect_menu,rect_next;

-(id)initWithFrameSize:(CGRect)frame_in
{
    if((self=[super init])){
        frame = frame_in;
        cx = self.frame.size.width / 2;
        cy = self.frame.size.height / 2;
        frame_width  = rx = self.frame.size.width;
        frame_height = ry = self.frame.size.height;
        
        rx_prev      = self.frame.size.width * 0.3;
        rx_menu      = rx_prev + self.frame.size.width * 0.4;
        rx_next      = rx_menu + self.frame.size.width * 0.3;

        rect_prev = CGRectMake(0, 0, rx_prev, frame_height );
        rect_menu = CGRectMake(rx_prev, 0, rx_menu - rx_prev, frame_height );
        rect_next = CGRectMake(rx_menu, 0, rx_next - rx_menu, frame_height );
    }
    return self;
}


-(BOOL)is_in_rect:(CGRect)rect withPoint:(CGPoint)point
{
    if (CGRectContainsPoint( rect , point))
    {
        NSLog(@"in the size rect %@ , touch is %@",NSStringFromCGRect(rect),NSStringFromCGPoint(point));
        return YES;
    }
    return NO;
}

-(BOOL)is_in_prev_rect_with_location:(CGPoint)location
{
    return [self is_in_rect:rect_prev withPoint:location];
}
-(BOOL)is_in_menu_rect_with_location:(CGPoint)location
{
    return [self is_in_rect:rect_menu withPoint:location];
}
-(BOOL)is_in_next_rect_with_location:(CGPoint)location
{
    return [self is_in_rect:rect_next withPoint:location];
}
- (void)dealloc {
    [super dealloc];
}

@end
