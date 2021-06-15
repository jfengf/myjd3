# 每3天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
50 23 */3 * * find /scripts/logs -name '*.log' | grep -v 'sharecodeCollection' | xargs rm -rf
#收集助力码
30 * * * * sh +x /scripts/myjd3/docker/auto_help.sh collect >> /scripts/logs/auto_help_collect.log 2>&1

#########################3

#蒙牛有机牧场
0 0,1-22/2 1-31 4-7 * node /scripts/myjd3/jd_monk_pasture.js >> /scripts/logs/jd_monk_pasture.log 2>&1
#直播间抽奖(全局)
30 0,6,12 * * * node /scripts/myjd3/jd_live_lottery_social.js >> /scripts/logs/jd_live_lottery_social.log 2>&1
#店铺加购有礼
15 4 * * * node /scripts/myjd3/monk_shop_add_to_car.js >> /scripts/logs/monk_shop_add_to_car.log 2>&1
# 财富岛提现
# 1 0 * * * node /scripts/myjd3/jx_cfdtx.js >> /scripts/logs/jx_cfdtx.log 2>&1
# 店铺签到+interCenter渠道店铺签到
1 0 * * * node /scripts/myjd3/jd_ShopSign.js >> /scripts/logs/jd_ShopSign.log 2>&1
# 飞利浦电视成长记
15 5 * 5,6 * node /scripts/myjd3/adolf_flp.js >> /scripts/logs/adolf_flp.log 2>&1
# 京喜阶梯红包
15 1 * 5,6 * node /scripts/myjd3/adolf_jxhb.js >> /scripts/logs/adolf_jxhb.log 2>&1
# 618大势新品赏
15 1,12 * 5,6 * node /scripts/myjd3/adolf_newInteraction.js >> /scripts/logs/adolf_newInteraction.log 2>&1
# 赢一加新品手机
25 1 * 5,6 * node /scripts/myjd3/adolf_oneplus.js >> /scripts/logs/adolf_oneplus.log 2>&1
# 京东超级盒子
15 1,12 * 5,6 * node /scripts/myjd3/adolf_superbox.js >> /scripts/logs/adolf_superbox.log 2>&1
# 京享值pk
15 1,12 * 5,6 * node /scripts/myjd3/jd_pk.js >> /scripts/logs/jd_pk.log 2>&1
# 天天大乐透
0 16 * * * node /scripts/myjd3/jd_daydlt.js >> /scripts/logs/jd_daydlt.log 2>&1
# 闪购红包雨
30 20 * * * node /scripts/myjd3/jd_dphby.js >> /scripts/logs/jd_dphby.log 2>&1
# 粉丝互动
21 20 * * * node /scripts/myjd3/jd_fanslove.js >> /scripts/logs/jd_fanslove.log 2>&1
# 京东特物国创IP
0 18,23 * * * node /scripts/myjd3/jd_gcip.js >> /scripts/logs/jd_gcip.log 2>&1
# 京贴小程序
10 19 * * * node /scripts/myjd3/jd_jintie_wx.js >> /scripts/logs/jd_jintie_wx.log 2>&1
# joy总动员(手动运行一次即可，430豆)
30 1 * * * node /scripts/myjd3/jd_joy_zdy.js >> /scripts/logs/jd_joy_zdy.log 2>&1
# 京小兑
1 0 * * * node /scripts/myjd3/jd_jxd.js >> /scripts/logs/jd_jxd.log 2>&1
# 新潮品牌狂欢
30 1,8 1-18 6 * node /scripts/myjd3/jd_mcxhd_brandcity.js >> /scripts/logs/jd_mcxhd_brandcity.log 2>&1
# 泡泡大战
30 0 1-6 6 * node /scripts/myjd3/jd_ppdz.js >> /scripts/logs/jd_ppdz.log 2>&1
# 关注有礼
15 7 * * * node /scripts/myjd3/jd_shop_follow_sku.js >> /scripts/logs/jd_shop_follow_sku.log 2>&1
# 店铺大转盘
57 15 * * * node /scripts/myjd3/jd_shop_lottery.js >> /scripts/logs/jd_shop_lottery.log 2>&1
# 京喜签到+京东成长分+京东特权值
30 0 * * * node /scripts/myjd3/jx_sign.js >> /scripts/logs/jx_sign.log 2>&1
32 0 * * * node /scripts/myjd3/jdczf.js >> /scripts/logs/jdczf.log 2>&1
34 0 * * * node /scripts/myjd3/jdtqz.js >> /scripts/logs/jdtqz.log 2>&1
# 618主会场红包雨
50 11 1-18 6 * node /scripts/myjd3/long_hby_lottery.js >> /scripts/logs/long_hby_lottery.log 2>&1
# 整点京豆雨
1 0-23/1 * * * node /scripts/myjd3/jd_super_redrain.js >> /scripts/logs/jd_super_redrain.log 2>&1

