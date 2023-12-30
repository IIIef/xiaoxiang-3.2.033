.class public Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "InitSettingsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.activity.InitSettingsActivity"


# instance fields
.field private InputPram:Z

.field private WriteLine:[B

.field private capacityEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

.field private closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private ed_FullCapacity:Landroid/widget/EditText;

.field private ed_LoopCapacity:Landroid/widget/EditText;

.field private ed_NominalCapacity:Landroid/widget/EditText;

.field private factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

.field private factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private flTopBack:Landroid/widget/FrameLayout;

.field private fullCapactityEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private fullChargeLayout:Landroid/widget/LinearLayout;

.field private ivTopBack:Landroid/widget/ImageView;

.field private mEdBatteryNum:Landroid/widget/EditText;

.field private mFullCapacity:I

.field private mLoopCapacity:I

.field private mNominalCapacity:I

.field private mTvBatteryNum:Landroid/widget/TextView;

.field private mTvSetBatteryNum:Landroid/widget/TextView;

.field private paramProcess:I

.field private paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private serialCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field timeHandler:Landroid/os/Handler;

.field private tvTopTitle:Landroid/widget/TextView;

.field private tvTopTitleR:Landroid/widget/TextView;

.field private tv_FullCapacity:Landroid/widget/TextView;

.field private tv_LoopCapacity:Landroid/widget/TextView;

.field private tv_NominalCapacity:Landroid/widget/TextView;

.field private tv_set_FullCapacity:Landroid/widget/TextView;

.field private tv_set_LoopCapacity:Landroid/widget/TextView;

.field private tv_set_NominalCapacity:Landroid/widget/TextView;

.field private writeCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 74
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->WriteLine:[B

    const/4 v0, 0x2

    .line 76
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->paramProcess:I

    .line 335
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;-><init>(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->timeHandler:Landroid/os/Handler;

    .line 481
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$6;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$6;-><init>(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 501
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$7;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$7;-><init>(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 526
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$8;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$8;-><init>(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 539
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$9;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$9;-><init>(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-void
.end method

.method private UpdateCapacity()V
    .locals 3

    .line 557
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "initData"

    .line 559
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->toCapacityJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 560
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->syncBatteryInformation(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 562
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/EditText;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->ed_NominalCapacity:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->InputPram:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->serialCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$102(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->InputPram:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->mTvBatteryNum:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->writeCount:I

    return p0
.end method

.method static synthetic access$1202(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->writeCount:I

    return p1
.end method

.method static synthetic access$1208(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)I
    .locals 2

    .line 44
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->writeCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->writeCount:I

    return v0
.end method

.method static synthetic access$1300(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->mNominalCapacity:I

    return p1
.end method

.method static synthetic access$1502(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->mFullCapacity:I

    return p1
.end method

.method static synthetic access$1600(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->checkProcess()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->UpdateCapacity()V

    return-void
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/EditText;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->ed_LoopCapacity:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/EditText;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->ed_FullCapacity:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->capacityEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->tv_NominalCapacity:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->tv_LoopCapacity:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->fullCapactityEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$900(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->tv_FullCapacity:Landroid/widget/TextView;

    return-object p0
.end method

.method private checkProcess()V
    .locals 2

    .line 472
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->paramProcess:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->paramProcess:I

    if-nez v0, :cond_0

    .line 474
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->UpdateCapacity()V

    .line 475
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->hideLoading()V

    .line 476
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    :cond_0
    return-void
.end method

.method private getCmdParams()V
    .locals 4

    .line 319
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->capacityEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 320
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 321
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->capacityEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 323
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x70

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->fullCapactityEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 324
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 325
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->fullCapactityEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 328
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->serialCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 329
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 330
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->serialCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

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

    .line 267
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->QueueTag:Ljava/lang/String;

    .line 268
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->showLoading()V

    .line 269
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 270
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->getCmdParams()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 7

    const p1, 0x7f0800c3

    .line 93
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->flTopBack:Landroid/widget/FrameLayout;

    const p1, 0x7f0800f9

    .line 94
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->ivTopBack:Landroid/widget/ImageView;

    const p1, 0x7f0802a0

    .line 95
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->tvTopTitle:Landroid/widget/TextView;

    const p1, 0x7f0802a2

    .line 96
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->tvTopTitleR:Landroid/widget/TextView;

    const p1, 0x7f0801d3

    .line 98
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->mTvBatteryNum:Landroid/widget/TextView;

    const p1, 0x7f08006f

    .line 99
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->mEdBatteryNum:Landroid/widget/EditText;

    const p1, 0x7f080262

    .line 100
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->mTvSetBatteryNum:Landroid/widget/TextView;

    const p1, 0x7f0800c6

    .line 101
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->fullChargeLayout:Landroid/widget/LinearLayout;

    .line 103
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->ivTopBack:Landroid/widget/ImageView;

    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->flTopBack:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->tvTopTitleR:Landroid/widget/TextView;

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 105
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->flTopBack:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0801fa

    .line 112
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->tv_NominalCapacity:Landroid/widget/TextView;

    const p1, 0x7f0801f4

    .line 113
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->tv_LoopCapacity:Landroid/widget/TextView;

    const p1, 0x7f0801f1

    .line 114
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->tv_FullCapacity:Landroid/widget/TextView;

    const p1, 0x7f080094

    .line 116
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->ed_NominalCapacity:Landroid/widget/EditText;

    const p1, 0x7f08008e

    .line 117
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->ed_LoopCapacity:Landroid/widget/EditText;

    const p1, 0x7f08008b

    .line 118
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->ed_FullCapacity:Landroid/widget/EditText;

    const p1, 0x7f080287

    .line 120
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->tv_set_NominalCapacity:Landroid/widget/TextView;

    const p1, 0x7f080281

    .line 121
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->tv_set_LoopCapacity:Landroid/widget/TextView;

    const p1, 0x7f08027e

    .line 122
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->tv_set_FullCapacity:Landroid/widget/TextView;

    .line 124
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBaseInfoCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object p1

    iget-boolean p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->isOldVersion:Z

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->fullChargeLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->fullChargeLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->tv_FullCapacity:Landroid/widget/TextView;

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

    .line 130
    :goto_0
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    .line 131
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 133
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    .line 135
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 137
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 138
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setWriteMode()V

    .line 139
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 158
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->tv_set_NominalCapacity:Landroid/widget/TextView;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->tv_set_LoopCapacity:Landroid/widget/TextView;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->tv_set_FullCapacity:Landroid/widget/TextView;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$4;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$4;-><init>(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->mTvSetBatteryNum:Landroid/widget/TextView;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-jiabaida-little_elephant-ui-activity-InitSettingsActivity(Landroid/view/View;)V
    .locals 4

    .line 242
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->mEdBatteryNum:Landroid/widget/EditText;

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

    .line 243
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->mEdBatteryNum:Landroid/widget/EditText;

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

    .line 244
    invoke-static {p1, v1, v2}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->InputPram:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->showLoading()V

    const/16 v1, 0x1f

    .line 247
    invoke-static {v1, p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->getWriteBLECommand(BI)[B

    move-result-object v3

    iput-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->WriteLine:[B

    .line 248
    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v3, v1, v2, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 249
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v1, 0x7d04

    invoke-virtual {p1, v1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 250
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v1}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 252
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->mTvBatteryNum:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->mEdBatteryNum:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->mEdBatteryNum:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0d0189

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "3~30"

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->mEdBatteryNum:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->hideLoading()V

    const p1, 0x7f0d016e

    .line 260
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->showMsg(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 452
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onDestroy()V

    .line 453
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->timeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 454
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

    .line 568
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 569
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->tv_NominalCapacity:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nominalCapacity"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 570
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->tv_FullCapacity:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fullChargeCapacity"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 571
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->tv_LoopCapacity:Landroid/widget/TextView;

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
