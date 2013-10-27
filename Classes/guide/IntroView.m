//
//  IntroView.m
//  AePubReader
//
//  Created by 贺 贤明 on 13-10-11.
//
//

#import "IntroView.h"
#import "DuokanViewLayoutCalc.h"

@implementation IntroView
@synthesize duokan_layout;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.duokan_layout = [[DuokanViewLayoutCalc alloc]initWithFrameSize:frame];
    }
    return self;
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [UIView animateWithDuration:.2
                     animations: ^ {
                         [self setAlpha:0];
                     }
                     completion: ^ (BOOL finished) {
                         [self removeFromSuperview];
                     }];
    NSLog(@"intro_view will be hide!");
    
    
}
- (void)draw_column_line:(int)x
{
    [[UIColor brownColor] set];
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(ctx, 1.0f);
    
    CGPoint point1 = CGPointMake( x, 0);
    CGPoint point2 = CGPointMake( x, self.frame.size.height);
    
    CGContextMoveToPoint(ctx, point1.x, point1.y);
    CGContextAddLineToPoint(ctx, point2.x, point2.y);
    CGContextStrokePath(ctx);
}


- (void)place_icon:(NSString*)path_icon icon_x:(int)x
{

    int cy = self.duokan_layout.cy;
    int cx = x / 2;
    
    UIImage *pic_icon       = [UIImage imageNamed:path_icon];
    UIImageView *image_view = [[UIImageView alloc]initWithImage:pic_icon];
    image_view.center       = CGPointMake(cx, cy); // set center
    
    [self addSubview:image_view];

}
- (void)place_intro_hand_icon
{
    int cy = self.duokan_layout.cy;
    int cx = self.duokan_layout.cx;
    
    UIImage *pic_icon       = [UIImage imageNamed:@"intro_read01_finger"];
    UIImageView *image_view = [[UIImageView alloc]initWithImage:pic_icon];
    
    cy = cy + pic_icon.size.height * 0.9;
    
    image_view.center       = CGPointMake(cx, cy); // set center
    [self addSubview:image_view];
}

- (void)place_icon_below_txt:(NSString*)text x:(int)x
{
    int cy  = self.duokan_layout.cy;
    int cx  = x / 2;
    cy      = cy + 50;
    
    UILabel *label =  [[UILabel alloc] initWithFrame: CGRectMake( 0, 0 ,120, 30 )];
    [label setTextAlignment:UITextAlignmentCenter];
    label.backgroundColor = [UIColor clearColor];
    label.textColor       = [UIColor whiteColor];
    [label setFont:[UIFont boldSystemFontOfSize:22]];
    label.text = text;
    label.center = CGPointMake(cx,cy);
    [self addSubview:label];
    [label release];
}

- (void)drawRect:(CGRect)rect
{
    int line_prev  = self.duokan_layout.rx_prev;
    int line_menu  = self.duokan_layout.rx_menu;
    int line_right = self.duokan_layout.rx_next;


    [self draw_column_line: line_prev ];
    //    [self draw_column_line: line_right ];
    [self draw_column_line: line_menu ];
    
    [self place_icon_below_txt:@"上一页" x:line_prev];
    [self place_icon_below_txt:@"菜单栏" x:line_prev + line_menu];
    [self place_icon_below_txt:@"下一页" x:line_menu + line_right];
    
    [self place_icon:@"intro_read01_left" icon_x:line_prev];
    [self place_icon:@"intro_read01_menu" icon_x:line_prev + line_menu];
    [self place_icon:@"intro_read01_right" icon_x:line_menu + line_right];
    
    [self place_intro_hand_icon];
    
    self.alpha = 0.9;
}
- (void)dealloc {
    [duokan_layout release];
    duokan_layout = NULL;
    [super dealloc];
}


-(void)drawGradiantCustom:(CGRect)rect{
    
    
    //    CGContextRef context = UIGraphicsGetCurrentContext();
    //
    //    CGRect currentBounds = self.bounds;
    //
    //    CGGradientRef backgroundGradient;
    //
    //    size_t num_locations = 2;
    //
    //    CGFloat locations[2] = { 0.0, 1.0 };
    //
    //    CGFloat components[8] = { 0.0, 0.0, 0.0, 0.0, // Start color
    //
    //        0.0, 0.0, 0.0, 0.6
    //
    //    }; // End color
    //
    //    CGColorSpaceRef rgbColorspace = CGColorSpaceCreateDeviceRGB();
    //
    //    backgroundGradient = CGGradientCreateWithColorComponents (rgbColorspace, components, locations, num_locations);
    //
    //    CGPoint centerPoint = CGPointMake(CGRectGetMidX(currentBounds), CGRectGetMidY(currentBounds));
    //
    //    CGContextDrawRadialGradient (context, backgroundGradient, centerPoint, 0.0, centerPoint, currentBounds.size.width, kCGGradientDrawsAfterEndLocation);
    //
    //    CGGradientRelease(backgroundGradient);
    
    
}
@end
