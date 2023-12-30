.class public Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "CapacityVoltmeterOldActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.activity.CapacityVoltmeterOldActivity"


# instance fields
.field private InputPram:Z

.field private capvolEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private capvolEntity1:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private cellFullVoltageEt:Landroid/widget/EditText;

.field private cellFullVoltageTv:Landroid/widget/TextView;

.field private cellReleaseVoltageEt:Landroid/widget/EditText;

.field private cellReleaseVoltageTv:Landroid/widget/TextView;

.field private closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

.field private closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

.field private factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private flTopBack:Landroid/widget/FrameLayout;

.field private ivTopBack:Landroid/widget/ImageView;

.field private llyTopTitleBg:Landroid/widget/RelativeLayout;

.field private mChargeEndVolCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mEdEightVoltmeter:Landroid/widget/EditText;

.field private mEdFiveVoltmeter:Landroid/widget/EditText;

.field private mEdFourVoltmeter:Landroid/widget/EditText;

.field private mEdHundredVoltmeter:Landroid/widget/EditText;

.field private mEdNineVoltmeter:Landroid/widget/EditText;

.field private mEdOneVoltmeter:Landroid/widget/EditText;

.field private mEdSevenVoltmeter:Landroid/widget/EditText;

.field private mEdSixVoltmeter:Landroid/widget/EditText;

.field private mEdThreeVoltmeter:Landroid/widget/EditText;

.field private mEdTwoVoltmeter:Landroid/widget/EditText;

.field private mFullChargeVolCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mTvEightVoltmeter:Landroid/widget/TextView;

.field private mTvFiveVoltmeter:Landroid/widget/TextView;

.field private mTvFourVoltmeter:Landroid/widget/TextView;

.field private mTvHundredVoltmeter:Landroid/widget/TextView;

.field private mTvNineVoltmeter:Landroid/widget/TextView;

.field private mTvOneVoltmeter:Landroid/widget/TextView;

.field private mTvSetEightVoltmeter:Landroid/widget/TextView;

.field private mTvSetFiveVoltmeter:Landroid/widget/TextView;

.field private mTvSetFourVoltmeter:Landroid/widget/TextView;

.field private mTvSetHundredVoltmeter:Landroid/widget/TextView;

.field private mTvSetNineVoltmeter:Landroid/widget/TextView;

.field private mTvSetOneVoltmeter:Landroid/widget/TextView;

.field private mTvSetSevenVoltmeter:Landroid/widget/TextView;

.field private mTvSetSixVoltmeter:Landroid/widget/TextView;

.field private mTvSetThreeVoltmeter:Landroid/widget/TextView;

.field private mTvSetTwoVoltmeter:Landroid/widget/TextView;

.field private mTvSevenVoltmeter:Landroid/widget/TextView;

.field private mTvSixVoltmeter:Landroid/widget/TextView;

.field private mTvThreeVoltmeter:Landroid/widget/TextView;

.field private mTvTwoVoltmeter:Landroid/widget/TextView;

.field private mVoltageCap100CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mVoltageCap10CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mVoltageCap20CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mVoltageCap30CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mVoltageCap40CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mVoltageCap50CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mVoltageCap60CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mVoltageCap70CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mVoltageCap80CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mVoltageCap90CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

.field private paramProcess:I

