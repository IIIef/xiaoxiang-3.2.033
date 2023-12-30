.class public Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "BalanceSettingsOldActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.activity.BalanceSettingsOldActivity"


# instance fields
.field private Equalizingset:Ljava/lang/String;

.field private FullVoltage:F

.field private InputPram:Z

.field private IsBalanceCharge:Z

.field private IsBalanceSet:Z

.field private WriteLine:[B

.field private closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

.field private closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

.field private factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private flTopBack:Landroid/widget/FrameLayout;

.field private functionConfig:I

.field private functionReadResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

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

.field private llyBalanceType:Landroid/widget/LinearLayout;

.field private llyTopTitleBg:Landroid/widget/RelativeLayout;

.field private mBalanceStartVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mBalanceWindowCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mEdEqualizationaccuracy:Landroid/widget/EditText;

.field private mEdEqualizingvoltage:Landroid/widget/EditText;

.field private mFuncCMD:Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

.field private mTvEqualizationaccuracy:Landroid/widget/TextView;

.field private mTvEqualizingvoltage:Landroid/widget/TextView;

.field private mTvSetEqualizationaccuracy:Landroid/widget/TextView;

.field private mTvSetEqualizingvoltage:Landroid/widget/TextView;

.field private mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

.field private paramProcess:I

.field private paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private switchOpenBalance:Landroid/widget/Switch;

.field timeHandler:Landroid/os/Handler;

.field private tvBalanceType:Landroid/widget/TextView;

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

    .line 48
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    const-string v0, ""

    .line 67
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->Equalizingset:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 77
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->WriteLine:[B

    const/4 v0, 0x3

    .line 81
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->paramProcess:I

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->listBalanceType:Ljava/util/List;

    .line 167
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->timeHandler:Landroid/os/Handler;

    .line 234
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$5;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$5;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 360
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$7;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$7;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 376
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    .line 377
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    .line 399
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$8;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$8;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->functionReadResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 428
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$9;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$9;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 445
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$10;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$10;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-void
.end method

.method private UpdateEqualization()V
    .locals 3

    .line 462
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "equalizerSet"

    .line 464
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->toEqualizationJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 465
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->syncBatteryInformation(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 467
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mTvEqualizingvoltage:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mEdEqualizationaccuracy:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mBalanceWindowCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->isWrite:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->isWrite:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->getOldParams()V

    return-void
.end method

.method static synthetic access$1500(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->UpdateEqualization()V

    return-void
.end method

.method static synthetic access$1600(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->checkProcess()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mTvEqualizationaccuracy:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->IsBalanceCharge:Z

    return p0
.end method

.method static synthetic access$302(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->IsBalanceCharge:Z

    return p1
.end method

.method static synthetic access$400(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mFuncCMD:Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->tvBalanceType:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Landroid/widget/Switch;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->switchOpenBalance:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mEdEqualizingvoltage:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mBalanceStartVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$900(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-object p0
.end method

.method private checkProcess()V
    .locals 1

    .line 353
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->paramProcess:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->paramProcess:I

    if-nez v0, :cond_0

    .line 355
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->UpdateEqualization()V

    .line 356
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->hideLoading()V

    :cond_0
    return-void
.end method

.method private getOldParams()V
    .locals 8

    .line 381
    new-instance v6, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 382
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00fb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const/16 v1, 0x2a

    const-string v5, "mV"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mBalanceStartVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 384
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v6, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 385
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mBalanceStartVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 387
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 388
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00cb

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const/16 v3, 0x2b

    const-string v7, "mV"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mBalanceWindowCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 390
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 391
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mBalanceWindowCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 393
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mFuncCMD:Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    .line 394
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->functionReadResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 395
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mFuncCMD:Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a0041

    return v0
.end method

.method protected initData()V
    .locals 6

    .line 133
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->QueueTag:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->listBalanceType:Ljava/util/List;

    new-instance v1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    const v2, 0x7f0d00d7

    invoke-virtual {p0, v2}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, ""

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->listBalanceType:Ljava/util/List;

    new-instance v1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    const v2, 0x7f0d011d

    invoke-virtual {p0, v2}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2, v3, v5}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBaseInfoCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object v0

    iget v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->balanceState:I

    if-lez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->switchOpenBalance:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->switchOpenBalance:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->switchOpenBalance:Landroid/widget/Switch;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$2;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 154
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->switchOpenBalance:Landroid/widget/Switch;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$3;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 164
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->showLoading()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 7

    const p1, 0x7f0800c3

    .line 96
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->flTopBack:Landroid/widget/FrameLayout;

    const p1, 0x7f0800f9

    .line 97
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->ivTopBack:Landroid/widget/ImageView;

    const p1, 0x7f0802a0

    .line 98
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->tvTopTitle:Landroid/widget/TextView;

    const p1, 0x7f0802a2

    .line 99
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->tvTopTitleR:Landroid/widget/TextView;

    const p1, 0x7f080137

    .line 100
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->llyTopTitleBg:Landroid/widget/RelativeLayout;

    .line 101
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->ivTopBack:Landroid/widget/ImageView;

    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->flTopBack:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->tvTopTitleR:Landroid/widget/TextView;

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 103
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->flTopBack:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0801ae

    .line 109
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->switchOpenBalance:Landroid/widget/Switch;

    const p1, 0x7f08011f

    .line 110
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->llyBalanceType:Landroid/widget/LinearLayout;

    const p1, 0x7f080216

    .line 111
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->tvBalanceType:Landroid/widget/TextView;

    const p1, 0x7f0801ee

    .line 112
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mTvEqualizingvoltage:Landroid/widget/TextView;

    const p1, 0x7f080088

    .line 113
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mEdEqualizingvoltage:Landroid/widget/EditText;

    const p1, 0x7f08027b

    .line 114
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mTvSetEqualizingvoltage:Landroid/widget/TextView;

    const p1, 0x7f0801ed

    .line 115
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mTvEqualizationaccuracy:Landroid/widget/TextView;

    const p1, 0x7f080087

    .line 116
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mEdEqualizationaccuracy:Landroid/widget/EditText;

    const p1, 0x7f08027a

    .line 117
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mTvSetEqualizationaccuracy:Landroid/widget/TextView;

    .line 119
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    .line 120
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 122
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    .line 123
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setInit()V

    .line 124
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 126
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method

.method public onClickBalance(Landroid/view/View;)V
    .locals 6

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0d016e

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f0d0189

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 302
    :sswitch_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mEdEqualizingvoltage:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 303
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mEdEqualizingvoltage:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 304
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->FullVoltage:F

    const/high16 v1, 0x457a0000    # 4000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/16 v0, 0x109a

    const/16 v5, 0xdac

    .line 305
    invoke-static {p1, v0, v5}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->InputPram:Z

    goto :goto_0

    :cond_0
    const/16 v0, 0xe74

    const/16 v5, 0xbb8

    .line 307
    invoke-static {p1, v0, v5}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->InputPram:Z

    .line 309
    :goto_0
    iget-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->InputPram:Z

    if-eqz p1, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->showLoading()V

    .line 311
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d01

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 312
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_1

    .line 315
    :cond_1
    iget p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->FullVoltage:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    .line 316
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "3500~4250"

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 318
    :cond_2
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "3000~3700"

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 322
    :cond_3
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->hideLoading()V

    .line 323
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 328
    :sswitch_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mEdEqualizationaccuracy:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 329
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mEdEqualizationaccuracy:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x1e

    const/4 v1, 0x5

    .line 330
    invoke-static {p1, v0, v1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->InputPram:Z

    if-eqz p1, :cond_4

    .line 332
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->showLoading()V

    .line 333
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d02

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 334
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto :goto_1

    .line 336
    :cond_4
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "5~30"

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_1

    .line 339
    :cond_5
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->hideLoading()V

    .line 340
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    goto :goto_1

    .line 278
    :sswitch_2
    new-instance p1, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->tvBalanceType:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->listBalanceType:Ljava/util/List;

    invoke-direct {p1, v0, v1, v2}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 279
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$6;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$6;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)V

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->setBottomItemListener(Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;)V

    .line 298
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->show()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f08011f -> :sswitch_2
        0x7f08027a -> :sswitch_1
        0x7f08027b -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    .line 251
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onDestroy()V

    .line 252
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->timeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 253
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

.method public toEqualizationJson()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 473
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 474
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mTvEqualizingvoltage:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "equalizingVoltage"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->mTvEqualizationaccuracy:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "accuracyEqualization"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 476
    iget-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->IsBalanceSet:Z

    const-string v2, "equalizationStatus"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 477
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->tvBalanceType:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "equalization"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method protected useEventBus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