# 特物ZX联想
30 3 * * * node /scripts/myjd3/superBrand.js >> /scripts/logs/superBrand.log 2>&1
# 618手机狂欢城
0 16,22,4,10 * * * node /scripts/myjd3/z_carnivalcity.js >> /scripts/logs/z_carnivalcity.log 2>&1
# 京东保洁消消乐
18 3 1-18 6 * node /scripts/myjd3/zooBaojiexiaoxiaole.js >> /scripts/logs/zooBaojiexiaoxiaole.log 2>&1
# 与“粽”不同
15 5 1-18 6 * node /scripts/myjd3/zooLongzhou.js >> /scripts/logs/zooLongzhou.log 2>&1

##############短期活动##############
#金口碑奖投票
1 0,8 * * * node /scripts/myjd3/jd_mgold.js >> /scripts/logs/jd_mgold.log 2>&1
#女装盲盒 活动时间：2021-05-24到2021-06-22
35 1,22 * * * node /scripts/myjd3/jd_nzmh.js >> /scripts/logs/jd_nzmh.log 2>&1

#京东极速版红包(活动时间：2021-5-5至2021-5-31)
45 0,23 * * * node /scripts/myjd3/jd_speed_redpocke.js >> /scripts/logs/jd_speed_redpocke.log 2>&1

#超级直播间红包雨(活动时间不定期，出现异常提示请忽略。红包雨期间会正常)
1,31 0-23/1 * * * node /scripts/myjd3/jd_live_redrain.js >> /scripts/logs/jd_live_redrain.log 2>&1

#每日抽奖(活动时间：2021-05-01至2021-05-31)
13 1,22,23 * * * node /scripts/myjd3/jd_daily_lottery.js >> /scripts/logs/jd_daily_lottery.log 2>&1

#手机狂欢城
0 0,12,18,21 * * * node /scripts/myjd3/jd_carnivalcity.js >> /scripts/logs/jd_carnivalcity.log 2>&1
#618动物联萌
10 0-23/1 * * * node /scripts/myjd3/jd_zoo.js > /scripts/logs/jd_zoo.log 2>&1
40 0-23/1 * * * node /scripts/myjd3/jd_zooMap.js > /scripts/logs/jd_zooMap.log 2>&1
#618动物联萌专门收集金币(每小时的第30分运行一次)
0-59/30 * * * * node /scripts/myjd3/jd_zooCollect.js > /scripts/logs/jd_zooCollect.log 2>&1
#家电星推官 活动时间：2021年5月27日 00:00:00-2021年6月18日 23:59:59
0 0 * * * node /scripts/myjd3/jd_xtg.js >> /scripts/logs/jd_xtg.log 2>&1
#家电星推官好友互助 活动时间：2021年5月27日 00:00:00-2021年6月18日 23:59:59
0 0 * * * node /scripts/myjd3/jd_xtg_help.js >> /scripts/logs/jd_xtg_help.log 2>&1
#金榜创造营 活动时间：2021-05-21至2021-12-31
0 1,22 * * * node /scripts/myjd3/jd_gold_creator.js >> /scripts/logs/jd_gold_creator.log 2>&1
#5G超级盲盒(活动时间：2021-06-2到2021-07-31)
0 0-23/4 * * * node /scripts/myjd3/jd_mohe.js >> /scripts/logs/jd_mohe.log 2>&1
#明星小店(星店长，2021-06-10)
0 1,21 * * * node /scripts/myjd3/jd_star_shop.js > /scripts/logs/jd_star_shop.log 2>&1
#新潮品牌狂欢（6.18过期）
20 1,21 * * * node /scripts/myjd3/jd_mcxhd.js >> /scripts/logs/jd_mcxhd.log 2>&1
#京喜领88元红包(6.31到期)
30 1,6,12,21 * * * node /scripts/myjd3/jd_jxlhb.js >> /scripts/logs/jd_jxlhb.log 2>&1
# 省钱大赢家之翻翻乐
25 0-23/2 * 6 * node /scripts/myjd3/jd_big_winner.js >> /scripts/logs/jd_big_winner.log 2>&1

