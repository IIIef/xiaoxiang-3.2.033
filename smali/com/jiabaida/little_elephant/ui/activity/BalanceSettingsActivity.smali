.class public Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "BalanceSettingsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.activity.BalanceSettingsActivity"


# instance fields
.field private Equalizingset:Ljava/lang/String;

.field private FullVoltage:F

.field private InputPram:Z

.field private IsBalanceCharge:Z

.field private IsBalanceSet:Z

.field private WriteLine:[B

.field private balanceConditionEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private balanceSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

.field private closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

.field private factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private flTopBack:Landroid/widget/FrameLayout;

.field private fullChargeEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

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

.field private llyBalanceType:Landroid/widget/LinearLayout;

.field private llyTopTitleBg:Landroid/widget/RelativeLayout;

.field private mEdEqualizationaccuracy:Landroid/widget/EditText;

.field private mEdEqualizingvoltage:Landroid/widget/EditText;

.field private mTvEqualizationaccuracy:Landroid/widget/TextView;

.field private mTvEqualizingvoltage:Landroid/widget/TextView;

.field private mTvSetEqualizationaccuracy:Landroid/widget/TextView;

.field private mTvSetEqualizingvoltage:Landroid/widget/TextView;

.field private paramProcess:I

.field private paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private switchOpenBalance:Landroid/widget/Switch;

.field timeHandler:Landroid/os/Handler;

.field private tvBalanceType:Landroid/widget/TextView;

.field private tvTopTitle:Landroid/widget/TextView;

.field private tvTopTitleR:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    const-string v0, ""

    .line 74
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->Equalizingset:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 84
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->WriteLine:[B

    const/4 v0, 0x3

    .line 88
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->paramProcess:I

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->listBalanceType:Ljava/util/List;

    .line 239
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->timeHandler:Landroid/os/Handler;

    .line 433
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$6;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$6;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 453
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$7;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$7;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 471
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$8;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$8;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 485
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$9;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$9;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-void
.end method

.method private UpdateEqualization()V
    .locals 3

    .line 502
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "equalizerSet"

    .line 504
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->toEqualizationJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 505
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->syncBatteryInformation(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 507
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->functionConfig:I

    return p0
.end method

.method static synthetic access$002(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->functionConfig:I

    return p1
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->IsBalanceSet:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->IsBalanceSet:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Landroid/widget/Switch;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->switchOpenBalance:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->IsBalanceCharge:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->IsBalanceCharge:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->tvBalanceType:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->checkProcess()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$302(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;F)F
    .locals 0

    .line 55
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->FullVoltage:F

    return p1
.end method

.method static synthetic access$400(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->fullChargeEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->UpdateEqualization()V

    return-void
.end method

.method static synthetic access$600(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->balanceConditionEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->mTvEqualizingvoltage:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->mTvEqualizationaccuracy:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->balanceSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method private checkProcess()V
    .locals 1

    .line 426
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->paramProcess:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->paramProcess:I

    if-nez v0, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->UpdateEqualization()V

    .line 429
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->hideLoading()V

    :cond_0
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

    .line 145
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->QueueTag:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->listBalanceType:Ljava/util/List;

    new-instance v1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    const v2, 0x7f0d00d7

    invoke-virtual {p0, v2}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, ""

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->listBalanceType:Ljava/util/List;

    new-instance v1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    const v2, 0x7f0d011d

    invoke-virtual {p0, v2}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2, v3, v5}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->switchOpenBalance:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 149
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->switchOpenBalance:Landroid/widget/Switch;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 160
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->switchOpenBalance:Landroid/widget/Switch;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 185
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->showLoading()V

    .line 187
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x1a

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->balanceConditionEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 188
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 189
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->balanceConditionEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 191
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x1d

    invoke-direct {v0, v1, v3}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->balanceSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 192
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 193
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->balanceSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 195
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-direct {v0, v2, v3}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->fullChargeEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 196
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 197
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->fullChargeEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 7

    const p1, 0x7f0800c3

    .line 105
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->flTopBack:Landroid/widget/FrameLayout;

    const p1, 0x7f0800f9

    .line 106
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->ivTopBack:Landroid/widget/ImageView;

    const p1, 0x7f0802a0

    .line 107
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->tvTopTitle:Landroid/widget/TextView;

    const p1, 0x7f0802a2

    .line 108
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->tvTopTitleR:Landroid/widget/TextView;

    const p1, 0x7f080137

    .line 109
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->llyTopTitleBg:Landroid/widget/RelativeLayout;

    .line 110
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->ivTopBack:Landroid/widget/ImageView;

    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 111
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->flTopBack:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->tvTopTitleR:Landroid/widget/TextView;

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 112
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->flTopBack:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0801ae

    .line 118
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->switchOpenBalance:Landroid/widget/Switch;

    const p1, 0x7f08011f

    .line 119
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->llyBalanceType:Landroid/widget/LinearLayout;

    const p1, 0x7f080216

    .line 120
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->tvBalanceType:Landroid/widget/TextView;

    const p1, 0x7f0801ee

    .line 121
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->mTvEqualizingvoltage:Landroid/widget/TextView;

    const p1, 0x7f080088

    .line 122
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->mEdEqualizingvoltage:Landroid/widget/EditText;

    const p1, 0x7f08027b

    .line 123
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->mTvSetEqualizingvoltage:Landroid/widget/TextView;

    const p1, 0x7f0801ed

    .line 124
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->mTvEqualizationaccuracy:Landroid/widget/TextView;

    const p1, 0x7f080087

    .line 125
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->mEdEqualizationaccuracy:Landroid/widget/EditText;

    const p1, 0x7f08027a

    .line 126
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->mTvSetEqualizationaccuracy:Landroid/widget/TextView;

    .line 128
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    .line 129
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 131
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    .line 132
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setInit()V

    .line 133
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 135
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 136
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setWriteMode()V

    .line 137
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    return-void
.end method

.method public onClickBalance(Landroid/view/View;)V
    .locals 6

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0d016e

    const-string v1, ""

    const/4 v2, 0x0

    const v3, 0x7f0d0189

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 365
    :sswitch_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->mEdEqualizingvoltage:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 366
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->mEdEqualizingvoltage:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 367
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->FullVoltage:F

    const/high16 v1, 0x457a0000    # 4000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/16 v0, 0x109a

    const/16 v5, 0xdac

    .line 368
    invoke-static {p1, v0, v5}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->InputPram:Z

    goto :goto_0

    :cond_0
    const/16 v0, 0xe74

    const/16 v5, 0xbb8

    .line 370
    invoke-static {p1, v0, v5}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->InputPram:Z

    .line 372
    :goto_0
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->InputPram:Z

    if-eqz v0, :cond_1

    .line 373
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->showLoading()V

    .line 375
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x1a

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v0, v1, v4, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 376
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 379
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->mTvEqualizingvoltage:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->mEdEqualizingvoltage:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 382
    :cond_1
    iget p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->FullVoltage:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    .line 383
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "3500~4250"

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 385
    :cond_2
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "3000~3700"

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 390
    :cond_3
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->hideLoading()V

    .line 391
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 396
    :sswitch_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->mEdEqualizationaccuracy:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 397
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->mEdEqualizationaccuracy:Landroid/widget/EditText;

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

    .line 398
    invoke-static {p1, v0, v1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->InputPram:Z

    if-eqz v0, :cond_4

    .line 401
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->showLoading()V

    .line 403
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x1b

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v0, v1, v4, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 404
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 407
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->mTvEqualizationaccuracy:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->mEdEqualizationaccuracy:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 409
    :cond_4
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "5~30"

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_1

    .line 412
    :cond_5
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->hideLoading()V

    .line 413
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->showMsg(Ljava/lang/String;)V

    goto :goto_1

    .line 338
    :sswitch_2
    new-instance p1, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->tvBalanceType:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->listBalanceType:Ljava/util/List;

    invoke-direct {p1, v0, v1, v2}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 339
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$5;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$5;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)V

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->setBottomItemListener(Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;)V

    .line 361
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

    .line 310
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onDestroy()V

    .line 311
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->timeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 312
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

    .line 513
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 514
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->mTvEqualizingvoltage:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "equalizingVoltage"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 515
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->mTvEqualizationaccuracy:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "accuracyEqualization"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 516
    iget-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->IsBalanceSet:Z

    const-string v2, "equalizationStatus"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 517
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->tvBalanceType:Landroid/widget/TextView;

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
