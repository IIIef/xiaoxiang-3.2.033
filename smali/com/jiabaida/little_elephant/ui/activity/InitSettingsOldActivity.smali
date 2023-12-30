.class public Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "InitSettingsOldActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.activity.InitSettingsOldActivity"


# instance fields
.field private InputPram:Z

.field private WriteLine:[B

.field private closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

.field private closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private ed_FullCapacity:Landroid/widget/EditText;

.field private ed_LoopCapacity:Landroid/widget/EditText;

.field private ed_NominalCapacity:Landroid/widget/EditText;

.field private factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

.field private factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private flTopBack:Landroid/widget/FrameLayout;

.field private fullChargeLayout:Landroid/widget/LinearLayout;

.field private ivTopBack:Landroid/widget/ImageView;

.field private mCycleCapacityCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mEdBatteryNum:Landroid/widget/EditText;

.field private mFCCapacityCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mFullCapacity:I

.field private mLoopCapacity:I

.field private mNominalCapacity:I

.field private mPackNumCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mTvBatteryNum:Landroid/widget/TextView;

.field private mTvSetBatteryNum:Landroid/widget/TextView;

.field private paramProcess:I

.field private paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private tenMill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch;

.field timeHandler:Landroid/os/Handler;

.field private tvTopTitle:Landroid/widget/TextView;

.field private tvTopTitleR:Landroid/widget/TextView;

.field private tv_FullCapacity:Landroid/widget/TextView;

.field private tv_LoopCapacity:Landroid/widget/TextView;

.field private tv_NominalCapacity:Landroid/widget/TextView;

.field private tv_set_FullCapacity:Landroid/widget/TextView;

.field private tv_set_LoopCapacity:Landroid/widget/TextView;

.field private tv_set_NominalCapacity:Landroid/widget/TextView;

.field private twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

.field private writeCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 74
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->WriteLine:[B

    const/4 v0, 0x2

    .line 76
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->paramProcess:I

    .line 82
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    .line 84
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->tenMill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch;

    .line 263
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$5;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$5;-><init>(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->timeHandler:Landroid/os/Handler;

    .line 387
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$6;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$6;-><init>(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 404
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$7;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$7;-><init>(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 427
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$8;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$8;-><init>(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 448
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$9;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$9;-><init>(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-void
.end method

.method private UpdateCapacity()V
    .locals 3

    .line 464
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "initData"

    .line 466
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->toCapacityJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 467
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->syncBatteryInformation(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 469
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->ed_NominalCapacity:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->InputPram:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->tv_NominalCapacity:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->InputPram:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->mNominalCapacity:I

    return p1
.end method

.method static synthetic access$1200(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->tv_FullCapacity:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->mFullCapacity:I

    return p1
.end method

.method static synthetic access$1400(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->mEdBatteryNum:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->mPackNumCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->mTvBatteryNum:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->checkProcess()V

    return-void
.end method

.method static synthetic access$1900(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->UpdateCapacity()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->getOldParams()V

    return-void
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->ed_LoopCapacity:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->ed_FullCapacity:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->writeCount:I

    return p0
.end method

.method static synthetic access$502(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->writeCount:I

    return p1
.end method

.method static synthetic access$508(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)I
    .locals 2

    .line 43
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->writeCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->writeCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->mFCCapacityCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->mCycleCapacityCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$900(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->tv_LoopCapacity:Landroid/widget/TextView;

    return-object p0
.end method

.method private checkProcess()V
    .locals 2

    .line 378
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->paramProcess:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->paramProcess:I

    if-nez v0, :cond_0

    .line 380
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->UpdateCapacity()V

    .line 381
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->hideLoading()V

    .line 382
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    :cond_0
    return-void
.end method

.method private getOldParams()V
    .locals 8

    .line 242
    new-instance v6, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 243
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0106

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->tenMill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch;

    const/16 v1, 0x10

    const-string v5, "mAH"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->mFCCapacityCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 245
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v6, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 246
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->mFCCapacityCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 248
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 249
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00ec

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->tenMill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch;

    const/16 v3, 0x11

    const-string v7, "mAH"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->mCycleCapacityCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 251
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 252
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->mCycleCapacityCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 254
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 255
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00d6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    const/16 v3, 0x2f

    const/4 v6, 0x0

    const-string v7, ""

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->mPackNumCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 258
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 259
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->mPackNumCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a0049

    return v0
.end method

.method protected initData()V
    .locals 2

    .line 235
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->QueueTag:Ljava/lang/String;

    .line 236
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->showLoading()V

    .line 237
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 7

    const p1, 0x7f0800c3

    .line 94
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->flTopBack:Landroid/widget/FrameLayout;

    const p1, 0x7f0800f9

    .line 95
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->ivTopBack:Landroid/widget/ImageView;

    const p1, 0x7f0802a0

    .line 96
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->tvTopTitle:Landroid/widget/TextView;

    const p1, 0x7f0802a2

    .line 97
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->tvTopTitleR:Landroid/widget/TextView;

    const p1, 0x7f0800c6

    .line 98
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->fullChargeLayout:Landroid/widget/LinearLayout;

    .line 100
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->ivTopBack:Landroid/widget/ImageView;

    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 101
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->flTopBack:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->tvTopTitleR:Landroid/widget/TextView;

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 102
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->flTopBack:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0801fa

    .line 109
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->tv_NominalCapacity:Landroid/widget/TextView;

    const p1, 0x7f0801f4

    .line 110
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->tv_LoopCapacity:Landroid/widget/TextView;

    const p1, 0x7f0801f1

    .line 111
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->tv_FullCapacity:Landroid/widget/TextView;

    const p1, 0x7f080094

    .line 113
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->ed_NominalCapacity:Landroid/widget/EditText;

    const p1, 0x7f08008e

    .line 114
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->ed_LoopCapacity:Landroid/widget/EditText;

    const p1, 0x7f08008b

    .line 115
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->ed_FullCapacity:Landroid/widget/EditText;

    const p1, 0x7f080287

    .line 117
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->tv_set_NominalCapacity:Landroid/widget/TextView;

    const p1, 0x7f080281

    .line 118
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->tv_set_LoopCapacity:Landroid/widget/TextView;

    const p1, 0x7f08027e

    .line 119
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->tv_set_FullCapacity:Landroid/widget/TextView;

    const p1, 0x7f0801d3

    .line 121
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->mTvBatteryNum:Landroid/widget/TextView;

    const p1, 0x7f08006f

    .line 122
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->mEdBatteryNum:Landroid/widget/EditText;

    const p1, 0x7f080262

    .line 123
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->mTvSetBatteryNum:Landroid/widget/TextView;

    .line 125
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBaseInfoCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object p1

    iget-boolean p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->isOldVersion:Z

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->fullChargeLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->fullChargeLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->tv_FullCapacity:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/jiabaida/little_elephant/util/BleUtils;->learnCapacity:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :goto_0
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    .line 132
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 134
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    .line 136
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 139
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->tv_set_NominalCapacity:Landroid/widget/TextView;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$2;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->tv_set_LoopCapacity:Landroid/widget/TextView;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$3;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->tv_set_FullCapacity:Landroid/widget/TextView;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$4;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$4;-><init>(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->mTvSetBatteryNum:Landroid/widget/TextView;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$$ExternalSyntheticLambda0;-><init>(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-jiabaida-little_elephant-ui-activity-InitSettingsOldActivity(Landroid/view/View;)V
    .locals 4

    .line 215
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->mEdBatteryNum:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 216
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->mEdBatteryNum:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x1e

    const/4 v2, 0x3

    .line 217
    invoke-static {p1, v1, v2}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->InputPram:Z

    if-eqz p1, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->showLoading()V

    .line 221
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d04

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 222
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0d0189

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "3~30"

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 225
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->mEdBatteryNum:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->hideLoading()V

    const p1, 0x7f0d016e

    .line 229
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 359
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onDestroy()V

    .line 360
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->timeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 361
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

.method public toCapacityJson()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 475
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 476
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->tv_NominalCapacity:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nominalCapacity"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 477
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->tv_FullCapacity:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fullChargeCapacity"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 478
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->tv_LoopCapacity:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cyclicCapacity"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method protected useEventBus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
