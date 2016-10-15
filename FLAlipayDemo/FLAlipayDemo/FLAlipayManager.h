/*
 * author 孔凡列
 *
 * gitHub https://github.com/gitkong
 * cocoaChina http://code.cocoachina.com/user/
 * 简书 http://www.jianshu.com/users/fe5700cfb223/latest_articles
 * QQ 279761135
 * 喜欢就给个like 和 star 喔~
 */

#import <Foundation/Foundation.h>
typedef void(^FLAlipayCallback)(NSDictionary *resultDic);
@interface FLAlipayManager : NSObject
/**
 *  @author 孔凡列, 16-09-21 08:09:06
 *
 *  统一支付宝的回调，支付后可以实现回调
 */
@property (nonatomic,copy)FLAlipayCallback fl_callback;

+ (instancetype)shareManager;
/**
 *  @author 孔凡列, 16-09-21 08:09:06
 *
 *  支付宝授权支付-AppDelegate中实现
 */
- (void)fl_alipayWithUrl:(NSURL *)url;
/**
 *  @author 孔凡列, 16-09-21 08:09:06
 *
 *  发起支付，任意地方
 */
- (void)fl_alipayWithOrderStr:(NSString *)orderStr appScheme:(NSString *)appScheme;

@end
