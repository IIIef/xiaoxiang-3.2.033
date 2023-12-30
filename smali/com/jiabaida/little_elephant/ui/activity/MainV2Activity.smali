.class public Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "MainV2Activity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private blelines:[B

.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private isCheckUpdate:Z

.field private mControlFragment:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

.field private mFragmentAdapter:Lcom/jiabaida/little_elephant/view/PublicFragmentAdapter;

.field private mNowFragment:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

.field private mParamsFragment:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

.field private mRbtUserHomeBottom1:Landroid/widget/RadioButton;

.field private mRbtUserHomeBottom2:Landroid/widget/RadioButton;

.field private mRbtUserHomeBottom3:Landroid/widget/RadioButton;

.field private mRdgUserHomeBottom:Landroid/widget/RadioGroup;

.field public mVpUserHome:Lcom/jiabaida/little_elephant/view/MyViewPager;

.field private penetrateTimeCount:Landroid/os/CountDownTimer;

.field private startGetRootPsw:Z

.field private tcpCleanType:Ljava/lang/String;

.field timeHandler:Landroid/os/Handler;

.field private transferResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    .line 74
    const-class v0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->TAG:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->fragments:Ljava/util/List;

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->isCheckUpdate:Z

    .line 87
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->startGetRootPsw:Z

    new-array v0, v0, [B

    .line 89
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->blelines:[B

    const-string v0, "0"

    .line 98
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->tcpCleanType:Ljava/lang/String;

    .line 589
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$4;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$4;-><init>(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->timeHandler:Landroid/os/Handler;

    .line 827
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$8;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$8;-><init>(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->transferResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->downLoadApk(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;)[B
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->blelines:[B

    return-object p0
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;)Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mNowFragment:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;)Landroid/widget/RadioGroup;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mRdgUserHomeBottom:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method private checkBluetoothBind(Ljava/lang/String;)V
    .locals 2

    .line 751
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "checkBleDeviceBind"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 752
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mVpUserHome:Lcom/jiabaida/little_elephant/view/MyViewPager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/MyViewPager;->setCurrentItem(I)V

    .line 753
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mRdgUserHomeBottom:Landroid/widget/RadioGroup;

    const v0, 0x7f080161

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 754
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    const v0, 0x7f050099

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColor(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarDarkFont(Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    .line 755
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p1

    const-string v0, "BluetoothMac"

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 756
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v0

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$7;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$7;-><init>(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;)V

    invoke-virtual {v0, p1, v1}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->checkCanBindDevicePermissions(Ljava/lang/String;Lcom/jiabaida/little_elephant/socket/SocketClineListener;)V

    :cond_0
    return-void
.end method

.method private downLoadApk(Ljava/lang/String;)V
    .locals 4

    .line 896
    const-class v0, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jiabaida/little_elephant/util/CommonUtil;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object p1

    const v0, 0x7f0d0063

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 900
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 901
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "download_url"

    .line 902
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x68

    const-string v3, "download_id"

    .line 903
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v2, 0x2f

    .line 904
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "download_file"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 906
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private getRandom(Ljava/lang/String;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->tcpCleanType:Ljava/lang/String;

    const/4 p1, 0x1

    .line 552
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->startGetRootPsw:Z

    .line 553
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->getRandom()V

    return-void
.end method

.method private sendCleanCmd()V
    .locals 4

    .line 559
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->tcpCleanType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    goto :goto_0

    :pswitch_1
    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :pswitch_2
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :pswitch_3
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :pswitch_4
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    const/16 v0, 0x2714

    packed-switch v3, :pswitch_data_1

    .line 583
    sput-boolean v2, Lcom/jiabaida/little_elephant/util/BleUtils;->isCheckRootPsw:Z

    goto :goto_1

    .line 577
    :pswitch_5
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->testBytes()V

    .line 578
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u4e8c\u7ea7\u5bc6\u7801\u9884\u8bbe\u6307\u4ee4\u53d1\u9001\u6210\u529f!"

    invoke-virtual {v0, v1, v2}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->timeHandler:Landroid/os/Handler;

    const/16 v1, 0x4d2

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 573
    :pswitch_6
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->returnFactory()V

    .line 574
    sput v0, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    goto :goto_1

    .line 569
    :pswitch_7
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->restoreSecondPsw()V

    .line 570
    sput v0, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    goto :goto_1

    .line 565
    :pswitch_8
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->cleanFirstLevPsw()V

    .line 566
    sput v0, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    goto :goto_1

    .line 561
    :pswitch_9
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->cleanAppKey()V

    .line 562
    sput v0, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    :goto_1
    const-string v0, "0"

    .line 586
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->tcpCleanType:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private showOtaDialog(Ljava/lang/String;)V
    .locals 7

    const v0, 0x7f0d006e

    .line 509
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0d00c5

    .line 510
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3;

    invoke-direct {v6, p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p0

    .line 509
    invoke-static/range {v1 .. v6}, Lcom/jiabaida/little_elephant/view/DialogHelper;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;)V

    return-void
.end method

.method private startRealBmsData()V
    .locals 3

    .line 624
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 626
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 627
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 629
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a004b

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===onCreate=service\u521b\u5efa\u524d\u5224\u65ad\u767b\u5f55\u72b6\u6001=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->isLogin()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "--socket:"

    invoke-static {v1, v0}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "===onCreate=service\u521b\u5efa=="

    .line 638
    invoke-static {v1, v0}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jiabaida/little_elephant/net/service/HeartbeatService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 641
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 642
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 644
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    const-string v0, "---qdy:"

    const-string v1, "===\u5230\u8fbemain\u65f6\u95f4==="

    .line 650
    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->fragments:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 652
    :goto_1
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->fragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 653
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->fragments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->onDestroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 657
    :cond_2
    new-instance v0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mParamsFragment:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    .line 658
    new-instance v0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mNowFragment:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    .line 659
    new-instance v0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mControlFragment:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    .line 660
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 661
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->fragments:Ljava/util/List;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;

    invoke-direct {v1}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->fragments:Ljava/util/List;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mControlFragment:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->fragments:Ljava/util/List;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mNowFragment:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->fragments:Ljava/util/List;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mParamsFragment:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->fragments:Ljava/util/List;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;

    invoke-direct {v1}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    new-instance v0, Lcom/jiabaida/little_elephant/view/PublicFragmentAdapter;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->fragments:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/view/PublicFragmentAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mFragmentAdapter:Lcom/jiabaida/little_elephant/view/PublicFragmentAdapter;

    .line 667
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mVpUserHome:Lcom/jiabaida/little_elephant/view/MyViewPager;

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/view/MyViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 669
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mVpUserHome:Lcom/jiabaida/little_elephant/view/MyViewPager;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->fragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/view/MyViewPager;->setOffscreenPageLimit(I)V

    .line 671
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mVpUserHome:Lcom/jiabaida/little_elephant/view/MyViewPager;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$5;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$5;-><init>(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;)V

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/view/MyViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 709
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mRdgUserHomeBottom:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$6;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$6;-><init>(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 744
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mVpUserHome:Lcom/jiabaida/little_elephant/view/MyViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/view/MyViewPager;->setCurrentItem(I)V

    .line 745
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 746
    invoke-direct {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->checkBluetoothBind(Ljava/lang/String;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0802ac

    .line 780
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/view/MyViewPager;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mVpUserHome:Lcom/jiabaida/little_elephant/view/MyViewPager;

    const p1, 0x7f080164

    .line 781
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mRdgUserHomeBottom:Landroid/widget/RadioGroup;

    const p1, 0x7f08015f

    .line 782
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mRbtUserHomeBottom1:Landroid/widget/RadioButton;

    const p1, 0x7f080160

    .line 783
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mRbtUserHomeBottom2:Landroid/widget/RadioButton;

    const p1, 0x7f080161

    .line 784
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mRbtUserHomeBottom3:Landroid/widget/RadioButton;

    .line 785
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->startRealBmsData()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/AppUtils;->isChineseLanguage(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/jiabaida/little_elephant/util/BleUtils;->isChinese:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 810
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onDestroy()V

    .line 811
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->penetrateTimeCount:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 812
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->timeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 815
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 818
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 819
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->stopService(Landroid/content/Intent;)Z

    .line 820
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiabaida/little_elephant/net/service/HeartbeatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 821
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->stopService(Landroid/content/Intent;)Z

    .line 822
    sget-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->mDataQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 823
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->destroy()V

    return-void
.end method

.method public onEventBusMsg(Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    const-string v1, "version"

    const-string v2, "canBind"

    .line 126
    iget-object v3, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->TAG:Ljava/lang/String;

    const-string v4, "Main2Activity event bus"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_8

    .line 127
    invoke-virtual/range {p1 .. p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsg()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v6

    const/16 v7, 0x2712

    if-eq v6, v7, :cond_7

    const/16 v7, 0x2775

    if-eq v6, v7, :cond_2

    const/16 v7, 0x2725

    const/16 v9, 0x4d2

    if-eq v6, v7, :cond_1

    const/16 v7, 0x2726

    if-eq v6, v7, :cond_0

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_0

    .line 168
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v6

    sput v6, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    .line 169
    iget-object v6, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mNowFragment:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-virtual {v6}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->pswPass()V

    .line 172
    sput-boolean v4, Lcom/jiabaida/little_elephant/util/BleUtils;->isHaveFirstPsw:Z

    goto/16 :goto_0

    .line 159
    :pswitch_1
    iget-object v6, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mNowFragment:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-virtual {v6}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->pswError()V

    goto/16 :goto_0

    .line 163
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v6

    sput v6, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    .line 164
    iget-object v6, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mNowFragment:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-virtual {v6}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->pswPass()V

    .line 165
    sput-boolean v5, Lcom/jiabaida/little_elephant/util/BleUtils;->isHaveFirstPsw:Z

    goto/16 :goto_0

    .line 179
    :cond_0
    iget-object v6, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->timeHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v9, "\u4e8c\u7ea7\u5bc6\u7801\u9884\u8bbe\u6307\u4ee4\u5931\u8d25!"

    invoke-virtual {v6, v7, v9}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_1
    iget-object v6, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->timeHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v9, "\u4e8c\u7ea7\u5bc6\u7801\u9884\u8bbe\u6307\u4ee4\u6210\u529f!"

    invoke-virtual {v6, v7, v9}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_2
    sget v6, Lcom/jiabaida/little_elephant/util/BleUtils;->icType:I

    if-ne v6, v4, :cond_3

    .line 132
    sget v6, Lcom/jiabaida/little_elephant/util/BleUtils;->softwareVersion:I

    const/16 v7, 0x29

    if-le v6, v7, :cond_8

    sget v6, Lcom/jiabaida/little_elephant/util/BleUtils;->softwareVersion:I

    const/16 v7, 0x38

    if-ge v6, v7, :cond_8

    const-string v6, "JBD_V38.bin"

    .line 134
    invoke-direct {v8, v6}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->showOtaDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_3
    sget v6, Lcom/jiabaida/little_elephant/util/BleUtils;->icType:I

    if-ne v6, v3, :cond_4

    .line 138
    sget v6, Lcom/jiabaida/little_elephant/util/BleUtils;->softwareVersion:I

    const/16 v7, 0x75

    if-gt v6, v7, :cond_8

    const-string v6, "SP22S003B-8258_V76.bin"

    .line 139
    invoke-direct {v8, v6}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->showOtaDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_4
    sget v6, Lcom/jiabaida/little_elephant/util/BleUtils;->icType:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_8

    .line 144
    sget v6, Lcom/jiabaida/little_elephant/util/BleUtils;->softwareVersion:I

    const/16 v7, 0x21

    if-le v6, v7, :cond_5

    sget v6, Lcom/jiabaida/little_elephant/util/BleUtils;->softwareVersion:I

    const/16 v7, 0x28

    if-lt v6, v7, :cond_6

    :cond_5
    sget v6, Lcom/jiabaida/little_elephant/util/BleUtils;->softwareVersion:I

    const/16 v7, 0x59

    if-le v6, v7, :cond_8

    sget v6, Lcom/jiabaida/little_elephant/util/BleUtils;->softwareVersion:I

    const/16 v7, 0x64

    if-ge v6, v7, :cond_8

    :cond_6
    const-string v6, "BLE-DP04S007-V28.bin"

    .line 146
    invoke-direct {v8, v6}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->showOtaDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_7
    invoke-static {}, Lcom/jiabaida/little_elephant/app/CustomActivityManager;->currentActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v6

    instance-of v6, v6, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    if-eqz v6, :cond_8

    .line 154
    iget-object v6, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mNowFragment:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-virtual {v6}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->sendAppKey()V

    :cond_8
    :goto_0
    if-eqz v0, :cond_29

    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsg()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto/16 :goto_8

    .line 188
    :cond_9
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsg()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p1 .. p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v9, 0x3

    if-eq v7, v9, :cond_28

    const/4 v9, 0x4

    if-eq v7, v9, :cond_27

    const/16 v10, 0x8e

    const-string v11, "data"

    if-eq v7, v10, :cond_26

    const/16 v10, 0x8f

    if-eq v7, v10, :cond_26

    const/16 v10, 0x9a

    const-string v12, "initStatus"

    const-string v13, "historyStatus"

    const-string v14, "voltageStatus"

    if-eq v7, v10, :cond_21

    const/16 v10, 0x9b

    if-eq v7, v10, :cond_21

    const/16 v10, 0x2719

    if-eq v7, v10, :cond_20

    const/16 v15, 0x271a

    if-eq v7, v15, :cond_1f

    const-string v15, "status"

    const-string v3, ""

    const-string v10, "."

    sparse-switch v7, :sswitch_data_0

    const-string v1, "---socket-tc:"

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_8

    .line 234
    :pswitch_3
    :try_start_1
    iget-object v1, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u84dd\u7259\u6743\u9650: permission:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 236
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "hasPermission"

    .line 238
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 239
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v2

    const-string v3, "sp_key_ble_auth"

    invoke-virtual {v2, v3, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Z)V

    .line 244
    iget-object v2, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mParamsFragment:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {v2, v1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->initDataList(Z)V

    .line 245
    iget-object v2, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mControlFragment:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-virtual {v2, v1}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->initDataList(Z)V

    .line 246
    invoke-static {}, Lcom/jiabaida/little_elephant/app/CustomActivityManager;->currentActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    if-nez v2, :cond_a

    if-eqz v1, :cond_a

    .line 247
    sget-boolean v1, Lcom/jiabaida/little_elephant/util/BleUtils;->isCheckRootPsw:Z

    if-nez v1, :cond_a

    sget v1, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    const/16 v2, 0x2714

    if-ne v1, v2, :cond_a

    .line 249
    iput-boolean v4, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->startGetRootPsw:Z

    .line 250
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->getRandom()V

    .line 252
    :cond_a
    iget-object v1, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mRbtUserHomeBottom1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_1

    :cond_b
    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 253
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/jiabaida/little_elephant/util/BleUtils;->displayVoltage:Z

    .line 254
    iget-object v1, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mNowFragment:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    sget-boolean v2, Lcom/jiabaida/little_elephant/util/BleUtils;->displayVoltage:Z

    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->changeVoltageStatus(Z)V

    .line 255
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/jiabaida/little_elephant/util/BleUtils;->displayInit:Z

    .line 256
    iget-object v0, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mParamsFragment:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    sget-boolean v1, Lcom/jiabaida/little_elephant/util/BleUtils;->displayInit:Z

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->changeInitStatus(Z)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_8

    :catch_0
    move-exception v0

    .line 258
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_8

    .line 229
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u900f\u4f20===\u5ba2\u6237\u7aef\u518d\u6b21\u63a5\u6536\u670d\u52a1\u7aef\u56de\u4f20\u4fe1\u606f\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 206
    :pswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u900f\u4f20===\u63a5\u6536\u670d\u52a1\u7aef\u56de\u4f20\u4fe1\u606f\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    new-instance v1, Lcom/jiabaida/little_elephant/entity/BMSTransferCMDEntity;

    invoke-direct {v1, v0}, Lcom/jiabaida/little_elephant/entity/BMSTransferCMDEntity;-><init>(Ljava/lang/String;)V

    .line 211
    iget-object v0, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->transferResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/entity/BMSTransferCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    const-string v0, "txnNo"

    .line 212
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/entity/BMSTransferCMDEntity;->setTxnNo(Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_c

    .line 214
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 216
    :cond_c
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdWaitingList:Ljava/util/HashMap;

    if-eqz v0, :cond_d

    .line 217
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdWaitingList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 219
    :cond_d
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 220
    iget-object v0, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mNowFragment:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    if-eqz v0, :cond_29

    .line 221
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->threadPause()V

    goto/16 :goto_8

    .line 408
    :sswitch_0
    invoke-static {}, Lcom/jiabaida/little_elephant/app/CustomActivityManager;->currentActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    if-nez v1, :cond_29

    .line 410
    iget-boolean v1, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->startGetRootPsw:Z

    if-eqz v1, :cond_e

    .line 412
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgbyte()[B

    move-result-object v0

    aget-byte v0, v0, v9

    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getRootPsw(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 414
    :cond_e
    iget-object v1, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mNowFragment:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    iget-boolean v2, v1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->isCheckSecond:Z

    if-nez v2, :cond_f

    goto :goto_2

    :cond_f
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v1, v0, v4}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->showPswDialog(Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;Z)V

    goto/16 :goto_8

    .line 196
    :sswitch_1
    invoke-static {}, Lcom/jiabaida/little_elephant/app/CustomActivityManager;->currentActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    .line 197
    invoke-static {}, Lcom/jiabaida/little_elephant/app/CustomActivityManager;->currentActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    if-nez v0, :cond_29

    if-nez v1, :cond_29

    .line 199
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    sget-object v1, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->KEY_isGoScanCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    invoke-virtual {v8, v0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 191
    :sswitch_2
    iget-object v0, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mNowFragment:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    if-eqz v0, :cond_29

    .line 192
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->setInitData()V

    goto/16 :goto_8

    .line 329
    :sswitch_3
    iget-object v0, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->TAG:Ljava/lang/String;

    const-string v1, "token diable goto login"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v8, v0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 441
    :sswitch_4
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "type"

    .line 442
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 443
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x2717

    if-eqz v1, :cond_12

    .line 444
    sget v1, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    if-eq v1, v2, :cond_11

    sget v1, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    const/16 v2, 0x2719

    if-ne v1, v2, :cond_10

    goto :goto_3

    .line 448
    :cond_10
    invoke-direct {v8, v0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getRandom(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 446
    :cond_11
    :goto_3
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->cleanAppKey()V

    goto/16 :goto_8

    :cond_12
    const-string v1, "2"

    .line 450
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 451
    sget v1, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    if-eq v1, v2, :cond_14

    sget v1, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    const/16 v2, 0x2719

    if-ne v1, v2, :cond_13

    goto :goto_4

    .line 455
    :cond_13
    invoke-direct {v8, v0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getRandom(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 453
    :cond_14
    :goto_4
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->cleanFirstLevPsw()V

    goto/16 :goto_8

    :cond_15
    const-string v1, "3"

    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 458
    sget v1, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    const/16 v2, 0x2719

    if-ne v1, v2, :cond_16

    .line 459
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->restoreSecondPsw()V

    goto/16 :goto_8

    .line 461
    :cond_16
    invoke-direct {v8, v0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getRandom(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_17
    const-string v1, "4"

    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 464
    sget v1, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    const/16 v2, 0x2719

    if-ne v1, v2, :cond_18

    .line 465
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->returnFactory()V

    goto/16 :goto_8

    .line 467
    :cond_18
    invoke-direct {v8, v0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getRandom(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 334
    :sswitch_5
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_29

    .line 335
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const v6, 0x7f0d005b

    const v7, 0x7f0d0058

    const v9, 0x7f0d006d

    const-string v11, "updateUrl"

    const-string v12, "needUpdate"

    if-ne v2, v4, :cond_19

    .line 337
    :try_start_4
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 338
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 339
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-virtual {v8, v9}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 341
    invoke-virtual {v8, v7}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v6}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$1;

    invoke-direct {v6, v8, v0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 340
    invoke-static/range {v1 .. v6}, Lcom/jiabaida/little_elephant/view/DialogHelper;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;)V

    goto/16 :goto_8

    .line 359
    :cond_19
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v13, 0x2

    if-lt v2, v13, :cond_29

    .line 360
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 361
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "forced"

    .line 362
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 364
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 365
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 366
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 367
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 368
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 369
    :cond_1a
    invoke-virtual {v8, v9}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-virtual {v8, v7}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v6}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    new-instance v15, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$2;

    move-object v1, v15

    move-object/from16 v2, p0

    move v3, v4

    move-object v4, v5

    move-object v5, v11

    move-object v6, v13

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v9

    move-object v4, v12

    move v5, v14

    move-object v6, v15

    .line 369
    invoke-static/range {v1 .. v6}, Lcom/jiabaida/little_elephant/view/DialogHelper;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;)V

    goto/16 :goto_8

    :sswitch_6
    const-string v0, "command"

    .line 265
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x83

    if-ne v0, v1, :cond_29

    .line 266
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_29

    const-string v0, "--up-BindDevice:"

    const-string v1, "message"

    .line 267
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 270
    sput-boolean v4, Lcom/jiabaida/little_elephant/app/AppConfig;->BleIsCanBind:Z

    .line 271
    iget-object v0, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mNowFragment:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-virtual {v0, v6}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->canBindDevice(Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    goto :goto_5

    .line 275
    :cond_1b
    sput-boolean v5, Lcom/jiabaida/little_elephant/app/AppConfig;->BleIsCanBind:Z

    const/4 v0, 0x1

    .line 280
    :goto_5
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "isMe"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1d

    if-eqz v0, :cond_1c

    .line 281
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 282
    iget-object v0, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mNowFragment:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-virtual {v0, v6}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->canBindDevice(Lorg/json/JSONObject;)V

    .line 283
    :cond_1c
    sput-boolean v5, Lcom/jiabaida/little_elephant/app/AppConfig;->BleBindStatus:Z

    goto/16 :goto_8

    .line 285
    :cond_1d
    sput-boolean v4, Lcom/jiabaida/little_elephant/app/AppConfig;->BleBindStatus:Z

    .line 286
    iget-object v0, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mNowFragment:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-virtual {v0, v4}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->changeLayoutVisible(Z)V

    goto/16 :goto_8

    .line 301
    :sswitch_7
    iget-object v0, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mNowFragment:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-virtual {v0, v5}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->changeLayoutVisible(Z)V

    .line 302
    sput-boolean v5, Lcom/jiabaida/little_elephant/app/AppConfig;->BleBindStatus:Z

    goto/16 :goto_8

    .line 292
    :sswitch_8
    iget-object v0, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mNowFragment:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-virtual {v0, v6}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->bindDevice(Lorg/json/JSONObject;)V

    .line 293
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_29

    .line 294
    sput-boolean v5, Lcom/jiabaida/little_elephant/app/AppConfig;->BleIsCanBind:Z

    .line 295
    sput-boolean v4, Lcom/jiabaida/little_elephant/app/AppConfig;->BleBindStatus:Z

    .line 296
    iget-object v0, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mNowFragment:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-virtual {v0, v4}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->changeLayoutVisible(Z)V

    goto/16 :goto_8

    .line 397
    :sswitch_9
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "android_v"

    .line 398
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-virtual {v0, v10, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/app/XXApplication;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-le v0, v1, :cond_29

    iget-boolean v0, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->isCheckUpdate:Z

    if-nez v0, :cond_29

    .line 402
    iput-boolean v4, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->isCheckUpdate:Z

    .line 403
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->checkUpdate()V

    goto/16 :goto_8

    :sswitch_a
    const/4 v1, 0x0

    .line 308
    :goto_6
    sget-object v2, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->mDataQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 309
    sget-object v2, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->mDataQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget-object v3, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->blelines:[B

    invoke-static {v2, v3}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->compereByteArray([B[B)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 311
    sget-object v2, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->mDataQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 312
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v2

    new-array v3, v5, [B

    iput-object v3, v2, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->readContent:[B

    new-array v2, v5, [B

    .line 313
    iput-object v2, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->blelines:[B

    .line 314
    invoke-virtual/range {p1 .. p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgbyte()[B

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgbyte()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v3}, Lcom/jiabaida/little_elephant/entity/BleCommand;->byteHexStrNoSpaces([BI)Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->postPenetrateBackService(Ljava/lang/String;)V

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1f
    const-string v0, "0"

    .line 435
    iput-object v0, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->tcpCleanType:Ljava/lang/String;

    .line 436
    iput-boolean v5, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->startGetRootPsw:Z

    .line 438
    sput-boolean v4, Lcom/jiabaida/little_elephant/util/BleUtils;->isCheckRootPsw:Z

    goto/16 :goto_8

    .line 427
    :cond_20
    iput-boolean v5, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->startGetRootPsw:Z

    const/16 v0, 0x2719

    .line 428
    sput v0, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    .line 431
    invoke-direct/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->sendCleanCmd()V

    goto/16 :goto_8

    .line 473
    :cond_21
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    .line 474
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x7d7

    if-ne v0, v2, :cond_22

    .line 475
    sput-boolean v4, Lcom/jiabaida/little_elephant/util/BleUtils;->displayVoltage:Z

    .line 476
    iget-object v0, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mNowFragment:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    sget-boolean v1, Lcom/jiabaida/little_elephant/util/BleUtils;->displayVoltage:Z

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->changeVoltageStatus(Z)V

    goto/16 :goto_8

    .line 479
    :cond_22
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 480
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 481
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 482
    sput-boolean v0, Lcom/jiabaida/little_elephant/util/BleUtils;->displayVoltage:Z

    .line 483
    iget-object v0, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mNowFragment:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    sget-boolean v2, Lcom/jiabaida/little_elephant/util/BleUtils;->displayVoltage:Z

    invoke-virtual {v0, v2}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->changeVoltageStatus(Z)V

    .line 486
    :cond_23
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 487
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 489
    iget-object v2, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mRbtUserHomeBottom1:Landroid/widget/RadioButton;

    if-eqz v0, :cond_24

    goto :goto_7

    :cond_24
    const/16 v5, 0x8

    :goto_7
    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 491
    :cond_25
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 492
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 493
    sput-boolean v0, Lcom/jiabaida/little_elephant/util/BleUtils;->displayInit:Z

    .line 495
    iget-object v0, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mParamsFragment:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    sget-boolean v1, Lcom/jiabaida/little_elephant/util/BleUtils;->displayInit:Z

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->changeInitStatus(Z)V

    goto :goto_8

    .line 422
    :cond_26
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "encodePwd"

    .line 423
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/BleUtils;->sendRootPsw(Ljava/lang/String;)V

    goto :goto_8

    .line 305
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->initData()V

    goto :goto_8

    .line 321
    :cond_28
    invoke-virtual/range {p1 .. p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/clj/fastble/utils/HexUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 322
    iput-object v0, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->blelines:[B

    .line 323
    iget-object v0, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->timeHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    .line 504
    iget-object v1, v8, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON\u89e3\u6790\u5f02\u5e38: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2714
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x60 -> :sswitch_9
        0x76 -> :sswitch_8
        0x80 -> :sswitch_7
        0x82 -> :sswitch_6
        0x8c -> :sswitch_5
        0x98 -> :sswitch_4
        0x3e9 -> :sswitch_3
        0x2328 -> :sswitch_2
        0x2711 -> :sswitch_1
        0x2713 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x78
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 802
    invoke-static {p1, p2, p0}, Lcom/jiabaida/little_elephant/util/AppUtils;->onKeyDownExit(ILandroid/view/KeyEvent;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 805
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 911
    invoke-super {p0, p1}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 912
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "intent_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 913
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->checkBluetoothBind(Ljava/lang/String;)V

    return-void
.end method

.method protected useEventBus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
