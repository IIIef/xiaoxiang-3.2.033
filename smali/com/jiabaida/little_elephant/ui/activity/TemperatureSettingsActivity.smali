.class public Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "TemperatureSettingsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.activity.TemperatureSettingsActivity"


# instance fields
.field private InputPram:Z

.field private WriteLine:[B

.field private closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

.field private closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

.field private factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private flTopBack:Landroid/widget/FrameLayout;

.field private ivTopBack:Landroid/widget/ImageView;

.field private llyTopTitleBg:Landroid/widget/RelativeLayout;

.field private mChargingHighDelayed:I

.field private mChargingHighRecovery:I

.field private mChargingHighTemp:I

.field private mChargingLowDelayed:I

.field private mChargingLowRecovery:I

.field private mChargingLowTemp:I

.field private mDischargeHighDelayedp:I

.field private mDischargeHighRecovery:I

.field private mDischargeHighTemp:I

.field private mDischargeLowDelayedp:I

.field private mDischargeLowRecovery:I

.field private mDischargeLowTemp:I

.field private mEdChargingHighDelayed:Landroid/widget/EditText;

.field private mEdChargingHighRecovery:Landroid/widget/EditText;

.field private mEdChargingHighTemp:Landroid/widget/EditText;

.field private mEdChargingLowDelayed:Landroid/widget/EditText;

.field private mEdChargingLowRecovery:Landroid/widget/EditText;

.field private mEdChargingLowTemp:Landroid/widget/EditText;

.field private mEdDischargeHighDelayed:Landroid/widget/EditText;

.field private mEdDischargeHighRecovery:Landroid/widget/EditText;

.field private mEdDischargeHighTemp:Landroid/widget/EditText;

.field private mEdDischargeLow:Landroid/widget/EditText;

.field private mEdDischargeLowDelayed:Landroid/widget/EditText;

.field private mEdDischargeLowRecovery:Landroid/widget/EditText;

.field private mTvChargingHighDelayed:Landroid/widget/TextView;

.field private mTvChargingHighRecovery:Landroid/widget/TextView;

.field private mTvChargingHighTemp:Landroid/widget/TextView;

.field private mTvChargingLowDelayed:Landroid/widget/TextView;

.field private mTvChargingLowRecovery:Landroid/widget/TextView;

.field private mTvChargingLowTemp:Landroid/widget/TextView;

.field private mTvDischargeHigh:Landroid/widget/TextView;

.field private mTvDischargeHighDelayed:Landroid/widget/TextView;

.field private mTvDischargeHighRecovery:Landroid/widget/TextView;

.field private mTvDischargeLow:Landroid/widget/TextView;

.field private mTvDischargeLowDelayed:Landroid/widget/TextView;

.field private mTvDischargeLowRecovery:Landroid/widget/TextView;

.field private mTvSetChargingHighDelayed:Landroid/widget/TextView;

.field private mTvSetChargingHighRecovery:Landroid/widget/TextView;

.field private mTvSetChargingHighTemp:Landroid/widget/TextView;

.field private mTvSetChargingLowDelayed:Landroid/widget/TextView;

.field private mTvSetChargingLowRecovery:Landroid/widget/TextView;

.field private mTvSetChargingLowTemp:Landroid/widget/TextView;

.field private mTvSetDischargeHighDelayed:Landroid/widget/TextView;

.field private mTvSetDischargeHighRecovery:Landroid/widget/TextView;

.field private mTvSetDischargeHighTemp:Landroid/widget/TextView;

.field private mTvSetDischargeLow:Landroid/widget/TextView;

.field private mTvSetDischargeLowDelayed:Landroid/widget/TextView;

.field private mTvSetDischargeLowRecovery:Landroid/widget/TextView;

.field private paramProcess:I

.field private paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private tempDelayEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private tempProtectionEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field timeHandler:Landroid/os/Handler;

.field private tvTopTitle:Landroid/widget/TextView;

.field private tvTopTitleR:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->InputPram:Z

    const/4 v0, 0x2

    .line 94
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->paramProcess:I

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 106
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->WriteLine:[B

    .line 233
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->timeHandler:Landroid/os/Handler;

    .line 751
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 771
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$4;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$4;-><init>(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 789
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$5;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$5;-><init>(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 803
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$6;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$6;-><init>(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-void
.end method

.method private UpdateTemp()V
    .locals 3

    .line 820
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "tempParam"

    .line 822
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->toTempJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 823
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->syncBatteryInformation(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 825
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->tempProtectionEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvChargingHighRecovery:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mChargingHighTemp:I

    return p1
.end method

.method static synthetic access$1100(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvChargingLowTemp:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvChargingLowRecovery:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvDischargeHigh:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvDischargeHighRecovery:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvDischargeLow:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvDischargeLowRecovery:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->tempDelayEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mChargingHighDelayed:I

    return p1
.end method

.method static synthetic access$1902(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mChargingLowDelayed:I

    return p1
.end method

.method static synthetic access$2002(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mDischargeHighDelayedp:I

    return p1
.end method

.method static synthetic access$202(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mChargingHighRecovery:I

    return p1
.end method

.method static synthetic access$2102(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mDischargeLowDelayedp:I

    return p1
.end method

.method static synthetic access$2200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvChargingLowDelayed:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvChargingHighDelayed:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvDischargeLowDelayed:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvDischargeHighDelayed:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->UpdateTemp()V

    return-void
.end method

.method static synthetic access$2700(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$2900()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->checkProcess()V

    return-void
.end method

.method static synthetic access$302(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mChargingLowTemp:I

    return p1
.end method

.method static synthetic access$402(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mChargingLowRecovery:I

    return p1
.end method

.method static synthetic access$502(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mDischargeHighTemp:I

    return p1
.end method

.method static synthetic access$602(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mDischargeHighRecovery:I

    return p1
.end method

.method static synthetic access$702(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mDischargeLowTemp:I

    return p1
.end method

.method static synthetic access$802(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mDischargeLowRecovery:I

    return p1
.end method

.method static synthetic access$900(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvChargingHighTemp:Landroid/widget/TextView;

    return-object p0
.end method

.method private checkProcess()V
    .locals 1

    .line 744
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->paramProcess:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->paramProcess:I

    if-nez v0, :cond_0

    .line 746
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->UpdateTemp()V

    .line 747
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->hideLoading()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a0050

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 181
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->QueueTag:Ljava/lang/String;

    .line 182
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showLoading()V

    .line 183
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->tempProtectionEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 184
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 185
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->tempProtectionEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 187
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x2c

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->tempDelayEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 188
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 189
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->tempDelayEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 7

    const p1, 0x7f0800c3

    .line 114
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->flTopBack:Landroid/widget/FrameLayout;

    const p1, 0x7f0800f9

    .line 115
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->ivTopBack:Landroid/widget/ImageView;

    const p1, 0x7f0802a0

    .line 116
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->tvTopTitle:Landroid/widget/TextView;

    const p1, 0x7f0802a2

    .line 117
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->tvTopTitleR:Landroid/widget/TextView;

    .line 118
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->ivTopBack:Landroid/widget/ImageView;

    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f080137

    .line 119
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->llyTopTitleBg:Landroid/widget/RelativeLayout;

    .line 120
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->flTopBack:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->tvTopTitleR:Landroid/widget/TextView;

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 121
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->flTopBack:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0801dc

    .line 128
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvChargingHighTemp:Landroid/widget/TextView;

    const p1, 0x7f080076

    .line 129
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingHighTemp:Landroid/widget/EditText;

    const p1, 0x7f080269

    .line 130
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvSetChargingHighTemp:Landroid/widget/TextView;

    const p1, 0x7f0801db

    .line 131
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvChargingHighRecovery:Landroid/widget/TextView;

    const p1, 0x7f080075

    .line 132
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingHighRecovery:Landroid/widget/EditText;

    const p1, 0x7f080268

    .line 133
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvSetChargingHighRecovery:Landroid/widget/TextView;

    const p1, 0x7f0801da

    .line 134
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvChargingHighDelayed:Landroid/widget/TextView;

    const p1, 0x7f080074

    .line 135
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingHighDelayed:Landroid/widget/EditText;

    const p1, 0x7f080267

    .line 136
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvSetChargingHighDelayed:Landroid/widget/TextView;

    const p1, 0x7f0801df

    .line 137
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvChargingLowTemp:Landroid/widget/TextView;

    const p1, 0x7f080079

    .line 138
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingLowTemp:Landroid/widget/EditText;

    const p1, 0x7f08026c

    .line 139
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvSetChargingLowTemp:Landroid/widget/TextView;

    const p1, 0x7f0801de

    .line 140
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvChargingLowRecovery:Landroid/widget/TextView;

    const p1, 0x7f080078

    .line 141
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingLowRecovery:Landroid/widget/EditText;

    const p1, 0x7f08026b

    .line 142
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvSetChargingLowRecovery:Landroid/widget/TextView;

    const p1, 0x7f0801dd

    .line 143
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvChargingLowDelayed:Landroid/widget/TextView;

    const p1, 0x7f080077

    .line 144
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingLowDelayed:Landroid/widget/EditText;

    const p1, 0x7f08026a

    .line 145
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvSetChargingLowDelayed:Landroid/widget/TextView;

    const p1, 0x7f0801e3

    .line 146
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvDischargeHigh:Landroid/widget/TextView;

    const p1, 0x7f08007f

    .line 147
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeHighTemp:Landroid/widget/EditText;

    const p1, 0x7f080272

    .line 148
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvSetDischargeHighTemp:Landroid/widget/TextView;

    const p1, 0x7f0801e5

    .line 149
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvDischargeHighRecovery:Landroid/widget/TextView;

    const p1, 0x7f08007e

    .line 150
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeHighRecovery:Landroid/widget/EditText;

    const p1, 0x7f080271

    .line 151
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvSetDischargeHighRecovery:Landroid/widget/TextView;

    const p1, 0x7f0801e4

    .line 152
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvDischargeHighDelayed:Landroid/widget/TextView;

    const p1, 0x7f08007d

    .line 153
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeHighDelayed:Landroid/widget/EditText;

    const p1, 0x7f080270

    .line 154
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvSetDischargeHighDelayed:Landroid/widget/TextView;

    const p1, 0x7f0801e6

    .line 155
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvDischargeLow:Landroid/widget/TextView;

    const p1, 0x7f080080

    .line 156
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeLow:Landroid/widget/EditText;

    const p1, 0x7f080273

    .line 157
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvSetDischargeLow:Landroid/widget/TextView;

    const p1, 0x7f0801e8

    .line 158
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvDischargeLowRecovery:Landroid/widget/TextView;

    const p1, 0x7f080082

    .line 159
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeLowRecovery:Landroid/widget/EditText;

    const p1, 0x7f080275

    .line 160
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvSetDischargeLowRecovery:Landroid/widget/TextView;

    const p1, 0x7f0801e7

    .line 161
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvDischargeLowDelayed:Landroid/widget/TextView;

    const p1, 0x7f080081

    .line 162
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeLowDelayed:Landroid/widget/EditText;

    const p1, 0x7f080274

    .line 163
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvSetDischargeLowDelayed:Landroid/widget/TextView;

    .line 165
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    .line 166
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 168
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    .line 169
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setInit()V

    .line 170
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 172
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 173
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setWriteMode()V

    .line 174
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    return-void
.end method

.method public onClickTemperature(Landroid/view/View;)V
    .locals 12

    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "-40~"

    const v1, 0x7f0d018a

    const/16 v2, -0x28

    const/16 v3, 0x55

    const/4 v4, 0x2

    const/16 v5, 0xff

    const-string v6, "~"

    const/4 v7, 0x0

    const v8, 0x7f0d0189

    const v9, 0x7f0d016e

    const/4 v10, 0x1

    const-string v11, ""

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_8

    .line 678
    :pswitch_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeLowRecovery:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 679
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeLowRecovery:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->StrTransInt(Ljava/lang/String;)I

    move-result p1

    .line 680
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mDischargeLowTemp:I

    add-int/lit8 v1, v0, 0x14

    invoke-static {p1, v1, v0}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->InputPram:Z

    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showLoading()V

    .line 684
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0xf

    invoke-static {p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->SendTemperatureConversion(I)I

    move-result p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v0, v1, v10, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 686
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 688
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvDischargeLowRecovery:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeLowRecovery:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeLowRecovery:Landroid/widget/EditText;

    invoke-virtual {p1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 691
    :cond_0
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mDischargeLowTemp:I

    add-int/lit8 v1, v0, 0x14

    if-le p1, v1, :cond_1

    .line 693
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v10, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mDischargeLowTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mDischargeLowTemp:I

    add-int/lit8 v2, v2, 0x14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ge p1, v0, :cond_2

    const p1, 0x7f0d00f0

    .line 695
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 698
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeLowRecovery:Landroid/widget/EditText;

    invoke-virtual {p1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 701
    :cond_3
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->hideLoading()V

    .line 702
    invoke-virtual {p0, v9}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 710
    :pswitch_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeLowDelayed:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 711
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeLowDelayed:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 712
    invoke-static {p1, v5, v4}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->InputPram:Z

    if-eqz v0, :cond_4

    .line 715
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showLoading()V

    .line 716
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x2e

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v10, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 717
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 720
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvDischargeLowDelayed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeLowDelayed:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeLowDelayed:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 722
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mDischargeLowDelayedp:I

    goto/16 :goto_8

    .line 724
    :cond_4
    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 725
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeLowDelayed:Landroid/widget/EditText;

    invoke-virtual {p1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 728
    :cond_5
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->hideLoading()V

    .line 729
    invoke-virtual {p0, v9}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 646
    :pswitch_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeLow:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 647
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeLow:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->StrTransInt(Ljava/lang/String;)I

    move-result p1

    .line 648
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mDischargeLowRecovery:I

    invoke-static {p1, v1, v2}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->InputPram:Z

    if-eqz v1, :cond_6

    .line 651
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showLoading()V

    .line 652
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0xe

    invoke-static {p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->SendTemperatureConversion(I)I

    move-result v2

    invoke-static {v2}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v10, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 654
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 656
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvDischargeLow:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeLow:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeLow:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 658
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mDischargeLowTemp:I

    goto/16 :goto_8

    :cond_6
    if-ge p1, v2, :cond_7

    .line 662
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v10, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mDischargeLowRecovery:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_1

    .line 663
    :cond_7
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mDischargeLowRecovery:I

    if-le p1, v0, :cond_8

    const p1, 0x7f0d00ef

    .line 664
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 666
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeLow:Landroid/widget/EditText;

    invoke-virtual {p1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 669
    :cond_9
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->hideLoading()V

    .line 670
    invoke-virtual {p0, v9}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 556
    :pswitch_4
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeHighTemp:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 557
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeHighTemp:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 558
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mDischargeHighRecovery:I

    invoke-static {p1, v3, v0}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->InputPram:Z

    if-eqz v0, :cond_a

    .line 561
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showLoading()V

    .line 562
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0xc

    invoke-static {p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->SendTemperatureConversion(I)I

    move-result v2

    invoke-static {v2}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v10, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 564
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 566
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvDischargeHigh:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeHighTemp:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeHighTemp:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 568
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mDischargeHighTemp:I

    goto/16 :goto_8

    .line 570
    :cond_a
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mDischargeHighRecovery:I

    if-ge p1, v0, :cond_b

    const p1, 0x7f0d00ee

    .line 571
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    if-le p1, v3, :cond_c

    .line 573
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v10, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mDischargeHighRecovery:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 575
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeHighTemp:Landroid/widget/EditText;

    invoke-virtual {p1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 578
    :cond_d
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->hideLoading()V

    .line 579
    invoke-virtual {p0, v9}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 587
    :pswitch_5
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeHighRecovery:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 588
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeHighRecovery:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 589
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mDischargeHighTemp:I

    add-int/lit8 v1, v0, -0x14

    invoke-static {p1, v0, v1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->InputPram:Z

    if-eqz v0, :cond_e

    .line 592
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showLoading()V

    .line 593
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0xd

    invoke-static {p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->SendTemperatureConversion(I)I

    move-result p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v0, v1, v10, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 595
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 597
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvDischargeHighRecovery:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeHighRecovery:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeHighRecovery:Landroid/widget/EditText;

    invoke-virtual {p1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 600
    :cond_e
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mDischargeHighTemp:I

    add-int/lit8 v1, v0, -0x14

    if-ge p1, v1, :cond_f

    .line 601
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v10, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mDischargeHighTemp:I

    add-int/lit8 v2, v2, -0x14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mDischargeHighTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    if-le p1, v0, :cond_10

    const p1, 0x7f0d0001

    .line 603
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 606
    :cond_10
    :goto_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeHighRecovery:Landroid/widget/EditText;

    invoke-virtual {p1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 609
    :cond_11
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->hideLoading()V

    .line 610
    invoke-virtual {p0, v9}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 618
    :pswitch_6
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeHighDelayed:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 619
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeHighDelayed:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 620
    invoke-static {p1, v5, v4}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->InputPram:Z

    if-eqz v0, :cond_12

    .line 623
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showLoading()V

    .line 624
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x2f

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v10, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 626
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 628
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvDischargeHighDelayed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeHighDelayed:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeHighDelayed:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 630
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mDischargeHighDelayedp:I

    goto/16 :goto_8

    .line 632
    :cond_12
    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 633
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdDischargeHighDelayed:Landroid/widget/EditText;

    invoke-virtual {p1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 636
    :cond_13
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->hideLoading()V

    .line 637
    invoke-virtual {p0, v9}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 465
    :pswitch_7
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingLowTemp:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 467
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingLowTemp:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->StrTransInt(Ljava/lang/String;)I

    move-result p1

    .line 469
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mChargingLowRecovery:I

    invoke-static {p1, v1, v2}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->InputPram:Z

    if-eqz v1, :cond_14

    .line 472
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showLoading()V

    .line 474
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0xa

    invoke-static {p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->SendTemperatureConversion(I)I

    move-result v2

    invoke-static {v2}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v10, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 475
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 478
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvChargingLowTemp:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingLowTemp:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingLowTemp:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mChargingLowTemp:I

    goto/16 :goto_8

    :cond_14
    if-ge p1, v2, :cond_15

    .line 484
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v10, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mChargingLowRecovery:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_4

    .line 485
    :cond_15
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mChargingLowRecovery:I

    if-le p1, v0, :cond_16

    const p1, 0x7f0d00da

    .line 486
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 488
    :cond_16
    :goto_4
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingLowTemp:Landroid/widget/EditText;

    invoke-virtual {p1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 491
    :cond_17
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->hideLoading()V

    .line 492
    invoke-virtual {p0, v9}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 499
    :pswitch_8
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingLowRecovery:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 500
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingLowRecovery:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->StrTransInt(Ljava/lang/String;)I

    move-result p1

    .line 501
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mChargingLowTemp:I

    add-int/lit8 v1, v0, 0x14

    invoke-static {p1, v1, v0}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->InputPram:Z

    if-eqz v0, :cond_18

    .line 504
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showLoading()V

    .line 506
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0xb

    invoke-static {p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->SendTemperatureConversion(I)I

    move-result v2

    invoke-static {v2}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v10, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 507
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 510
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvChargingLowRecovery:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingLowRecovery:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingLowRecovery:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mChargingLowRecovery:I

    goto/16 :goto_8

    .line 514
    :cond_18
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mChargingLowTemp:I

    add-int/lit8 v0, v0, 0x14

    if-le p1, v0, :cond_19

    .line 516
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v10, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mChargingLowTemp:I

    add-int/lit8 v2, v2, 0x14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mChargingLowTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_5

    .line 518
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0d00db

    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 521
    :goto_5
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingLowRecovery:Landroid/widget/EditText;

    invoke-virtual {p1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 524
    :cond_1a
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->hideLoading()V

    .line 525
    invoke-virtual {p0, v9}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 531
    :pswitch_9
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingLowDelayed:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 532
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingLowDelayed:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 533
    invoke-static {p1, v5, v4}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->InputPram:Z

    if-eqz v0, :cond_1b

    .line 536
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showLoading()V

    .line 537
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x2c

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v10, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 539
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 541
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvChargingLowDelayed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingLowDelayed:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingLowDelayed:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 543
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mChargingLowDelayed:I

    goto/16 :goto_8

    .line 545
    :cond_1b
    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 546
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingLowDelayed:Landroid/widget/EditText;

    invoke-virtual {p1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 549
    :cond_1c
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->hideLoading()V

    .line 550
    invoke-virtual {p0, v9}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 379
    :pswitch_a
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingHighTemp:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 380
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingHighTemp:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 382
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mChargingHighRecovery:I

    invoke-static {p1, v3, v0}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->InputPram:Z

    if-eqz v0, :cond_1d

    .line 386
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showLoading()V

    .line 387
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x8

    invoke-static {p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->SendTemperatureConversion(I)I

    move-result v2

    invoke-static {v2}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v10, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 388
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 390
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvChargingHighTemp:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingHighTemp:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingHighTemp:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mChargingHighTemp:I

    goto/16 :goto_8

    .line 394
    :cond_1d
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mChargingHighRecovery:I

    if-ge p1, v0, :cond_1e

    const p1, 0x7f0d00de

    .line 395
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_6

    :cond_1e
    const/16 v0, 0x5a

    if-le p1, v0, :cond_1f

    .line 397
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v10, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mChargingHighRecovery:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 399
    :cond_1f
    :goto_6
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingHighTemp:Landroid/widget/EditText;

    invoke-virtual {p1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 402
    :cond_20
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->hideLoading()V

    .line 403
    invoke-virtual {p0, v9}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 409
    :pswitch_b
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingHighRecovery:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 410
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingHighRecovery:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 411
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mChargingHighTemp:I

    add-int/lit8 v1, v0, -0x14

    invoke-static {p1, v0, v1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->InputPram:Z

    if-eqz v0, :cond_21

    .line 414
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showLoading()V

    .line 415
    invoke-static {p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->SendTemperatureConversion(I)I

    move-result v0

    const/16 v1, 0x9

    invoke-static {v1, v0}, Lcom/jiabaida/little_elephant/entity/BleCommand;->getWriteBLECommand(BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->WriteLine:[B

    .line 416
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->SendTemperatureConversion(I)I

    move-result v2

    invoke-static {v2}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v10, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 417
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 419
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvChargingHighRecovery:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingHighRecovery:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingHighRecovery:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mChargingHighRecovery:I

    goto/16 :goto_8

    .line 423
    :cond_21
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mChargingHighTemp:I

    add-int/lit8 v1, v0, -0x14

    if-ge p1, v1, :cond_22

    .line 424
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v10, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mChargingHighTemp:I

    add-int/lit8 v2, v2, -0x14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mChargingHighTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_7

    :cond_22
    if-le p1, v0, :cond_23

    const p1, 0x7f0d00d9

    .line 426
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 429
    :cond_23
    :goto_7
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingHighRecovery:Landroid/widget/EditText;

    invoke-virtual {p1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 432
    :cond_24
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->hideLoading()V

    .line 433
    invoke-virtual {p0, v9}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 439
    :pswitch_c
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingHighDelayed:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 440
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingHighDelayed:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 441
    invoke-static {p1, v5, v4}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->InputPram:Z

    if-eqz v0, :cond_25

    .line 444
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showLoading()V

    .line 445
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x2d

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v10, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 447
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 449
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvChargingHighDelayed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingHighDelayed:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingHighDelayed:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mChargingHighDelayed:I

    goto :goto_8

    .line 453
    :cond_25
    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 454
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mEdChargingHighDelayed:Landroid/widget/EditText;

    invoke-virtual {p1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 457
    :cond_26
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->hideLoading()V

    .line 458
    invoke-virtual {p0, v9}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showMsg(Ljava/lang/String;)V

    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x7f080267
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .line 337
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onDestroy()V

    .line 338
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->timeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 339
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

.method public toTempJson()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 831
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 832
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvChargingHighTemp:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "chargeHightempProtect"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 833
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvChargingHighRecovery:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "chargeHightempRecover"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 834
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvChargingHighDelayed:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "chargeHightempDelay"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 835
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvChargingLowTemp:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "chargeLowtempProtect"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 836
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvChargingLowRecovery:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "chargeLowtempRecover"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 837
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvChargingLowDelayed:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "chargeLowtempDelay"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 838
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvDischargeHigh:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "dischargingHightempProtect"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 839
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvDischargeHighRecovery:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "dischargingHightempRecover"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 840
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvDischargeHighDelayed:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "dischargingHightempDelay"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 841
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvDischargeLow:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "dischargingLowtempProtect"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 842
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvDischargeLowRecovery:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "dischargingLowtempRecover"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 843
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->mTvDischargeLowDelayed:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "dischargingLowtempDelay"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object v0
.end method

.method protected useEventBus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