##############长期活动##############
# 签到
7 0,7,18 * * * node /scripts/myjd3/jd_bean_sign.js > /scripts/logs/jd_bean_sign.log 2>&1
# 东东超市兑换奖品
0,30 0 * * * node /scripts/myjd3/jd_blueCoin.js >> /scripts/logs/jd_blueCoin.log 2>&1
# 摇京豆
10 15,16,23 * * * node /scripts/myjd3/jd_club_lottery.js >> /scripts/logs/jd_club_lottery.log 2>&1
# 东东农场
15 6-21/3 * * * node /scripts/myjd3/jd_fruit.js >> /scripts/logs/jd_fruit.log 2>&1
# 宠汪汪
45 */2,23 * * * node /scripts/myjd3/jd_joy.js >> /scripts/logs/jd_joy.log 2>&1
# 宠汪汪积分兑换京豆
0 0-16/8 * * * node /scripts/myjd3/jd_joy_reward.js >> /scripts/logs/jd_joy_reward.log 2>&1
# 宠汪汪喂食
35 */1 * * * node /scripts/myjd3/jd_joy_feedPets.js >> /scripts/logs/jd_joy_feedPets.log 2>&1
# 宠汪汪邀请助力
10 13-20/1 * * * node /scripts/myjd3/jd_joy_run.js >> /scripts/logs/jd_joy_run.log 2>&1
# 宠汪汪偷狗粮🐕
10 0-21/3 * * * node /scripts/myjd3/jd_joy_steal.js >> /scripts/logs/jd_joy_steal.log 2>&1
# 摇钱树
23 */2 * * * node /scripts/myjd3/jd_moneyTree.js >> /scripts/logs/jd_moneyTree.log 2>&1
# 东东萌宠
35 0-21/6 * * * node /scripts/myjd3/jd_pet.js >> /scripts/logs/jd_pet.log 2>&1
# 京东种豆得豆
10 0-22/1 * * * node /scripts/myjd3/jd_plantBean.js >> /scripts/logs/jd_plantBean.log 2>&1
# 京东全民开红包
12 0-23/4 * * * node /scripts/myjd3/jd_redPacket.js >> /scripts/logs/jd_redPacket.log 2>&1
# 进店领豆
5 0 * * * node /scripts/myjd3/jd_shop.js >> /scripts/logs/jd_shop.log 2>&1
# 东东超市
31 0,1-23/2 * * * node /scripts/myjd3/jd_superMarket.js >> /scripts/logs/jd_superMarket.log 2>&1
# 取关京东店铺商品
45 6,20 * * * node /scripts/myjd3/jd_unsubscribe.js >> /scripts/logs/jd_unsubscribe.log 2>&1
# 京豆变动通知【昨日收益】
20 10 * * * node /scripts/myjd3/jd_bean_change.js >> /scripts/logs/jd_bean_change.log 2>&1
# 京东抽奖机
0 0,12,23 * * * node /scripts/myjd3/jd_lotteryMachine.js >> /scripts/logs/jd_lotteryMachine.log 2>&1
# 京东排行榜
21 9 * * * node /scripts/myjd3/jd_rankingList.js >> /scripts/logs/jd_rankingList.log 2>&1
# 天天提鹅
28 * * * * node /scripts/myjd3/jd_daily_egg.js >> /scripts/logs/jd_daily_egg.log 2>&1
# 金融养猪
32 0-23/6 * * * node /scripts/myjd3/jd_pigPet.js >> /scripts/logs/jd_pigPet.log 2>&1
# 点点券
40 0,7,14,21 * * * node /scripts/myjd3/jd_necklace.js >> /scripts/logs/jd_necklace.log 2>&1
# 京喜工厂
50 * * * * node /scripts/myjd3/jd_dreamFactory.js >> /scripts/logs/jd_dreamFactory.log 2>&1
# 东东小窝
46 6,23 * * * node /scripts/myjd3/jd_small_home.js >> /scripts/logs/jd_small_home.log 2>&1
# 东东工厂
26 * * * * node /scripts/myjd3/jd_factory.js >> /scripts/logs/jd_factory.log 2>&1
# 赚京豆(微信小程序)
17 * * * * node /scripts/myjd3/jd_syj.js >> /scripts/logs/jd_syj.log 2>&1
# 京东快递签到
47 1 * * * node /scripts/myjd3/jd_kd.js >> /scripts/logs/jd_kd.log 2>&1
# 京东汽车(签到满500赛点可兑换500京豆)
0 0 * * * node /scripts/myjd3/jd_car.js >> /scripts/logs/jd_car.log 2>&1
# 领京豆额外奖励(每日可获得3京豆)
23 1,12,22 * * * node /scripts/myjd3/jd_bean_home.js >> /scripts/logs/jd_bean_home.log 2>&1
# 微信小程序京东赚赚
6 0-5/1,11 * * * node /scripts/myjd3/jd_jdzz.js >> /scripts/logs/jd_jdzz.log 2>&1
# crazyJoy自动每日任务
30 7,23 * * * node /scripts/myjd3/jd_crazy_joy.js >> /scripts/logs/jd_crazy_joy.log 2>&1
# 京东汽车旅程赛点兑换金豆
0 0 * * * node /scripts/myjd3/jd_car_exchange.js >> /scripts/logs/jd_car_exchange.log 2>&1
# 导到所有互助码
23 7 * * * node /scripts/myjd3/jd_get_share_code.js > /scripts/logs/jd_get_share_code.log 2>&1
# 口袋书店
34 8,12,18 * * * node /scripts/myjd3/jd_bookshop.js >> /scripts/logs/jd_bookshop.log 2>&1
# 京喜农场
30 9,12,18 * * * node /scripts/myjd3/jd_jxnc.js >> /scripts/logs/jd_jxnc.log 2>&1
# 京喜牧场
20 0-23/3 * * * node /scripts/myjd3/jd_jxmc.js >> /scripts/logs/jd_jxmc.log 2>&1
# 签到领现金
10 */4 * * * node /scripts/myjd3/jd_cash.js >> /scripts/logs/jd_cash.log 2>&1
# 闪购盲盒
47 8,22 * * * node /scripts/myjd3/jd_sgmh.js >> /scripts/logs/jd_sgmh.log 2>&1
# 京东秒秒币
10 6,21 * * * node /scripts/myjd3/jd_ms.js >> /scripts/logs/jd_ms.log 2>&1
#美丽研究院
41 7,12,19 * * * node /scripts/myjd3/jd_beauty.js >> /scripts/logs/jd_beauty.log 2>&1
#京东保价
41 0,11 * * * node /scripts/myjd3/jd_price.js >> /scripts/logs/jd_price.log 2>&1
#京东极速版签到+赚现金任务
21 1,6 * * * node /scripts/myjd3/jd_speed_sign.js >> /scripts/logs/jd_speed_sign.log 2>&1
#监控crazyJoy分红
10 12 * * * node /scripts/myjd3/jd_crazy_joy_bonus.js >> /scripts/logs/jd_crazy_joy_bonus.log 2>&1
#京喜财富岛
5 7,12,18 * * * node /scripts/myjd3/jd_cfd.js >> /scripts/logs/jd_cfd.log 2>&1
# 删除优惠券(默认注释，如需要自己开启，如有误删，已删除的券可以在回收站中还原，慎用)
#20 9 * * 6 node /scripts/myjd3/jd_delCoupon.js >> /scripts/logs/jd_delCoupon.log 2>&1
#家庭号
10 6,7 * * * node /scripts/myjd3/jd_family.js >> /scripts/logs/jd_family.log 2>&1
#京东直播（又回来了）
30-50/5 12,23 * * * node /scripts/myjd3/jd_live.js >> /scripts/logs/jd_live.log 2>&1
#京东健康社区
14 0-23/4 * * * node /scripts/myjd3/jd_health.js >> /scripts/logs/jd_health.log 2>&1
#京东健康社区收集健康能量
5-45/20 * * * * node /scripts/myjd3/jd_health_collect.js >> /scripts/logs/jd_health_collect.log 2>&1
# 幸运大转盘
10 10,23 * * * node /scripts/myjd3/jd_market_lottery.js >> /scripts/logs/jd_market_lottery.log 2>&1
# 领金贴
5 0 * * * node /scripts/myjd3/jd_jintie.js >> /scripts/logs/jd_jintie.log 2>&1
# 跳跳乐瓜分京豆
15 0,12,22 * * * node /scripts/myjd3/jd_jump.js >> /scripts/logs/jd_jump.log 2>&1
# 天天加速
8 0-23/3 * * * node /scripts/myjd3/jd_speed.js >> /scripts/logs/jd_speed.log 2>&1
# 新品试用
0 10 * * * node /scripts/myjd3/jd_try.js >> /scripts/logs/jd_try.log 2>&1
# 喜马拉雅极速版 (# sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && apk add --no-cache python3 && curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3 get-pip.py && pip install requests rsa)
*/31 * * * * python3 /scripts/myjd3/xmly_speed.py
