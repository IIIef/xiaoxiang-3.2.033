.class public Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "FunctionSettingActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.activity.FunctionSettingActivity"


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

.field private mLlyBalanceType:Landroid/widget/LinearLayout;

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

.field private paramProcess:I

.field private paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

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

    .line 53
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 84
    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->WriteLine:[B

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->listBalanceType:Ljava/util/List;

    .line 89
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Temp1:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Temp2:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Temp3:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Temp4:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Temp5:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Temp6:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Temp7:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Temp8:I

    .line 93
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Off:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Load:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Equalizing:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->BalanceType:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Led:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->LedNum:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->FCC:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->RTC:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Shake:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Gps:I

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Beep:I

    const/4 v0, 0x1

    .line 105
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->paramProcess:I

    .line 534
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->timeHandler:Landroid/os/Handler;

    .line 753
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$22;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$22;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 774
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$23;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$23;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 792
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$24;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$24;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 806
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$25;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$25;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-void
.end method

.method private UpdateFunction()V
    .locals 3

    .line 703
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "funSet"

    .line 705
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->toFunctionJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 706
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->syncBatteryInformation(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 708
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->ntcConfig:I

    return p0
.end method

.method static synthetic access$002(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->ntcConfig:I

    return p1
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->sendWrite(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchEqualizing:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->BalanceType:I

    return p0
.end method

.method static synthetic access$1102(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->BalanceType:I

    return p1
.end method

.method static synthetic access$1200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/TextView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mTvBalanceType:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Led:I

    return p0
.end method

.method static synthetic access$1302(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Led:I

    return p1
.end method

.method static synthetic access$1400(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchLed:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->LedNum:I

    return p0
.end method

.method static synthetic access$1502(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->LedNum:I

    return p1
.end method

.method static synthetic access$1600(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchLedNum:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->FCC:I

    return p0
.end method

.method static synthetic access$1702(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->FCC:I

    return p1
.end method

.method static synthetic access$1800(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchFCC:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->RTC:I

    return p0
.end method

.method static synthetic access$1902(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->RTC:I

    return p1
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->functionConfig:I

    return p0
.end method

.method static synthetic access$2000(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchRTC:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$202(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->functionConfig:I

    return p1
.end method

.method static synthetic access$2100(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Shake:I

    return p0
.end method

.method static synthetic access$2102(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Shake:I

    return p1
.end method

.method static synthetic access$2200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchShake:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Gps:I

    return p0
.end method

.method static synthetic access$2302(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Gps:I

    return p1
.end method

.method static synthetic access$2400(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchGps:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Beep:I

    return p0
.end method

.method static synthetic access$2502(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Beep:I

    return p1
.end method

.method static synthetic access$2600(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchBeep:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Temp8:I

    return p0
.end method

.method static synthetic access$2702(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Temp8:I

    return p1
.end method

.method static synthetic access$2800(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp8:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Temp7:I

    return p0
.end method

.method static synthetic access$2902(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Temp7:I

    return p1
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp7:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Temp6:I

    return p0
.end method

.method static synthetic access$3102(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Temp6:I

    return p1
.end method

.method static synthetic access$3200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp6:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Temp5:I

    return p0
.end method

.method static synthetic access$3302(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Temp5:I

    return p1
.end method

.method static synthetic access$3400(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp5:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Temp4:I

    return p0
.end method

.method static synthetic access$3502(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Temp4:I

    return p1
.end method

.method static synthetic access$3600(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp4:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Temp3:I

    return p0
.end method

.method static synthetic access$3702(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Temp3:I

    return p1
.end method

.method static synthetic access$3800(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp3:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Temp2:I

    return p0
.end method

.method static synthetic access$3902(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Temp2:I

    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp2:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Temp1:I

    return p0
.end method

.method static synthetic access$4102(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Temp1:I

    return p1
.end method

.method static synthetic access$4200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp1:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->UpdateFunction()V

    return-void
.end method

.method static synthetic access$4400(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->checkProcess()V

    return-void
.end method

.method static synthetic access$500(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Off:I

    return p0
.end method

.method static synthetic access$502(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Off:I

    return p1
.end method

.method static synthetic access$600(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchOff:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Load:I

    return p0
.end method

.method static synthetic access$702(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Load:I

    return p1
.end method

.method static synthetic access$800(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchLoad:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$900(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Equalizing:I

    return p0
.end method

.method static synthetic access$902(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->Equalizing:I

    return p1
.end method

.method private checkProcess()V
    .locals 1

    .line 746
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->paramProcess:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->paramProcess:I

    if-nez v0, :cond_0

    .line 748
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->UpdateFunction()V

    .line 749
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->hideLoading()V

    :cond_0
    return-void
.end method

.method private sendWrite(I)V
    .locals 8

    .line 464
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->functionConfig:I

    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v0

    .line 465
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->ntcConfig:I

    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v1

    .line 467
    sget-object v2, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DD 5A FA :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->functionConfig:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  ntc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->ntcConfig:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "paramSetEntity : "

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne p1, v6, :cond_0

    .line 470
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x1d

    new-array v4, v4, [B

    aget-byte v7, v0, v5

    aput-byte v7, v4, v5

    aget-byte v0, v0, v6

    aput-byte v0, v4, v6

    invoke-virtual {p1, v1, v6, v4}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 471
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setWriteMode()V

    .line 472
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 473
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->getCmdApiStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 476
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v0, 0x1e

    new-array v4, v4, [B

    aget-byte v7, v1, v5

    aput-byte v7, v4, v5

    aget-byte v1, v1, v6

    aput-byte v1, v4, v6

    invoke-virtual {p1, v0, v6, v4}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 477
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setWriteMode()V

    .line 478
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 480
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->getCmdApiStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

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

    .line 488
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->QueueTag:Ljava/lang/String;

    .line 489
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->showLoading()V

    .line 490
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->listBalanceType:Ljava/util/List;

    new-instance v1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    const v2, 0x7f0d00d7

    invoke-virtual {p0, v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, ""

    invoke-direct {v1, v3, v2, v3, v4}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->listBalanceType:Ljava/util/List;

    new-instance v1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    const v2, 0x7f0d011d

    invoke-virtual {p0, v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-direct {v1, v3, v2, v5, v4}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 7

    const p1, 0x7f0800c3

    .line 113
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->flTopBack:Landroid/widget/FrameLayout;

    const p1, 0x7f0800f9

    .line 114
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->ivTopBack:Landroid/widget/ImageView;

    const p1, 0x7f0802a0

    .line 115
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->tvTopTitle:Landroid/widget/TextView;

    const p1, 0x7f0802a2

    .line 116
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->tvTopTitleR:Landroid/widget/TextView;

    .line 117
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->ivTopBack:Landroid/widget/ImageView;

    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f080137

    .line 118
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->llyTopTitleBg:Landroid/widget/RelativeLayout;

    .line 119
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->flTopBack:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->tvTopTitleR:Landroid/widget/TextView;

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 120
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->flTopBack:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0801ad

    .line 127
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchOff:Landroid/widget/Switch;

    const p1, 0x7f0801ac

    .line 128
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchLoad:Landroid/widget/Switch;

    const p1, 0x7f0801a8

    .line 129
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchEqualizing:Landroid/widget/Switch;

    const p1, 0x7f08011f

    .line 130
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mLlyBalanceType:Landroid/widget/LinearLayout;

    const p1, 0x7f080217

    .line 131
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mTvBalanceTypeTitle:Landroid/widget/TextView;

    const p1, 0x7f080216

    .line 132
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mTvBalanceType:Landroid/widget/TextView;

    const p1, 0x7f0801b0

    .line 133
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp1:Landroid/widget/Switch;

    const p1, 0x7f0801b1

    .line 134
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp2:Landroid/widget/Switch;

    const p1, 0x7f0801b2

    .line 135
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp3:Landroid/widget/Switch;

    const p1, 0x7f0801b3

    .line 136
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp4:Landroid/widget/Switch;

    const p1, 0x7f0801b4

    .line 137
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp5:Landroid/widget/Switch;

    const p1, 0x7f0801b5

    .line 138
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp6:Landroid/widget/Switch;

    const p1, 0x7f0801b6

    .line 139
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp7:Landroid/widget/Switch;

    const p1, 0x7f0801b7

    .line 140
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp8:Landroid/widget/Switch;

    const p1, 0x7f0801aa

    .line 141
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchLed:Landroid/widget/Switch;

    const p1, 0x7f0801ab

    .line 142
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchLedNum:Landroid/widget/Switch;

    const p1, 0x7f0801a3

    .line 143
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchFCC:Landroid/widget/Switch;

    const p1, 0x7f0801a4

    .line 144
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchRTC:Landroid/widget/Switch;

    const p1, 0x7f0801af

    .line 145
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchShake:Landroid/widget/Switch;

    const p1, 0x7f0801a9

    .line 146
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchGps:Landroid/widget/Switch;

    const p1, 0x7f0801a5

    .line 147
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchBeep:Landroid/widget/Switch;

    .line 149
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    .line 150
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 152
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    .line 153
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setInit()V

    .line 154
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 156
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v0, 0x1d

    const/4 v1, 0x2

    .line 157
    invoke-virtual {p1, v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II)V

    .line 158
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 161
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp1:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 178
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp2:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$3;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 194
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp3:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$4;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$4;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 211
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp4:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$5;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$5;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 227
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp5:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$6;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$6;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 243
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp6:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$7;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$7;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 260
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp7:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$8;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$8;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 277
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp8:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$9;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$9;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 295
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchRTC:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$10;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$10;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 313
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchFCC:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$11;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$11;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 330
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchLedNum:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$12;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$12;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 347
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchLed:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$13;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$13;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 361
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchEqualizing:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$14;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$14;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 378
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchLoad:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$15;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$15;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 394
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchOff:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$16;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$16;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 410
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchShake:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$17;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$17;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 427
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchGps:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$18;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$18;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 444
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchBeep:Landroid/widget/Switch;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$19;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$19;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onClickFunction(Landroid/view/View;)V
    .locals 3

    .line 674
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f08011f

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 676
    :cond_0
    new-instance p1, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mTvBalanceType:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->listBalanceType:Ljava/util/List;

    invoke-direct {p1, v0, v1, v2}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 677
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$21;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$21;-><init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->setBottomItemListener(Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;)V

    .line 692
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->show()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 653
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onDestroy()V

    .line 654
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->timeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 655
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

    .line 715
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp1:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const-string v1, "1,"

    const-string v2, "0,"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 716
    :goto_0
    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp2:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 717
    :goto_1
    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp3:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v1

    goto :goto_2

    :cond_2
    move-object v4, v2

    .line 718
    :goto_2
    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp4:Landroid/widget/Switch;

    invoke-virtual {v5}, Landroid/widget/Switch;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v1

    goto :goto_3

    :cond_3
    move-object v5, v2

    .line 719
    :goto_3
    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp5:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v1

    goto :goto_4

    :cond_4
    move-object v6, v2

    .line 720
    :goto_4
    iget-object v7, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp6:Landroid/widget/Switch;

    invoke-virtual {v7}, Landroid/widget/Switch;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, v1

    goto :goto_5

    :cond_5
    move-object v7, v2

    .line 721
    :goto_5
    iget-object v8, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp7:Landroid/widget/Switch;

    invoke-virtual {v8}, Landroid/widget/Switch;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_6

    :cond_6
    move-object v1, v2

    .line 722
    :goto_6
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchTemp8:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "1"

    goto :goto_7

    :cond_7
    const-string v2, "0"

    .line 724
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

    .line 725
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 726
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchOff:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    const-string v3, "onOff"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 727
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchLoad:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    const-string v3, "loadCheck"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 728
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchEqualizing:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    const-string v3, "equalizerFun"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 729
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mTvBalanceType:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "equalization"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "tempContro"

    .line 730
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 731
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchLed:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const-string v2, "led"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 732
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchLedNum:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const-string v2, "ledCount"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 733
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchFCC:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const-string v2, "fccLimit"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 734
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchRTC:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const-string v2, "rtc"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 735
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchShake:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const-string v2, "charingHandle"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 736
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchGps:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const-string v2, "gps"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 737
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->mSwitchBeep:Landroid/widget/Switch;

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
