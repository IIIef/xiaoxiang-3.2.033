.class public Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "SystemSettingsOldActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.activity.SystemSettingsOldActivity"


# instance fields
.field private InputPram:Z

.field private closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

.field private closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

.field private factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private flTopBack:Landroid/widget/FrameLayout;

.field private identity_current_layout:Landroid/view/View;

.field private interval_layout:Landroid/view/View;

.field private ivTopBack:Landroid/widget/ImageView;

.field private llyTopTitleBg:Landroid/widget/RelativeLayout;

.field private mCycleCount:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mEdBatteryNum:Landroid/widget/EditText;

.field private mEdCycles:Landroid/widget/EditText;

.field private mEdDetection:Landroid/widget/EditText;

.field private mEdDiscerncurrent:Landroid/widget/EditText;

.field private mEdDormancy:Landroid/widget/EditText;

.field private mEdInterval:Landroid/widget/EditText;

.field private mEdSerial:Landroid/widget/EditText;

.field private mPackNumCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mSenseResistorCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mSerialNumberCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mTvBatteryNum:Landroid/widget/TextView;

.field private mTvCycles:Landroid/widget/TextView;

.field private mTvDetection:Landroid/widget/TextView;

.field private mTvDiscerncurrent:Landroid/widget/TextView;

.field private mTvDormancy:Landroid/widget/TextView;

.field private mTvInterval:Landroid/widget/TextView;

.field private mTvSetBatteryNum:Landroid/widget/TextView;

.field private mTvSetDetection:Landroid/widget/TextView;

.field private mTvSetDiscerncurrent:Landroid/widget/TextView;

.field private mTvSetDormancy:Landroid/widget/TextView;

.field private mTvSetInterval:Landroid/widget/TextView;

.field private packNumDateCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private paramProcess:I

