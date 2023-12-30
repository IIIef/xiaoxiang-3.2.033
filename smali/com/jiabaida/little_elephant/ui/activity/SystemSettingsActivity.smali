.class public Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "SystemSettingsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.activity.SystemSettingsActivity"


# instance fields
.field private InputPram:Z

.field private WriteLine:[B

.field private capacityResetCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

.field private closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private currentResistanceCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private cyclesCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

.field private factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private flTopBack:Landroid/widget/FrameLayout;

.field private identity_current_layout:Landroid/view/View;

.field private interval_layout:Landroid/view/View;

.field private ivTopBack:Landroid/widget/ImageView;

.field private llyTopTitleBg:Landroid/widget/RelativeLayout;

.field private mEdBatteryNum:Landroid/widget/EditText;

.field private mEdCycles:Landroid/widget/EditText;

.field private mEdDetection:Landroid/widget/EditText;

.field private mEdDiscerncurrent:Landroid/widget/EditText;

.field private mEdDormancy:Landroid/widget/EditText;

.field private mEdInterval:Landroid/widget/EditText;

.field private mEdSerial:Landroid/widget/EditText;

.field private mSerialNumberCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

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

.field private minCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private packNumDateCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private paramProcess:I

.field private paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private serialCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private sleepTimeCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

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

    .line 52
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 84
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->WriteLine:[B

    const/4 v0, 0x5

    .line 86
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->paramProcess:I

    .line 223
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->timeHandler:Landroid/os/Handler;

    .line 494
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    .line 495
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$4;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$4;-><init>(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 598
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$5;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$5;-><init>(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 616
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$6;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$6;-><init>(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 635
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$7;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$7;-><init>(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 649
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$8;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$8;-><init>(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-void
.end method

.method private UpdateSystem()V
    .locals 3

    .line 517
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "systemSet"

    .line 519
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->toSystemJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->syncBatteryInformation(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 522
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->minCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvDiscerncurrent:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->UpdateSystem()V

    return-void
.end method

.method static synthetic access$1100(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->cyclesCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvCycles:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mSerialNumberCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->tv_Serialnumber:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->checkProcess()V

    return-void
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->sleepTimeCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvDormancy:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->capacityResetCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvInterval:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->serialCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvBatteryNum:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->currentResistanceCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$900(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvDetection:Landroid/widget/TextView;

    return-object p0
.end method

.method private checkProcess()V
    .locals 1

    .line 591
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->paramProcess:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->paramProcess:I

    if-nez v0, :cond_0

    .line 593
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->UpdateSystem()V

    .line 594
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->hideLoading()V

    :cond_0
    return-void
.end method

.method public static checkSum([BI)[B
    .locals 5

    .line 481
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

    .line 488
    invoke-static {p0}, Lcom/jiabaida/little_elephant/util/CommonUtil;->intToByteArray(I)[B

    move-result-object p0

    .line 489
    array-length v0, p0

    const/4 v2, 0x2

    sub-int/2addr v0, v2

    aget-byte v0, p0, v0

    .line 490
    array-length v3, p0

    sub-int/2addr v3, p1

    aget-byte p0, p0, v3

    new-array v2, v2, [B

    aput-byte v0, v2, v1

    aput-byte p0, v2, p1

    return-object v2
.end method

.method private getCmdParams()V
    .locals 4

    .line 543
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x79

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->minCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 544
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 545
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->minCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 548
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x7a

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->sleepTimeCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 549
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 550
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->sleepTimeCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 553
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x71

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->capacityResetCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 554
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 555
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->capacityResetCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 558
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x1f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->serialCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 559
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 560
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->serialCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 563
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->currentResistanceCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 564
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 565
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->currentResistanceCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 569
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/4 v1, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->cyclesCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 570
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 571
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->cyclesCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 575
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mSerialNumberCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 576
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 577
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mSerialNumberCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

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
    .locals 1

    .line 180
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->QueueTag:Ljava/lang/String;

    .line 181
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->showLoading()V

    .line 182
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->getCmdParams()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 7

    const p1, 0x7f0800c3

    .line 110
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->flTopBack:Landroid/widget/FrameLayout;

    const p1, 0x7f0800f9

    .line 111
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->ivTopBack:Landroid/widget/ImageView;

    const p1, 0x7f0802a0

    .line 112
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->tvTopTitle:Landroid/widget/TextView;

    const p1, 0x7f0802a2

    .line 113
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->tvTopTitleR:Landroid/widget/TextView;

    .line 115
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->ivTopBack:Landroid/widget/ImageView;

    const v0, 0x7f0700ca

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const p1, 0x7f080137

    .line 116
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->llyTopTitleBg:Landroid/widget/RelativeLayout;

    .line 117
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->flTopBack:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->tvTopTitleR:Landroid/widget/TextView;

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 118
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->flTopBack:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0801e1

    .line 125
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvDiscerncurrent:Landroid/widget/TextView;

    const p1, 0x7f08007b

    .line 126
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdDiscerncurrent:Landroid/widget/EditText;

    const p1, 0x7f08026e

    .line 127
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvSetDiscerncurrent:Landroid/widget/TextView;

    const p1, 0x7f0801eb

    .line 128
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvDormancy:Landroid/widget/TextView;

    const p1, 0x7f080085

    .line 129
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdDormancy:Landroid/widget/EditText;

    const p1, 0x7f080278

    .line 130
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvSetDormancy:Landroid/widget/TextView;

    const p1, 0x7f0801f3

    .line 131
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvInterval:Landroid/widget/TextView;

    const p1, 0x7f08008d

    .line 132
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdInterval:Landroid/widget/EditText;

    const p1, 0x7f080280

    .line 133
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvSetInterval:Landroid/widget/TextView;

    const p1, 0x7f0801d3

    .line 134
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvBatteryNum:Landroid/widget/TextView;

    const p1, 0x7f08006f

    .line 135
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdBatteryNum:Landroid/widget/EditText;

    const p1, 0x7f080262

    .line 136
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvSetBatteryNum:Landroid/widget/TextView;

    const p1, 0x7f0801e0

    .line 137
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvDetection:Landroid/widget/TextView;

    const p1, 0x7f08007a

    .line 138
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdDetection:Landroid/widget/EditText;

    const p1, 0x7f08026d

    .line 139
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvSetDetection:Landroid/widget/TextView;

    const p1, 0x7f080223

    .line 140
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvCycles:Landroid/widget/TextView;

    const p1, 0x7f0800a3

    .line 141
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdCycles:Landroid/widget/EditText;

    const p1, 0x7f0800a7

    .line 142
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdSerial:Landroid/widget/EditText;

    const p1, 0x7f080202

    .line 143
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->tv_Serialnumber:Landroid/widget/TextView;

    const p1, 0x7f08010e

    .line 145
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0800d0

    .line 149
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->identity_current_layout:Landroid/view/View;

    const p1, 0x7f080191

    .line 150
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->sleep_time_layout:Landroid/view/View;

    const p1, 0x7f0800da

    .line 151
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->interval_layout:Landroid/view/View;

    .line 154
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    .line 155
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 157
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    .line 158
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setInit()V

    .line 159
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 161
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 162
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setWriteMode()V

    .line 163
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    const p1, 0x7f08010c

    .line 164
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClickSystem(Landroid/view/View;)V
    .locals 6

    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x32

    const v1, 0x7f0d0189

    const/4 v2, 0x0

    const v3, 0x7f0d016e

    const/4 v4, 0x1

    const-string v5, ""

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 460
    :sswitch_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdSerial:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 461
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdSerial:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 462
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->showLoading()V

    .line 463
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/4 v1, 0x6

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v0, v1, v4, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 464
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 465
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->tv_Serialnumber:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdSerial:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdSerial:Landroid/widget/EditText;

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 468
    :cond_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->hideLoading()V

    .line 469
    invoke-virtual {p0, v3}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 445
    :sswitch_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdCycles:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 446
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdCycles:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 447
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->showLoading()V

    .line 448
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/4 v1, 0x7

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v0, v1, v4, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 449
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 451
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvBatteryNum:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdCycles:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdCycles:Landroid/widget/EditText;

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 454
    :cond_1
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->hideLoading()V

    .line 455
    invoke-virtual {p0, v3}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 376
    :sswitch_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdInterval:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 377
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdInterval:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const v0, 0xffff

    const/16 v3, 0x258

    .line 378
    invoke-static {p1, v0, v3}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->InputPram:Z

    if-eqz v0, :cond_2

    .line 380
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->showLoading()V

    const/16 v0, 0x71

    .line 381
    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->getWriteBLECommand(BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->WriteLine:[B

    .line 382
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v1, v0, v4, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 383
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 386
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvInterval:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdInterval:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdInterval:Landroid/widget/EditText;

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 389
    :cond_2
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "600~65535"

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 390
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdInterval:Landroid/widget/EditText;

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 393
    :cond_3
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->hideLoading()V

    .line 394
    invoke-virtual {p0, v3}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 353
    :sswitch_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdDormancy:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 354
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdDormancy:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0xff

    const/16 v3, 0xa

    .line 355
    invoke-static {p1, v0, v3}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->InputPram:Z

    if-eqz v0, :cond_4

    .line 357
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->showLoading()V

    const/16 v0, 0x7a

    .line 358
    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->getWriteBLECommand(BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->WriteLine:[B

    .line 359
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v1, v0, v4, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 360
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 362
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvDormancy:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdDormancy:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdDormancy:Landroid/widget/EditText;

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 365
    :cond_4
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "10~255"

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 366
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdDormancy:Landroid/widget/EditText;

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 369
    :cond_5
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->hideLoading()V

    .line 370
    invoke-virtual {p0, v3}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 326
    :sswitch_4
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdDiscerncurrent:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 327
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdDiscerncurrent:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v3, 0x1388

    .line 328
    invoke-static {p1, v3, v0}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->InputPram:Z

    if-eqz v0, :cond_6

    .line 330
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->showLoading()V

    const/16 v0, 0x79

    .line 331
    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->getWriteBLECommand(BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->WriteLine:[B

    .line 333
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v1, v0, v4, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 334
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 337
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvDiscerncurrent:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdDiscerncurrent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdDiscerncurrent:Landroid/widget/EditText;

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 341
    :cond_6
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "50~5000"

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 343
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdDiscerncurrent:Landroid/widget/EditText;

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 346
    :cond_7
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->hideLoading()V

    .line 347
    invoke-virtual {p0, v3}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 422
    :sswitch_5
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdDetection:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 423
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdDetection:Landroid/widget/EditText;

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

    .line 424
    invoke-static {p1, v0, v2}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->InputPram:Z

    if-eqz v0, :cond_8

    .line 426
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->showLoading()V

    const/16 v0, 0x1c

    .line 427
    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->getWriteBLECommand(BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->WriteLine:[B

    .line 428
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v1, v0, v4, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 429
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 431
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvDetection:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdDetection:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdDetection:Landroid/widget/EditText;

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 435
    :cond_8
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "0.1~50"

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 436
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdDetection:Landroid/widget/EditText;

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 439
    :cond_9
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->hideLoading()V

    .line 440
    invoke-virtual {p0, v3}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 400
    :sswitch_6
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdBatteryNum:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 401
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdBatteryNum:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x1e

    const/4 v3, 0x3

    .line 402
    invoke-static {p1, v0, v3}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->InputPram:Z

    if-eqz v0, :cond_a

    .line 404
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->showLoading()V

    const/16 v0, 0x1f

    .line 405
    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->getWriteBLECommand(BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->WriteLine:[B

    .line 406
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v1, v0, v4, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 407
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 409
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvBatteryNum:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdBatteryNum:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdBatteryNum:Landroid/widget/EditText;

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 412
    :cond_a
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "3~30"

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 413
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mEdBatteryNum:Landroid/widget/EditText;

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 416
    :cond_b
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->hideLoading()V

    .line 417
    invoke-virtual {p0, v3}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->showMsg(Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f080262 -> :sswitch_6
        0x7f08026d -> :sswitch_5
        0x7f08026e -> :sswitch_4
        0x7f080278 -> :sswitch_3
        0x7f080280 -> :sswitch_2
        0x7f080296 -> :sswitch_1
        0x7f08029a -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 0

    .line 302
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

    .line 528
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 529
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvDiscerncurrent:Landroid/widget/TextView;

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

    .line 530
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvDormancy:Landroid/widget/TextView;

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

    .line 531
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvInterval:Landroid/widget/TextView;

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

    .line 532
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvBatteryNum:Landroid/widget/TextView;

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

    .line 533
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->mTvDetection:Landroid/widget/TextView;

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