.field private paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

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

    .line 40
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    const/16 v0, 0xc

    .line 88
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->paramProcess:I

    .line 176
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->timeHandler:Landroid/os/Handler;

    .line 615
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$3;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 635
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$4;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$4;-><init>(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 656
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    .line 657
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    .line 732
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$5;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$5;-><init>(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 750
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$6;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$6;-><init>(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 767
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$7;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$7;-><init>(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-void
.end method

.method private GetVoltmeterArray()Ljava/lang/String;
    .locals 11

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvOneVoltmeter:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 797
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvTwoVoltmeter:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 798
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvThreeVoltmeter:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 799
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvFourVoltmeter:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 800
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvFiveVoltmeter:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 801
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvSixVoltmeter:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 802
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvSevenVoltmeter:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 803
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvEightVoltmeter:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 804
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvNineVoltmeter:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 805
    iget-object v9, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvHundredVoltmeter:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 807
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private UpdateVoltmeter()V
    .locals 3

    .line 785
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "capacityVoltage"

    .line 787
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->GetVoltmeterArray()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 788
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->syncBatteryInformation(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 790
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvOneVoltmeter:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvTwoVoltmeter:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->cellFullVoltageTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->cellReleaseVoltageTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdOneVoltmeter:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap10CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdTwoVoltmeter:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap20CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdThreeVoltmeter:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap30CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdFourVoltmeter:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvThreeVoltmeter:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap40CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdFiveVoltmeter:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap50CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdSixVoltmeter:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap60CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdSevenVoltmeter:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap70CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdEightVoltmeter:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap80CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdNineVoltmeter:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvFourVoltmeter:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap90CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdHundredVoltmeter:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap100CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->cellFullVoltageEt:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mFullChargeVolCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->cellReleaseVoltageEt:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mChargeEndVolCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$3700()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->checkProcess()V

    return-void
.end method

.method static synthetic access$3900(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getOldParams()V

    return-void
.end method

.method static synthetic access$400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvFiveVoltmeter:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->UpdateVoltmeter()V

    return-void
.end method

.method static synthetic access$4200(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvSixVoltmeter:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvSevenVoltmeter:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvEightVoltmeter:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvNineVoltmeter:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvHundredVoltmeter:Landroid/widget/TextView;

    return-object p0
.end method

.method private checkProcess()V
    .locals 1

    .line 607
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->paramProcess:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->paramProcess:I

    if-nez v0, :cond_0

    .line 609
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->UpdateVoltmeter()V

    .line 610
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->hideLoading()V

    :cond_0
    return-void
.end method

.method private getOldParams()V
    .locals 8

    .line 660
    new-instance v6, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const/16 v1, 0x32

    const-string v2, "80%"

    const-string v5, "mV"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap80CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 663
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v6, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 664
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap80CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 666
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const/16 v3, 0x33

    const-string v4, "60%"

    const-string v7, "mV"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap60CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 669
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 670
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap60CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 672
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const/16 v3, 0x34

    const-string v4, "40%"

    const-string v7, "mV"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap40CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 675
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 676
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap40CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 678
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const/16 v3, 0x35

    const-string v4, "20%"

    const-string v7, "mV"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap20CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 681
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 682
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap20CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 684
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const/16 v3, 0x42

    const-string v4, "90%"

    const-string v7, "mV"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap90CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 687
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 688
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap90CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 690
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const/16 v3, 0x43

    const-string v4, "70%"

    const-string v7, "mV"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap70CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 693
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 694
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap70CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 696
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const/16 v3, 0x44

    const-string v4, "50%"

    const-string v7, "mV"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap50CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 699
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 700
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap50CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 702
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const/16 v3, 0x45

    const-string v4, "30%"

    const-string v7, "mV"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap30CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 705
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 706
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap30CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 708
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const/16 v3, 0x46

    const-string v4, "10%"

    const-string v7, "mV"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap10CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 711
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 712
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap10CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 714
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const/16 v3, 0x47

    const-string v4, "100%"

    const-string v7, "mV"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap100CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 717
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 718
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mVoltageCap100CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 720
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const v1, 0x7f0d0040

    .line 721
    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const/16 v3, 0x12

    const-string v7, "mV"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mFullChargeVolCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 722
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 723
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mFullChargeVolCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 725
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const v1, 0x7f0d0043

    .line 726
    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const/16 v3, 0x13

    const-string v7, "mV"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mChargeEndVolCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 727
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 728
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mChargeEndVolCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a0043

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 165
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->QueueTag:Ljava/lang/String;

    .line 166
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showLoading()V

    .line 167
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x22

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->capvolEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 168
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 169
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->capvolEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 171
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x6a

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->capvolEntity1:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 172
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 173
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->capvolEntity1:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 7

    const p1, 0x7f0800c3

    .line 103
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->flTopBack:Landroid/widget/FrameLayout;

    const p1, 0x7f0800f9

    .line 104
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->ivTopBack:Landroid/widget/ImageView;

    const p1, 0x7f0802a0

    .line 105
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->tvTopTitle:Landroid/widget/TextView;

    const p1, 0x7f0802a2

    .line 106
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->tvTopTitleR:Landroid/widget/TextView;

    .line 107
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->ivTopBack:Landroid/widget/ImageView;

    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f080137

    .line 108
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->llyTopTitleBg:Landroid/widget/RelativeLayout;

    .line 109
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->flTopBack:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->tvTopTitleR:Landroid/widget/TextView;

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 110
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->flTopBack:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0801fb

    .line 118
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvOneVoltmeter:Landroid/widget/TextView;

    const p1, 0x7f080095

    .line 119
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdOneVoltmeter:Landroid/widget/EditText;

    const p1, 0x7f080288

    .line 120
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvSetOneVoltmeter:Landroid/widget/TextView;

    const p1, 0x7f080211

    .line 121
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvTwoVoltmeter:Landroid/widget/TextView;

    const p1, 0x7f0800a2

    .line 122
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdTwoVoltmeter:Landroid/widget/EditText;

    const p1, 0x7f080295

    .line 123
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvSetTwoVoltmeter:Landroid/widget/TextView;

    const p1, 0x7f080208

    .line 124
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvThreeVoltmeter:Landroid/widget/TextView;

    const p1, 0x7f080099

    .line 125
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdThreeVoltmeter:Landroid/widget/EditText;

    const p1, 0x7f08028c

    .line 126
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvSetThreeVoltmeter:Landroid/widget/TextView;

    const p1, 0x7f0801f0

    .line 127
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvFourVoltmeter:Landroid/widget/TextView;

    const p1, 0x7f08008a

    .line 128
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdFourVoltmeter:Landroid/widget/EditText;

    const p1, 0x7f08027d

    .line 129
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvSetFourVoltmeter:Landroid/widget/TextView;

    const p1, 0x7f0801ef

    .line 130
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvFiveVoltmeter:Landroid/widget/TextView;

    const p1, 0x7f080089

    .line 131
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdFiveVoltmeter:Landroid/widget/EditText;

    const p1, 0x7f08027c

    .line 132
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvSetFiveVoltmeter:Landroid/widget/TextView;

    const p1, 0x7f080207

    .line 133
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvSixVoltmeter:Landroid/widget/TextView;

    const p1, 0x7f080098

    .line 134
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdSixVoltmeter:Landroid/widget/EditText;

    const p1, 0x7f08028b

    .line 135
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvSetSixVoltmeter:Landroid/widget/TextView;

    const p1, 0x7f080203

    .line 136
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvSevenVoltmeter:Landroid/widget/TextView;

    const p1, 0x7f080096

    .line 137
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdSevenVoltmeter:Landroid/widget/EditText;

    const p1, 0x7f080289

    .line 138
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvSetSevenVoltmeter:Landroid/widget/TextView;

    const p1, 0x7f0801ec

    .line 139
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvEightVoltmeter:Landroid/widget/TextView;

    const p1, 0x7f080086

    .line 140
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdEightVoltmeter:Landroid/widget/EditText;

    const p1, 0x7f080279

    .line 141
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvSetEightVoltmeter:Landroid/widget/TextView;

    const p1, 0x7f0801f9

    .line 142
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvNineVoltmeter:Landroid/widget/TextView;

    const p1, 0x7f080093

    .line 143
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdNineVoltmeter:Landroid/widget/EditText;

    const p1, 0x7f080286

    .line 144
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvSetNineVoltmeter:Landroid/widget/TextView;

    const p1, 0x7f0801f2

    .line 145
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvHundredVoltmeter:Landroid/widget/TextView;

    const p1, 0x7f08008c

    .line 146
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdHundredVoltmeter:Landroid/widget/EditText;

    const p1, 0x7f08027f

    .line 147
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mTvSetHundredVoltmeter:Landroid/widget/TextView;

    const p1, 0x7f080044

    .line 148
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->cellFullVoltageTv:Landroid/widget/TextView;

    const p1, 0x7f080047

    .line 149
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->cellReleaseVoltageTv:Landroid/widget/TextView;

    const p1, 0x7f080042

    .line 150
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->cellFullVoltageEt:Landroid/widget/EditText;

    const p1, 0x7f080045

    .line 151
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->cellReleaseVoltageEt:Landroid/widget/EditText;

    .line 153
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    .line 154
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 156
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    .line 157
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setInit()V

    .line 158
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 160
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method

.method public onClickVoltmeter(Landroid/view/View;)V
    .locals 9

    .line 359
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x1194

    const/16 v1, 0x1388

    const-string v2, "2000~5000"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7f0d0189

    const/16 v6, 0x7d0

    const v7, 0x7f0d016e

    const-string v8, ""

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 384
    :sswitch_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdTwoVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 385
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdTwoVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 386
    invoke-static {p1, v1, v6}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->InputPram:Z

    if-eqz p1, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showLoading()V

    .line 389
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d02

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 390
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_0

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 394
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdTwoVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 397
    :cond_1
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->hideLoading()V

    .line 398
    invoke-virtual {p0, v7}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 404
    :sswitch_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdThreeVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 405
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdThreeVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 406
    invoke-static {p1, v1, v6}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->InputPram:Z

    if-eqz p1, :cond_2

    .line 408
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showLoading()V

    .line 409
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d03

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 410
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_0

    .line 413
    :cond_2
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 414
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdThreeVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 417
    :cond_3
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->hideLoading()V

    .line 418
    invoke-virtual {p0, v7}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 463
    :sswitch_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdSixVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 464
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdSixVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 465
    invoke-static {p1, v1, v6}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->InputPram:Z

    if-eqz p1, :cond_4

    .line 467
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showLoading()V

    .line 468
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d06

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 469
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_0

    .line 472
    :cond_4
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 473
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdSixVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 476
    :cond_5
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->hideLoading()V

    .line 477
    invoke-virtual {p0, v7}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 482
    :sswitch_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdSevenVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 483
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdSevenVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 484
    invoke-static {p1, v1, v6}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->InputPram:Z

    if-eqz p1, :cond_6

    .line 486
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showLoading()V

    .line 487
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d07

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 488
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_0

    .line 491
    :cond_6
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 492
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdSevenVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 495
    :cond_7
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->hideLoading()V

    .line 496
    invoke-virtual {p0, v7}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 363
    :sswitch_4
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdOneVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 364
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdOneVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 365
    invoke-static {p1, v1, v6}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->InputPram:Z

    if-eqz p1, :cond_8

    .line 367
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showLoading()V

    .line 368
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d01

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 369
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_0

    .line 373
    :cond_8
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 374
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdOneVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 377
    :cond_9
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->hideLoading()V

    .line 378
    invoke-virtual {p0, v7}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 523
    :sswitch_5
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdNineVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 524
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdNineVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 525
    invoke-static {p1, v1, v6}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->InputPram:Z

    if-eqz p1, :cond_a

    .line 527
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showLoading()V

    .line 528
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d09

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 529
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_0

    .line 532
    :cond_a
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 533
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdNineVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 536
    :cond_b
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->hideLoading()V

    .line 537
    invoke-virtual {p0, v7}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 543
    :sswitch_6
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdHundredVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 544
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdHundredVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 545
    invoke-static {p1, v1, v6}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->InputPram:Z

    if-eqz p1, :cond_c

    .line 547
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showLoading()V

    .line 548
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d0a

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 549
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_0

    .line 553
    :cond_c
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 554
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdHundredVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 557
    :cond_d
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->hideLoading()V

    .line 558
    invoke-virtual {p0, v7}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 424
    :sswitch_7
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdFourVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 425
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdFourVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 426
    invoke-static {p1, v1, v6}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->InputPram:Z

    if-eqz p1, :cond_e

    .line 428
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showLoading()V

    .line 429
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d04

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 430
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_0

    .line 433
    :cond_e
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 434
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdFourVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 437
    :cond_f
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->hideLoading()V

    .line 438
    invoke-virtual {p0, v7}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 444
    :sswitch_8
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdFiveVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 445
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdFiveVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 446
    invoke-static {p1, v1, v6}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->InputPram:Z

    if-eqz p1, :cond_10

    .line 448
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showLoading()V

    .line 449
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d05

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 450
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_0

    .line 453
    :cond_10
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 454
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdFiveVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 457
    :cond_11
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->hideLoading()V

    .line 458
    invoke-virtual {p0, v7}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 502
    :sswitch_9
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdEightVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 503
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdEightVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 504
    invoke-static {p1, v1, v6}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->InputPram:Z

    if-eqz p1, :cond_12

    .line 506
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showLoading()V

    .line 507
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d08

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 508
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_0

    .line 511
    :cond_12
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 512
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->mEdEightVoltmeter:Landroid/widget/EditText;

    invoke-virtual {p1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 515
    :cond_13
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->hideLoading()V

    .line 516
    invoke-virtual {p0, v7}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 580
    :sswitch_a
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->cellReleaseVoltageEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 581
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->cellReleaseVoltageEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 582
    invoke-static {p1, v0, v6}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->InputPram:Z

    if-eqz p1, :cond_14

    .line 584
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showLoading()V

    .line 585
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d0c

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 586
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_0

    .line 590
    :cond_14
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 591
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->cellReleaseVoltageEt:Landroid/widget/EditText;

    invoke-virtual {p1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 594
    :cond_15
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->hideLoading()V

    .line 595
    invoke-virtual {p0, v7}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 562
    :sswitch_b
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->cellFullVoltageEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 563
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->cellFullVoltageEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 564
    invoke-static {p1, v0, v6}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->InputPram:Z

    if-eqz p1, :cond_16

    .line 566
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showLoading()V

    .line 567
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d0b

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 568
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto :goto_0

    .line 571
    :cond_16
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 572
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->cellFullVoltageEt:Landroid/widget/EditText;

    invoke-virtual {p1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 575
    :cond_17
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->hideLoading()V

    .line 576
    invoke-virtual {p0, v7}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showMsg(Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f080043 -> :sswitch_b
        0x7f080046 -> :sswitch_a
        0x7f080279 -> :sswitch_9
        0x7f08027c -> :sswitch_8
        0x7f08027d -> :sswitch_7
        0x7f08027f -> :sswitch_6
        0x7f080286 -> :sswitch_5
        0x7f080288 -> :sswitch_4
        0x7f080289 -> :sswitch_3
        0x7f08028b -> :sswitch_2
        0x7f08028c -> :sswitch_1
        0x7f080295 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    .line 337
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onDestroy()V

    .line 338
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->timeHandler:Landroid/os/Handler;

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

.method protected useEventBus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
