.class public Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "FunctionSettingOldActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.activity.FunctionSettingOldActivity"


# instance fields
.field private BalanceType:I

.field private Beep:I

.field private Equalizing:I

.field private FCC:I

.field private Gps:I

.field private Led:I

.field private LedNum:I

.field private Load:I

.field private Off:I

.field private RTC:I

.field private Shake:I

.field private Temp1:I

.field private Temp2:I

.field private Temp3:I

.field private Temp4:I

.field private Temp5:I

.field private Temp6:I

.field private Temp7:I

.field private Temp8:I

.field private WriteLine:[B

.field private closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

.field private closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

.field private factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private flTopBack:Landroid/widget/FrameLayout;

.field private functionConfig:I

.field private functionResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private isWrite:Z

.field private ivTopBack:Landroid/widget/ImageView;

.field listBalanceType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BottomSelectBean;",
            ">;"
        }
    .end annotation
.end field

.field private llyTopTitleBg:Landroid/widget/RelativeLayout;

.field private mFuncCMD:Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

.field private mLlyBalanceType:Landroid/widget/LinearLayout;

.field private mNTCCMD:Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;

.field private mSwitchBeep:Landroid/widget/Switch;

.field private mSwitchEqualizing:Landroid/widget/Switch;

.field private mSwitchFCC:Landroid/widget/Switch;

.field private mSwitchGps:Landroid/widget/Switch;

.field private mSwitchLed:Landroid/widget/Switch;

.field private mSwitchLedNum:Landroid/widget/Switch;

.field private mSwitchLoad:Landroid/widget/Switch;

.field private mSwitchOff:Landroid/widget/Switch;

.field private mSwitchRTC:Landroid/widget/Switch;

.field private mSwitchShake:Landroid/widget/Switch;

.field private mSwitchTemp1:Landroid/widget/Switch;

.field private mSwitchTemp2:Landroid/widget/Switch;

.field private mSwitchTemp3:Landroid/widget/Switch;

.field private mSwitchTemp4:Landroid/widget/Switch;

.field private mSwitchTemp5:Landroid/widget/Switch;

.field private mSwitchTemp6:Landroid/widget/Switch;

.field private mSwitchTemp7:Landroid/widget/Switch;

.field private mSwitchTemp8:Landroid/widget/Switch;

.field private mTvBalanceType:Landroid/widget/TextView;

.field private mTvBalanceTypeTitle:Landroid/widget/TextView;

.field private ntcConfig:I

.field private ntcResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private paramProcess:I

.field timeHandler:Landroid/os/Handler;

.field private tvTopTitle:Landroid/widget/TextView;