.field private paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private setCellNum:[B

.field private sleep_time_layout:Landroid/view/View;

.field timeHandler:Landroid/os/Handler;

.field private tvTopTitle:Landroid/widget/TextView;

.field private tvTopTitleR:Landroid/widget/TextView;

.field private tv_Serialnumber:Landroid/widget/TextView;

.field private twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    const/4 v0, 0x2

    .line 79
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->paramProcess:I

    const/16 v0, 0x9

    new-array v0, v0, [B

    .line 87
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->setCellNum:[B

    .line 157
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->timeHandler:Landroid/os/Handler;

    .line 340
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    .line 342
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$3;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 430
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$4;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$4;-><init>(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 448
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$5;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$5;-><init>(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 465
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$6;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$6;-><init>(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 482
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$7;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$7;-><init>(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-void

    nop

    :array_0
    .array-data 1
        -0x23t
        0x5at
        0x2ft
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x77t
    .end array-data
.end method

.method private UpdateSystem()V
    .locals 3

    .line 364
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "systemSet"

    .line 366
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->toSystemJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->syncBatteryInformation(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 369
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mTvBatteryNum:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mTvDetection:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mCycleCount:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mEdSerial:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mSerialNumberCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->checkProcess()V

    return-void
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->UpdateSystem()V

    return-void
.end method

.method static synthetic access$1700(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->getCmdParams()V

    return-void
.end method

.method static synthetic access$1800(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mTvCycles:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->tv_Serialnumber:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mEdBatteryNum:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mPackNumCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mEdDetection:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mSenseResistorCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$900(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mEdCycles:Landroid/widget/EditText;

    return-object p0
.end method

.method private checkProcess()V
    .locals 1

    .line 423
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->paramProcess:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->paramProcess:I

    if-nez v0, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->UpdateSystem()V

    .line 426
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->hideLoading()V

    :cond_0
    return-void
.end method

.method public static checkSum([BI)[B
    .locals 5

    .line 328
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x2f

    add-int/2addr v3, p1

    not-int p0, v3

    const/4 p1, 0x1

    add-int/2addr p0, p1

    .line 335
    invoke-static {p0}, Lcom/jiabaida/little_elephant/util/CommonUtil;->intToByteArray(I)[B

    move-result-object p0

    .line 336
    array-length v0, p0

    const/4 v2, 0x2

    sub-int/2addr v0, v2

    aget-byte v0, p0, v0

    .line 337
    array-length v3, p0

    sub-int/2addr v3, p1

    aget-byte p0, p0, v3

    new-array v2, v2, [B

    aput-byte v0, v2, v1

    aput-byte p0, v2, p1

    return-object v2
.end method

.method private getCmdParams()V
    .locals 8

    .line 388
    new-instance v6, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 389
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00d6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    const/16 v1, 0x2f

    const/4 v4, 0x0

    const-string v5, ""

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mPackNumCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 392
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v6, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 393
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mPackNumCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 395
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 396
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00ed

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    new-instance v6, Lcom/jiabaida/little_elephant/entity/ParamFormat$SensorResistorUnitSwitch;

    invoke-direct {v6}, Lcom/jiabaida/little_elephant/entity/ParamFormat$SensorResistorUnitSwitch;-><init>()V

    const/16 v3, 0x2c

    const-string v7, "mR"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mSenseResistorCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 399
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 400
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mSenseResistorCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 402
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    const/16 v3, 0x17

    const-string v4, "\u5faa\u73af\u6b21\u6570"

    const/4 v6, 0x0

    const-string v7, ""

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mCycleCount:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 406
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 407
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mCycleCount:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 411
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    const/16 v3, 0x16

    const-string v4, ""

    const-string v7, ""

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mSerialNumberCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 413
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 414
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mSerialNumberCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a004f

    return v0
.end method

.method protected initData()V
    .locals 2

    .line 144
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->QueueTag:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->showLoading()V

    .line 147
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    .line 148
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 150
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    .line 151
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setInit()V

    .line 152
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 153
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 7

    const p1, 0x7f0800c3

    .line 96
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->flTopBack:Landroid/widget/FrameLayout;

    const p1, 0x7f0800f9

    .line 97
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->ivTopBack:Landroid/widget/ImageView;

    const p1, 0x7f0802a0

    .line 98
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->tvTopTitle:Landroid/widget/TextView;

    const p1, 0x7f0802a2

    .line 99
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->tvTopTitleR:Landroid/widget/TextView;

    .line 100
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->ivTopBack:Landroid/widget/ImageView;

    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f080137

    .line 101
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->llyTopTitleBg:Landroid/widget/RelativeLayout;

    .line 102
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->flTopBack:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->tvTopTitleR:Landroid/widget/TextView;

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 103
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->flTopBack:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0801e1

    .line 110
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mTvDiscerncurrent:Landroid/widget/TextView;

    const p1, 0x7f08007b

    .line 111
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mEdDiscerncurrent:Landroid/widget/EditText;

    const p1, 0x7f08026e

    .line 112
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mTvSetDiscerncurrent:Landroid/widget/TextView;

    const p1, 0x7f0801eb

    .line 113
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mTvDormancy:Landroid/widget/TextView;

    const p1, 0x7f080085

    .line 114
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mEdDormancy:Landroid/widget/EditText;

    const p1, 0x7f080278

    .line 115
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mTvSetDormancy:Landroid/widget/TextView;

    const p1, 0x7f0801f3

    .line 116
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mTvInterval:Landroid/widget/TextView;

    const p1, 0x7f08008d

    .line 117
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mEdInterval:Landroid/widget/EditText;

    const p1, 0x7f080280

    .line 118
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mTvSetInterval:Landroid/widget/TextView;

    const p1, 0x7f0801d3

    .line 119
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mTvBatteryNum:Landroid/widget/TextView;

    const p1, 0x7f08006f

    .line 120
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mEdBatteryNum:Landroid/widget/EditText;

    const p1, 0x7f080262

    .line 121
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mTvSetBatteryNum:Landroid/widget/TextView;

    const p1, 0x7f0801e0

    .line 122
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mTvDetection:Landroid/widget/TextView;

    const p1, 0x7f08007a

    .line 123
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mEdDetection:Landroid/widget/EditText;

    const p1, 0x7f08026d

    .line 124
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mTvSetDetection:Landroid/widget/TextView;

    const p1, 0x7f080223

    .line 125
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mTvCycles:Landroid/widget/TextView;

    const p1, 0x7f0800a3

    .line 126
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mEdCycles:Landroid/widget/EditText;

    const p1, 0x7f0800a7

    .line 127
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mEdSerial:Landroid/widget/EditText;

    const p1, 0x7f080202

    .line 128
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->tv_Serialnumber:Landroid/widget/TextView;

    const p1, 0x7f08010e

    .line 130
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0800d0

    .line 132
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->identity_current_layout:Landroid/view/View;

    const p1, 0x7f080191

    .line 133
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->sleep_time_layout:Landroid/view/View;

    const p1, 0x7f0800da

    .line 134
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->interval_layout:Landroid/view/View;

    .line 136
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->identity_current_layout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->sleep_time_layout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->interval_layout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onClickSystem(Landroid/view/View;)V
    .locals 6

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const v1, 0x7f0d0189

    const/4 v2, 0x0

    const v3, 0x7f0d016e

    const-string v4, ""

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 311
    :sswitch_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mEdSerial:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->showLoading()V

    .line 314
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d04

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 315
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_0

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->hideLoading()V

    .line 318
    invoke-virtual {p0, v3}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 299
    :sswitch_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mEdCycles:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->showLoading()V

    .line 302
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d03

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 303
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_0

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->hideLoading()V

    .line 306
    invoke-virtual {p0, v3}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 279
    :sswitch_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mEdDetection:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 280
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mEdDetection:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/high16 v3, 0x41200000    # 10.0f

    mul-float p1, p1, v3

    float-to-int p1, p1

    const/16 v3, 0x32

    .line 281
    invoke-static {p1, v3, v2}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->InputPram:Z

    if-eqz p1, :cond_2

    .line 283
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->showLoading()V

    .line 284
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d02

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 285
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_0

    .line 288
    :cond_2
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "0.1~50"

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 289
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mEdDetection:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 292
    :cond_3
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->hideLoading()V

    .line 293
    invoke-virtual {p0, v3}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :sswitch_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mEdBatteryNum:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 260
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mEdBatteryNum:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v3, 0x1e

    const/4 v5, 0x3

    .line 261
    invoke-static {p1, v3, v5}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->InputPram:Z

    if-eqz p1, :cond_4

    .line 263
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->showLoading()V

    .line 265
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d01

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 266
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto :goto_0

    .line 268
    :cond_4
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "3~30"

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 269
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mEdBatteryNum:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 272
    :cond_5
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->hideLoading()V

    .line 273
    invoke-virtual {p0, v3}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080262 -> :sswitch_3
        0x7f08026d -> :sswitch_2
        0x7f080296 -> :sswitch_1
        0x7f08029a -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 0

    .line 235
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onEventBusMsg(Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method public toSystemJson()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 375
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 376
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mTvDiscerncurrent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "identifyCurrent"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 377
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mTvDormancy:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "sleepTime"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 378
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mTvInterval:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "capacityInterval"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 379
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mTvBatteryNum:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "strCount"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 380
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->mTvDetection:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "rsnsValue"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object v0
.end method

.method protected useEventBus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
