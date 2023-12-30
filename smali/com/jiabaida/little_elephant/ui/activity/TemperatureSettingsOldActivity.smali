.class public Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "TemperatureSettingsOldActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.activity.TemperatureSettingsOldActivity"


# instance fields
.field private InputPram:Z

.field private closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

.field private closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

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

.field private mChgLTReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mChgLTReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mChgLowTempCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mChgOTReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mChgOTReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mChgOverTempCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mDisLTReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mDisLTReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mDisLowTempCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mDisOTReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mDisOTReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mDisOverTempCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

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

.field private mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

.field private paramProcess:I

.field private paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private temp2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Temp2NormalUnitSwitch;

.field timeHandler:Landroid/os/Handler;

.field private tvTopTitle:Landroid/widget/TextView;

.field private tvTopTitleR:Landroid/widget/TextView;

.field private twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->InputPram:Z

    const/16 v0, 0xa

    .line 87
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->paramProcess:I

    .line 168
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    .line 169
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ParamFormat$Temp2NormalUnitSwitch;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ParamFormat$Temp2NormalUnitSwitch;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->temp2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Temp2NormalUnitSwitch;

    .line 170
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    .line 171
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->timeHandler:Landroid/os/Handler;

    .line 744
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$3;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 768
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$4;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$4;-><init>(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 882
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$5;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$5;-><init>(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 899
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$6;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$6;-><init>(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-void
.end method

.method private UpdateTemp()V
    .locals 3

    .line 916
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "tempParam"

    .line 918
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->toTempJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 919
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->syncBatteryInformation(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 921
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$002(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChargingHighTemp:I

    return p1
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvChargingHighTemp:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDischargeHighTemp:I

    return p1
.end method

.method static synthetic access$1100(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvDischargeHigh:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDischargeHighRecovery:I

    return p1
.end method

.method static synthetic access$1300(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvDischargeHighRecovery:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvDischargeLowDelayed:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvDischargeHighDelayed:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDischargeLowTemp:I

    return p1
.end method

.method static synthetic access$1700(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvDischargeLow:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDischargeLowRecovery:I

    return p1
.end method

.method static synthetic access$1900(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvDischargeLowRecovery:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingHighTemp:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$202(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChargingHighRecovery:I

    return p1
.end method

.method static synthetic access$2100(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChgOverTempCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingHighRecovery:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChgOTReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingHighDelayed:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChgOTReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingLowTemp:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChgLowTempCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingLowRecovery:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvChargingHighRecovery:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChgLTReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingLowDelayed:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChgLTReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeHighTemp:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDisOverTempCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeHighRecovery:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDisOTReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeHighDelayed:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDisOTReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeLow:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvChargingLowDelayed:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDisLowTempCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeLowRecovery:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDisLTReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeLowDelayed:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDisLTReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->UpdateTemp()V

    return-void
.end method

.method static synthetic access$4700(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getOldParams()V

    return-void
.end method

.method static synthetic access$4800(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->checkProcess()V

    return-void
.end method

.method static synthetic access$500(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvChargingHighDelayed:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChargingLowTemp:I

    return p1
.end method

.method static synthetic access$700(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvChargingLowTemp:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$802(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChargingLowRecovery:I

    return p1
.end method

.method static synthetic access$900(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvChargingLowRecovery:Landroid/widget/TextView;

    return-object p0
.end method

.method private checkProcess()V
    .locals 1

    .line 737
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->paramProcess:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->paramProcess:I

    if-nez v0, :cond_0

    .line 739
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->UpdateTemp()V

    .line 740
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->hideLoading()V

    :cond_0
    return-void
.end method

.method private getOldParams()V
    .locals 9

    .line 787
    new-instance v6, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 788
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00e0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->temp2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Temp2NormalUnitSwitch;

    const/16 v1, 0x18

    const-string v5, "\u2103"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChgOverTempCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 792
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v6, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 793
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChgOverTempCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 795
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 796
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00e1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->temp2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Temp2NormalUnitSwitch;

    const/16 v3, 0x19

    const-string v7, "\u2103"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChgOTReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 799
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 800
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChgOTReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 802
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 803
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00d8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x3a

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "S"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChgOTReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 806
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 810
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 811
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00e3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->temp2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Temp2NormalUnitSwitch;

    const/16 v3, 0x1a

    const-string v7, "\u2103"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChgLowTempCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 814
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 815
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChgLowTempCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 817
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 818
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00e4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->temp2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Temp2NormalUnitSwitch;

    const/16 v3, 0x1b

    const-string v7, "\u2103"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChgLTReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 821
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 822
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChgLTReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 824
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 825
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00e2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoCmdValueFormat;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChgOTReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-direct {v5, v1}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoCmdValueFormat;-><init>(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V

    const/16 v3, 0x3a

    const/4 v6, 0x0

    const-string v7, "S"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChgLTReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 828
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 829
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChgLTReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 832
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 833
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00f6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->temp2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Temp2NormalUnitSwitch;

    const/16 v3, 0x1c

    const-string v7, "\u2103"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDisOverTempCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 836
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 837
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDisOverTempCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 839
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 840
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00f5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->temp2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Temp2NormalUnitSwitch;

    const/16 v3, 0x1d

    const-string v7, "\u2103"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDisOTReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 843
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 844
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDisOTReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 846
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 847
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00f7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const/16 v3, 0x3b

    const-string v7, "S"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDisOTReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 850
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 854
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 855
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00f9

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->temp2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Temp2NormalUnitSwitch;

    const/16 v3, 0x1e

    const-string v7, "\u2103"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDisLowTempCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 858
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 859
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDisLowTempCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 861
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 862
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v8, 0x7f0d00fa

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->temp2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Temp2NormalUnitSwitch;

    const/16 v3, 0x1f

    const-string v7, "\u2103"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDisLTReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 865
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 866
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDisLTReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 869
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 870
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoCmdValueFormat;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDisOTReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-direct {v5, v1}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoCmdValueFormat;-><init>(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V

    const/16 v3, 0x3b

    const/4 v6, 0x0

    const-string v7, "S"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDisLTReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 874
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 875
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDisLTReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 878
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChgOTReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChgLTReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setRelativeEntity(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V

    .line 879
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDisOTReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDisLTReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setRelativeEntity(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V

    return-void
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a0050

    return v0
.end method

.method protected initData()V
    .locals 1

    .line 162
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->QueueTag:Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showLoading()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 7

    const p1, 0x7f0800c3

    .line 98
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->flTopBack:Landroid/widget/FrameLayout;

    const p1, 0x7f0800f9

    .line 99
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->ivTopBack:Landroid/widget/ImageView;

    const p1, 0x7f0802a0

    .line 100
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->tvTopTitle:Landroid/widget/TextView;

    const p1, 0x7f0802a2

    .line 101
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->tvTopTitleR:Landroid/widget/TextView;

    .line 102
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->ivTopBack:Landroid/widget/ImageView;

    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f080137

    .line 103
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->llyTopTitleBg:Landroid/widget/RelativeLayout;

    .line 104
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->flTopBack:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->tvTopTitleR:Landroid/widget/TextView;

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 105
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->flTopBack:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0801dc

    .line 112
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvChargingHighTemp:Landroid/widget/TextView;

    const p1, 0x7f080076

    .line 113
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingHighTemp:Landroid/widget/EditText;

    const p1, 0x7f080269

    .line 114
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvSetChargingHighTemp:Landroid/widget/TextView;

    const p1, 0x7f0801db

    .line 115
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvChargingHighRecovery:Landroid/widget/TextView;

    const p1, 0x7f080075

    .line 116
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingHighRecovery:Landroid/widget/EditText;

    const p1, 0x7f080268

    .line 117
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvSetChargingHighRecovery:Landroid/widget/TextView;

    const p1, 0x7f0801da

    .line 118
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvChargingHighDelayed:Landroid/widget/TextView;

    const p1, 0x7f080074

    .line 119
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingHighDelayed:Landroid/widget/EditText;

    const p1, 0x7f080267

    .line 120
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvSetChargingHighDelayed:Landroid/widget/TextView;

    const p1, 0x7f0801df

    .line 121
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvChargingLowTemp:Landroid/widget/TextView;

    const p1, 0x7f080079

    .line 122
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingLowTemp:Landroid/widget/EditText;

    const p1, 0x7f08026c

    .line 123
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvSetChargingLowTemp:Landroid/widget/TextView;

    const p1, 0x7f0801de

    .line 124
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvChargingLowRecovery:Landroid/widget/TextView;

    const p1, 0x7f080078

    .line 125
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingLowRecovery:Landroid/widget/EditText;

    const p1, 0x7f08026b

    .line 126
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvSetChargingLowRecovery:Landroid/widget/TextView;

    const p1, 0x7f0801dd

    .line 127
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvChargingLowDelayed:Landroid/widget/TextView;

    const p1, 0x7f080077

    .line 128
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingLowDelayed:Landroid/widget/EditText;

    const p1, 0x7f08026a

    .line 129
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvSetChargingLowDelayed:Landroid/widget/TextView;

    const p1, 0x7f0801e3

    .line 130
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvDischargeHigh:Landroid/widget/TextView;

    const p1, 0x7f08007f

    .line 131
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeHighTemp:Landroid/widget/EditText;

    const p1, 0x7f080272

    .line 132
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvSetDischargeHighTemp:Landroid/widget/TextView;

    const p1, 0x7f0801e5

    .line 133
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvDischargeHighRecovery:Landroid/widget/TextView;

    const p1, 0x7f08007e

    .line 134
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeHighRecovery:Landroid/widget/EditText;

    const p1, 0x7f080271

    .line 135
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvSetDischargeHighRecovery:Landroid/widget/TextView;

    const p1, 0x7f0801e4

    .line 136
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvDischargeHighDelayed:Landroid/widget/TextView;

    const p1, 0x7f08007d

    .line 137
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeHighDelayed:Landroid/widget/EditText;

    const p1, 0x7f080270

    .line 138
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvSetDischargeHighDelayed:Landroid/widget/TextView;

    const p1, 0x7f0801e6

    .line 139
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvDischargeLow:Landroid/widget/TextView;

    const p1, 0x7f080080

    .line 140
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeLow:Landroid/widget/EditText;

    const p1, 0x7f080273

    .line 141
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvSetDischargeLow:Landroid/widget/TextView;

    const p1, 0x7f0801e8

    .line 142
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvDischargeLowRecovery:Landroid/widget/TextView;

    const p1, 0x7f080082

    .line 143
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeLowRecovery:Landroid/widget/EditText;

    const p1, 0x7f080275

    .line 144
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvSetDischargeLowRecovery:Landroid/widget/TextView;

    const p1, 0x7f0801e7

    .line 145
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvDischargeLowDelayed:Landroid/widget/TextView;

    const p1, 0x7f080081

    .line 146
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeLowDelayed:Landroid/widget/EditText;

    const p1, 0x7f080274

    .line 147
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvSetDischargeLowDelayed:Landroid/widget/TextView;

    .line 149
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    .line 150
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 152
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    .line 153
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setInit()V

    .line 154
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 156
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method

.method public onClickTemperature(Landroid/view/View;)V
    .locals 12

    .line 410
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

    const/4 v8, 0x1

    const v9, 0x7f0d0189

    const v10, 0x7f0d016e

    const-string v11, ""

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_8

    .line 677
    :pswitch_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeLowRecovery:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 678
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeLowRecovery:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->StrTransInt(Ljava/lang/String;)I

    move-result p1

    .line 679
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDischargeLowTemp:I

    add-int/lit8 v1, v0, 0x14

    invoke-static {p1, v1, v0}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->InputPram:Z

    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showLoading()V

    .line 683
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d0b

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 684
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_8

    .line 687
    :cond_0
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDischargeLowTemp:I

    add-int/lit8 v1, v0, 0x14

    if-le p1, v1, :cond_1

    .line 689
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v8, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDischargeLowTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDischargeLowTemp:I

    add-int/lit8 v2, v2, 0x14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ge p1, v0, :cond_2

    const p1, 0x7f0d00f0

    .line 691
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 694
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeLowRecovery:Landroid/widget/EditText;

    invoke-virtual {p1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 697
    :cond_3
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->hideLoading()V

    .line 698
    invoke-virtual {p0, v10}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 706
    :pswitch_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeLowDelayed:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 707
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeLowDelayed:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 708
    invoke-static {p1, v5, v4}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->InputPram:Z

    if-eqz v0, :cond_4

    .line 711
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showLoading()V

    .line 712
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 713
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v1, 0x7d0c

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 715
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDischargeLowDelayedp:I

    goto/16 :goto_8

    .line 717
    :cond_4
    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 718
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeLowDelayed:Landroid/widget/EditText;

    invoke-virtual {p1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 721
    :cond_5
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->hideLoading()V

    .line 722
    invoke-virtual {p0, v10}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 648
    :pswitch_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeLow:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 649
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeLow:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->StrTransInt(Ljava/lang/String;)I

    move-result p1

    .line 650
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDischargeLowRecovery:I

    invoke-static {p1, v1, v2}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->InputPram:Z

    if-eqz v1, :cond_6

    .line 653
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showLoading()V

    .line 654
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v1, 0x7d0a

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 655
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 657
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDischargeLowTemp:I

    goto/16 :goto_8

    :cond_6
    if-ge p1, v2, :cond_7

    .line 661
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v8, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDischargeLowRecovery:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_1

    .line 662
    :cond_7
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDischargeLowRecovery:I

    if-le p1, v0, :cond_8

    const p1, 0x7f0d00ef

    .line 663
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 665
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeLow:Landroid/widget/EditText;

    invoke-virtual {p1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 668
    :cond_9
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->hideLoading()V

    .line 669
    invoke-virtual {p0, v10}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 568
    :pswitch_4
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeHighTemp:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 569
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeHighTemp:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 570
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDischargeHighRecovery:I

    invoke-static {p1, v3, v0}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->InputPram:Z

    if-eqz v0, :cond_a

    .line 573
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showLoading()V

    .line 574
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v1, 0x7d07

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 575
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 576
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDischargeHighTemp:I

    goto/16 :goto_8

    .line 578
    :cond_a
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDischargeHighRecovery:I

    if-ge p1, v0, :cond_b

    const p1, 0x7f0d00ee

    .line 579
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    if-le p1, v3, :cond_c

    .line 581
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v8, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDischargeHighRecovery:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 583
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeHighTemp:Landroid/widget/EditText;

    invoke-virtual {p1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 586
    :cond_d
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->hideLoading()V

    .line 587
    invoke-virtual {p0, v10}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 595
    :pswitch_5
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeHighRecovery:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 596
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeHighRecovery:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 597
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDischargeHighTemp:I

    add-int/lit8 v1, v0, -0x14

    invoke-static {p1, v0, v1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->InputPram:Z

    if-eqz v0, :cond_e

    .line 600
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showLoading()V

    .line 601
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d08

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 602
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_8

    .line 605
    :cond_e
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDischargeHighTemp:I

    add-int/lit8 v1, v0, -0x14

    if-ge p1, v1, :cond_f

    .line 606
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v8, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDischargeHighTemp:I

    add-int/lit8 v2, v2, -0x14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDischargeHighTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    if-le p1, v0, :cond_10

    const p1, 0x7f0d0001

    .line 608
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 611
    :cond_10
    :goto_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeHighRecovery:Landroid/widget/EditText;

    invoke-virtual {p1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 614
    :cond_11
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->hideLoading()V

    .line 615
    invoke-virtual {p0, v10}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 623
    :pswitch_6
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeHighDelayed:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 624
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeHighDelayed:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 625
    invoke-static {p1, v5, v4}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->InputPram:Z

    if-eqz v0, :cond_12

    .line 628
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showLoading()V

    .line 629
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v1, 0x7d09

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 630
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 632
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mDischargeHighDelayedp:I

    goto/16 :goto_8

    .line 634
    :cond_12
    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 635
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdDischargeHighDelayed:Landroid/widget/EditText;

    invoke-virtual {p1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 638
    :cond_13
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->hideLoading()V

    .line 639
    invoke-virtual {p0, v10}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 489
    :pswitch_7
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingLowTemp:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 491
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingLowTemp:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->StrTransInt(Ljava/lang/String;)I

    move-result p1

    .line 493
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChargingLowRecovery:I

    invoke-static {p1, v1, v2}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->InputPram:Z

    if-eqz v1, :cond_14

    .line 496
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showLoading()V

    .line 497
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v1, 0x7d04

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 498
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 499
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChargingLowTemp:I

    goto/16 :goto_8

    :cond_14
    if-ge p1, v2, :cond_15

    .line 502
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v8, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChargingLowRecovery:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_4

    .line 503
    :cond_15
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChargingLowRecovery:I

    if-le p1, v0, :cond_16

    const p1, 0x7f0d00da

    .line 504
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 506
    :cond_16
    :goto_4
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingLowTemp:Landroid/widget/EditText;

    invoke-virtual {p1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 509
    :cond_17
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->hideLoading()V

    .line 510
    invoke-virtual {p0, v10}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 517
    :pswitch_8
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingLowRecovery:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 518
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingLowRecovery:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->StrTransInt(Ljava/lang/String;)I

    move-result p1

    .line 519
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChargingLowTemp:I

    add-int/lit8 v1, v0, 0x14

    invoke-static {p1, v1, v0}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->InputPram:Z

    if-eqz v0, :cond_18

    .line 522
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showLoading()V

    .line 523
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v1, 0x7d05

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 524
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 527
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChargingLowRecovery:I

    goto/16 :goto_8

    .line 529
    :cond_18
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChargingLowTemp:I

    add-int/lit8 v0, v0, 0x14

    if-le p1, v0, :cond_19

    .line 531
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v8, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChargingLowTemp:I

    add-int/lit8 v2, v2, 0x14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChargingLowTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_5

    .line 533
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0d00db

    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 536
    :goto_5
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingLowRecovery:Landroid/widget/EditText;

    invoke-virtual {p1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 539
    :cond_1a
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->hideLoading()V

    .line 540
    invoke-virtual {p0, v10}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 546
    :pswitch_9
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingLowDelayed:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 547
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingLowDelayed:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 548
    invoke-static {p1, v5, v4}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->InputPram:Z

    if-eqz v0, :cond_1b

    .line 551
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showLoading()V

    .line 552
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v1, 0x7d06

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 553
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 555
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChargingLowDelayed:I

    goto/16 :goto_8

    .line 557
    :cond_1b
    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 558
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingLowDelayed:Landroid/widget/EditText;

    invoke-virtual {p1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 561
    :cond_1c
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->hideLoading()V

    .line 562
    invoke-virtual {p0, v10}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 414
    :pswitch_a
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingHighTemp:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 415
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingHighTemp:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 417
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChargingHighRecovery:I

    invoke-static {p1, v3, v0}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->InputPram:Z

    if-eqz v0, :cond_1d

    .line 420
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showLoading()V

    .line 421
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v1, 0x7d01

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 422
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 423
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChargingHighTemp:I

    goto/16 :goto_8

    .line 425
    :cond_1d
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChargingHighRecovery:I

    if-ge p1, v0, :cond_1e

    const p1, 0x7f0d00de

    .line 426
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_6

    :cond_1e
    const/16 v0, 0x5a

    if-le p1, v0, :cond_1f

    .line 428
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v8, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChargingHighRecovery:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 430
    :cond_1f
    :goto_6
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingHighTemp:Landroid/widget/EditText;

    invoke-virtual {p1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 433
    :cond_20
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->hideLoading()V

    .line 434
    invoke-virtual {p0, v10}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 440
    :pswitch_b
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingHighRecovery:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 441
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingHighRecovery:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 442
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChargingHighTemp:I

    add-int/lit8 v1, v0, -0x14

    invoke-static {p1, v0, v1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->InputPram:Z

    if-eqz v0, :cond_21

    .line 445
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showLoading()V

    .line 446
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v1, 0x7d02

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 447
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 448
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChargingHighRecovery:I

    goto/16 :goto_8

    .line 450
    :cond_21
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChargingHighTemp:I

    add-int/lit8 v1, v0, -0x14

    if-ge p1, v1, :cond_22

    .line 451
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v8, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChargingHighTemp:I

    add-int/lit8 v2, v2, -0x14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChargingHighTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_7

    :cond_22
    if-le p1, v0, :cond_23

    const p1, 0x7f0d00d9

    .line 453
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 456
    :cond_23
    :goto_7
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingHighRecovery:Landroid/widget/EditText;

    invoke-virtual {p1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 459
    :cond_24
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->hideLoading()V

    .line 460
    invoke-virtual {p0, v10}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    goto :goto_8

    .line 466
    :pswitch_c
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingHighDelayed:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 467
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingHighDelayed:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 468
    invoke-static {p1, v5, v4}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->InputPram:Z

    if-eqz v0, :cond_25

    .line 471
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showLoading()V

    .line 472
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v1, 0x7d03

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 473
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 475
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mChargingHighDelayed:I

    goto :goto_8

    .line 477
    :cond_25
    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 478
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mEdChargingHighDelayed:Landroid/widget/EditText;

    invoke-virtual {p1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 481
    :cond_26
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->hideLoading()V

    .line 482
    invoke-virtual {p0, v10}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showMsg(Ljava/lang/String;)V

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

    .line 372
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onDestroy()V

    .line 373
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->timeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 374
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

    .line 927
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 928
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvChargingHighTemp:Landroid/widget/TextView;

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

    .line 929
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvChargingHighRecovery:Landroid/widget/TextView;

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

    .line 930
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvChargingHighDelayed:Landroid/widget/TextView;

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

    .line 931
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvChargingLowTemp:Landroid/widget/TextView;

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

    .line 932
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvChargingLowRecovery:Landroid/widget/TextView;

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

    .line 933
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvChargingLowDelayed:Landroid/widget/TextView;

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

    .line 934
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvDischargeHigh:Landroid/widget/TextView;

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

    .line 935
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvDischargeHighRecovery:Landroid/widget/TextView;

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

    .line 936
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvDischargeHighDelayed:Landroid/widget/TextView;

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

    .line 937
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvDischargeLow:Landroid/widget/TextView;

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

    .line 938
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvDischargeLowRecovery:Landroid/widget/TextView;

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

    .line 939
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->mTvDischargeLowDelayed:Landroid/widget/TextView;

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