.field private tvTopTitleR:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 78
    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->WriteLine:[B

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->listBalanceType:Ljava/util/List;

    .line 83
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->Temp1:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->Temp2:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->Temp3:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->Temp4:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->Temp5:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->Temp6:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->Temp7:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->Temp8:I

    .line 87
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->Off:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->Load:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->Equalizing:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->BalanceType:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->Led:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->LedNum:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->FCC:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->RTC:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->Shake:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->Gps:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->Beep:I

    const/4 v0, 0x2

    .line 102
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->paramProcess:I

    .line 416
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->timeHandler:Landroid/os/Handler;

    .line 579
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$22;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$22;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 607
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$23;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$23;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->functionResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 631
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$24;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$24;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->ntcResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 655
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$25;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$25;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-void
.end method

.method private UpdateFunction()V
    .locals 3

    .line 528
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "funSet"

    .line 530
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->toFunctionJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 531
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->syncBatteryInformation(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 533
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mNTCCMD:Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchRTC:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchShake:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchGps:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchBeep:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp1:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp2:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp3:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp4:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp5:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp6:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mFuncCMD:Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp7:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp8:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->isWrite:Z

    return p0
.end method

.method static synthetic access$2202(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->isWrite:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->getOldParams()V

    return-void
.end method

.method static synthetic access$2500(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->UpdateFunction()V

    return-void
.end method

.method static synthetic access$2600(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->checkProcess()V

    return-void
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchOff:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchLoad:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchEqualizing:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->BalanceType:I

    return p0
.end method

.method static synthetic access$602(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->BalanceType:I

    return p1
.end method

.method static synthetic access$700(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mTvBalanceType:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchLed:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$900(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchFCC:Landroid/widget/Switch;

    return-object p0
.end method

.method private checkProcess()V
    .locals 2

    .line 571
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->paramProcess:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->paramProcess:I

    if-nez v0, :cond_0

    .line 573
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->UpdateFunction()V

    .line 574
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->hideLoading()V

    .line 575
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    :cond_0
    return-void
.end method

.method private getOldParams()V
    .locals 2

    .line 597
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mFuncCMD:Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    .line 598
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->functionResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 599
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mFuncCMD:Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 601
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mNTCCMD:Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;

    .line 602
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->ntcResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 603
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mNTCCMD:Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a0048

    return v0
.end method

.method protected initData()V
    .locals 6

    .line 410
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->QueueTag:Ljava/lang/String;

    .line 411
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->showLoading()V

    .line 412
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->listBalanceType:Ljava/util/List;

    new-instance v1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    const v2, 0x7f0d00d7

    invoke-virtual {p0, v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, ""

    invoke-direct {v1, v3, v2, v3, v4}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->listBalanceType:Ljava/util/List;

    new-instance v1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    const v2, 0x7f0d011d

    invoke-virtual {p0, v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-direct {v1, v3, v2, v5, v4}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 7

    const p1, 0x7f0800c3

    .line 108
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->flTopBack:Landroid/widget/FrameLayout;

    const p1, 0x7f0800f9

    .line 109
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->ivTopBack:Landroid/widget/ImageView;

    const p1, 0x7f0802a0

    .line 110
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->tvTopTitle:Landroid/widget/TextView;

    const p1, 0x7f0802a2

    .line 111
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->tvTopTitleR:Landroid/widget/TextView;

    .line 112
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->ivTopBack:Landroid/widget/ImageView;

    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f080137

    .line 113
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->llyTopTitleBg:Landroid/widget/RelativeLayout;

    .line 114
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->flTopBack:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->tvTopTitleR:Landroid/widget/TextView;

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 115
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->flTopBack:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0801ad

    .line 122
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchOff:Landroid/widget/Switch;

    const p1, 0x7f0801ac

    .line 123
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchLoad:Landroid/widget/Switch;

    const p1, 0x7f0801a8

    .line 124
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchEqualizing:Landroid/widget/Switch;

    const p1, 0x7f08011f

    .line 125
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mLlyBalanceType:Landroid/widget/LinearLayout;

    const p1, 0x7f080217

    .line 126
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mTvBalanceTypeTitle:Landroid/widget/TextView;

    const p1, 0x7f080216

    .line 127
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mTvBalanceType:Landroid/widget/TextView;

    const p1, 0x7f0801b0

    .line 128
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp1:Landroid/widget/Switch;

    const p1, 0x7f0801b1

    .line 129
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp2:Landroid/widget/Switch;

    const p1, 0x7f0801b2

    .line 130
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp3:Landroid/widget/Switch;

    const p1, 0x7f0801b3

    .line 131
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp4:Landroid/widget/Switch;

    const p1, 0x7f0801b4

    .line 132
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp5:Landroid/widget/Switch;

    const p1, 0x7f0801b5

    .line 133
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp6:Landroid/widget/Switch;

    const p1, 0x7f0801b6

    .line 134
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp7:Landroid/widget/Switch;

    const p1, 0x7f0801b7

    .line 135
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp8:Landroid/widget/Switch;

    const p1, 0x7f0801aa

    .line 136
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchLed:Landroid/widget/Switch;

    const p1, 0x7f0801ab

    .line 137
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchLedNum:Landroid/widget/Switch;

    const p1, 0x7f0801a3

    .line 138
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchFCC:Landroid/widget/Switch;

    const p1, 0x7f0801a4

    .line 139
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchRTC:Landroid/widget/Switch;

    const p1, 0x7f0801af

    .line 140
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchShake:Landroid/widget/Switch;

    const p1, 0x7f0801a9

    .line 141
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchGps:Landroid/widget/Switch;

    const p1, 0x7f0801a5

    .line 142
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchBeep:Landroid/widget/Switch;

    .line 144
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    .line 145
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 147
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    .line 149
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 151
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 152
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp1:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$2;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 166
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp2:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$3;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 180
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp3:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$4;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$4;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 194
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp4:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$5;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$5;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 208
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp5:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$6;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$6;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 222
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp6:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$7;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$7;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 237
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp7:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$8;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$8;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 252
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp8:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$9;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$9;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 268
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchRTC:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$10;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$10;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 283
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchFCC:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$11;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$11;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 298
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchLedNum:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$12;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$12;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 304
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchLed:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$13;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$13;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 318
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchEqualizing:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$14;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$14;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 333
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchLoad:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$15;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$15;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 348
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchOff:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$16;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$16;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 363
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchShake:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$17;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$17;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 378
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchGps:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$18;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$18;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 393
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchBeep:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$19;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$19;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onClickFunction(Landroid/view/View;)V
    .locals 3

    .line 497
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f08011f

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 499
    :cond_0
    new-instance p1, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mTvBalanceType:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->listBalanceType:Ljava/util/List;

    invoke-direct {p1, v0, v1, v2}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 500
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$21;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$21;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->setBottomItemListener(Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;)V

    .line 519
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->show()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 476
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onDestroy()V

    .line 477
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->timeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 478
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onEventBusMsg(Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method public toFunctionJson()Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp1:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const-string v1, "1,"

    const-string v2, "0,"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 541
    :goto_0
    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp2:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 542
    :goto_1
    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp3:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v1

    goto :goto_2

    :cond_2
    move-object v4, v2

    .line 543
    :goto_2
    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp4:Landroid/widget/Switch;

    invoke-virtual {v5}, Landroid/widget/Switch;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v1

    goto :goto_3

    :cond_3
    move-object v5, v2

    .line 544
    :goto_3
    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp5:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v1

    goto :goto_4

    :cond_4
    move-object v6, v2

    .line 545
    :goto_4
    iget-object v7, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp6:Landroid/widget/Switch;

    invoke-virtual {v7}, Landroid/widget/Switch;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, v1

    goto :goto_5

    :cond_5
    move-object v7, v2

    .line 546
    :goto_5
    iget-object v8, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp7:Landroid/widget/Switch;

    invoke-virtual {v8}, Landroid/widget/Switch;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_6

    :cond_6
    move-object v1, v2

    .line 547
    :goto_6
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchTemp8:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "1"

    goto :goto_7

    :cond_7
    const-string v2, "0"

    .line 549
    :goto_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 550
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 551
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchOff:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    const-string v3, "onOff"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 552
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchLoad:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    const-string v3, "loadCheck"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 553
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchEqualizing:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    const-string v3, "equalizerFun"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 554
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mTvBalanceType:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "equalization"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "tempContro"

    .line 555
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 556
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchLed:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const-string v2, "led"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 557
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchLedNum:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const-string v2, "ledCount"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 558
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchFCC:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const-string v2, "fccLimit"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 559
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchRTC:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const-string v2, "rtc"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 560
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchShake:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const-string v2, "charingHandle"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 561
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchGps:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const-string v2, "gps"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 562
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->mSwitchBeep:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const-string v2, "beepDevice"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1
.end method

.method protected useEventBus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
