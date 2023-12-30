.class public Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "ProtectParamsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.activity.ProtectParamsActivity"


# instance fields
.field private FullVoltage:F

.field private InputPram:Z

.field private MonomerLowpresDelayed:I

.field private MonomerLowpressure:I

.field private MonomerLowpressurerelease:I

.field private MonomerOverDelayed:I

.field private MonomerOvervoltage:I

.field private MonomerOvervoltagerelease:I

.field private TotalLowpresDelayed:I

.field private TotalLowpressure:I

.field private TotalLowpressurerelease:I

.field private TotalOverDelayed:I

.field private TotalOvervoltage:I

.field private TotalOvervoltagerelease:I

.field private WriteLine:[B

.field private batteryNum:I

.field private closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

.field private closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private edMonomerLowpressure:Landroid/widget/EditText;

.field private edMonomerLowpressurerelease:Landroid/widget/EditText;

.field private edMonomerOvervoltage:Landroid/widget/EditText;

.field private edMonomerOvervoltagerelease:Landroid/widget/EditText;

.field private edTotalDelayedpressure:Landroid/widget/EditText;

.field private edTotalDelayedrelease:Landroid/widget/EditText;

.field private edTotalDelayedvoltage:Landroid/widget/EditText;

.field private edTotalDelayedvoltagerelease:Landroid/widget/EditText;

.field private edTotalLowpressure:Landroid/widget/EditText;

.field private edTotalLowpressurerelease:Landroid/widget/EditText;

.field private edTotalOvervoltage:Landroid/widget/EditText;

.field private edTotalOvervoltagerelease:Landroid/widget/EditText;

.field private ed_uvp_delay:Landroid/widget/TextView;

.field private factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

.field private factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private flTopBack:Landroid/widget/FrameLayout;

.field private fullChargeEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private hardwareDelayEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private hardwareProtectEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private isSetParams:Z

.field private ivTopBack:Landroid/widget/ImageView;

.field private listOvpDelay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BottomSelectBean;",
            ">;"
        }
    .end annotation
.end field

.field private listOvpPos:I

.field private listUvpDelay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BottomSelectBean;",
            ">;"
        }
    .end annotation
.end field

.field private listUvpPos:I

.field private mCellOverVoltage:F

.field private mCellOverVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mCurrentMode:Ljava/lang/String;

.field private mPackNumCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

.field private paramProcess:I

.field private paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private process:I

.field private protecionDelayEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private protecionVoltageEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field timeHandler:Landroid/os/Handler;

.field private tvSetMonomerLowpressure:Landroid/widget/TextView;

.field private tvSetMonomerLowpressurerelease:Landroid/widget/TextView;

.field private tvSetMonomerOvervoltage:Landroid/widget/TextView;

.field private tvSetMonomerOvervoltagerelease:Landroid/widget/TextView;

.field private tvSetTotalDelayedpressure:Landroid/widget/TextView;

.field private tvSetTotalDelayedrelease:Landroid/widget/TextView;

.field private tvSetTotalDelayedvoltage:Landroid/widget/TextView;

.field private tvSetTotalDelayedvoltagerelease:Landroid/widget/TextView;

.field private tvSetTotalLowpressure:Landroid/widget/TextView;

.field private tvSetTotalLowpressurerelease:Landroid/widget/TextView;

.field private tvSetTotalOvervoltage:Landroid/widget/TextView;

.field private tvSetTotalOvervoltagerelease:Landroid/widget/TextView;

.field private tvTopTitle:Landroid/widget/TextView;

.field private tvTopTitleR:Landroid/widget/TextView;

.field private tv_MonomerLowpressure:Landroid/widget/TextView;

.field private tv_MonomerLowpressurerelease:Landroid/widget/TextView;

.field private tv_MonomerOvervoltage:Landroid/widget/TextView;

.field private tv_MonomerOvervoltagerelease:Landroid/widget/TextView;

.field private tv_TotalDelayedpressure:Landroid/widget/TextView;

.field private tv_TotalDelayedrelease:Landroid/widget/TextView;

.field private tv_TotalDelayedvoltage:Landroid/widget/TextView;

.field private tv_TotalDelayedvoltagerelease:Landroid/widget/TextView;

.field private tv_TotalLowpressure:Landroid/widget/TextView;

.field private tv_TotalLowpressurerelease:Landroid/widget/TextView;

.field private tv_TotalOvervoltage:Landroid/widget/TextView;

.field private tv_TotalOvervoltagerelease:Landroid/widget/TextView;

.field private tv_hardware_over:Landroid/widget/TextView;

.field private tv_hardware_under:Landroid/widget/TextView;

.field private tv_ovp_delay:Landroid/widget/TextView;

.field private tv_uvp_delay:Landroid/widget/TextView;

.field private twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 116
    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->WriteLine:[B

    const/4 v1, 0x1

    .line 120
    iput-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->InputPram:Z

    const/4 v1, 0x3

    .line 138
    iput v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramProcess:I

    .line 152
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->isSetParams:Z

    const-string v0, ""

    .line 153
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->mCurrentMode:Ljava/lang/String;

    const/4 v0, 0x0

    .line 154
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->mCellOverVoltage:F

    .line 321
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    .line 322
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    .line 339
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 798
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->listOvpDelay:Ljava/util/List;

    .line 799
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->listUvpDelay:Ljava/util/List;

    .line 909
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->timeHandler:Landroid/os/Handler;

    .line 1097
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$7;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$7;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 1117
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$8;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$8;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 1135
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$9;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$9;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 1149
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$10;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$10;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-void
.end method

.method private IsInputProtect(III)Z
    .locals 0

    if-lt p1, p3, :cond_0

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private ShowDialog(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BottomSelectBean;",
            ">;)V"
        }
    .end annotation

    .line 803
    new-instance v0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 804
    new-instance p2, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;

    invoke-direct {p2, p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->setBottomItemListener(Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;)V

    .line 838
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->show()V

    return-void
.end method

.method private UpdateProtect()V
    .locals 3

    .line 1167
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "deivceVoltageParam"

    .line 1169
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->toProtectJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1170
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->syncBatteryInformation(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1172
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getOldParams()V

    return-void
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->process:I

    return p0
.end method

.method static synthetic access$1000(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_uvp_delay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$108(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)I
    .locals 2

    .line 61
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->process:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->process:I

    return v0
.end method

.method static synthetic access$1102(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;F)F
    .locals 0

    .line 61
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->FullVoltage:F

    return p1
.end method

.method static synthetic access$1200(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->fullChargeEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->protecionVoltageEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerOvervoltage:I

    return p1
.end method

.method static synthetic access$1502(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerOvervoltagerelease:I

    return p1
.end method

.method static synthetic access$1602(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerLowpressure:I

    return p1
.end method

.method static synthetic access$1702(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerLowpressurerelease:I

    return p1
.end method

.method static synthetic access$1802(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->TotalOvervoltage:I

    return p1
.end method

.method static synthetic access$1902(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->TotalOvervoltagerelease:I

    return p1
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvTopTitleR:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->TotalLowpressure:I

    return p1
.end method

.method static synthetic access$2102(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->TotalLowpressurerelease:I

    return p1
.end method

.method static synthetic access$2200(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_MonomerOvervoltage:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_MonomerOvervoltagerelease:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_MonomerLowpressure:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_MonomerLowpressurerelease:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalOvervoltage:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalOvervoltagerelease:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalLowpressure:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalLowpressurerelease:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)F
    .locals 0

    .line 61
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->mCellOverVoltage:F

    return p0
.end method

.method static synthetic access$3000(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->protecionDelayEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$302(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;F)F
    .locals 0

    .line 61
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->mCellOverVoltage:F

    return p1
.end method

.method static synthetic access$3102(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerOverDelayed:I

    return p1
.end method

.method static synthetic access$3202(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerLowpresDelayed:I

    return p1
.end method

.method static synthetic access$3302(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->TotalOverDelayed:I

    return p1
.end method

.method static synthetic access$3402(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->TotalLowpresDelayed:I

    return p1
.end method

.method static synthetic access$3500(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalDelayedrelease:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalDelayedpressure:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalDelayedvoltagerelease:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalDelayedvoltage:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->hardwareProtectEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->batteryNum:I

    return p0
.end method

.method static synthetic access$4000(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_hardware_over:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->batteryNum:I

    return p1
.end method

.method static synthetic access$4100(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_hardware_under:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->hardwareDelayEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Ljava/util/List;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->listOvpDelay:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Ljava/util/List;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->listUvpDelay:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$4600()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->checkProcess()V

    return-void
.end method

.method static synthetic access$4800(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->UpdateProtect()V

    return-void
.end method

.method static synthetic access$4902(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->isSetParams:Z

    return p1
.end method

.method static synthetic access$500(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->listOvpPos:I

    return p0
.end method

.method static synthetic access$5002(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->mCurrentMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->listOvpPos:I

    return p1
.end method

.method static synthetic access$600(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->listUvpPos:I

    return p0
.end method

.method static synthetic access$602(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->listUvpPos:I

    return p1
.end method

.method static synthetic access$700(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$900(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_ovp_delay:Landroid/widget/TextView;

    return-object p0
.end method

.method private checkProcess()V
    .locals 1

    .line 1090
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramProcess:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramProcess:I

    if-nez v0, :cond_0

    .line 1092
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->UpdateProtect()V

    .line 1093
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->hideLoading()V

    :cond_0
    return-void
.end method

.method private getOldParams()V
    .locals 8

    const/4 v0, 0x0

    .line 326
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->process:I

    .line 327
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 328
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00d6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    const/16 v2, 0x2f

    const/4 v5, 0x0

    const-string v6, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->mPackNumCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 330
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 331
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->mPackNumCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 333
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 334
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00d1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const/16 v3, 0x24

    const-string v7, "mV"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->mCellOverVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 336
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 337
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->mCellOverVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method

.method private sendFactoryCmd()V
    .locals 2

    .line 305
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;-><init>()V

    .line 306
    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$3;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)V

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 317
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a004c

    return v0
.end method

.method protected initData()V
    .locals 12

    .line 842
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->listOvpDelay:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 843
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->listOvpDelay:Ljava/util/List;

    new-instance v1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    const/4 v2, 0x0

    const-string v3, "1"

    const-string v4, "0"

    invoke-direct {v1, v2, v3, v2, v4}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->listOvpDelay:Ljava/util/List;

    new-instance v1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    const-string v5, "2"

    const/4 v6, 0x1

    invoke-direct {v1, v2, v5, v6, v3}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->listOvpDelay:Ljava/util/List;

    new-instance v1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    const-string v7, "4"

    const/4 v8, 0x2

    invoke-direct {v1, v2, v7, v8, v5}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->listOvpDelay:Ljava/util/List;

    new-instance v1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    const-string v9, "8"

    const/4 v10, 0x3

    const-string v11, "3"

    invoke-direct {v1, v2, v9, v10, v11}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->listUvpDelay:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 848
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->listUvpDelay:Ljava/util/List;

    new-instance v1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    invoke-direct {v1, v2, v3, v2, v4}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->listUvpDelay:Ljava/util/List;

    new-instance v1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    invoke-direct {v1, v2, v7, v6, v3}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->listUvpDelay:Ljava/util/List;

    new-instance v1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    invoke-direct {v1, v2, v9, v8, v5}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 851
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->listUvpDelay:Ljava/util/List;

    new-instance v1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    const-string v3, "16"

    invoke-direct {v1, v2, v3, v10, v11}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->QueueTag:Ljava/lang/String;

    .line 854
    iput v10, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramProcess:I

    .line 855
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showLoading()V

    .line 856
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x10

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->protecionVoltageEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 857
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 858
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->protecionVoltageEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 860
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0x30

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->protecionDelayEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 861
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 862
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->protecionDelayEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 864
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-direct {v0, v8, v6}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->fullChargeEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 865
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 866
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->fullChargeEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 7

    const p1, 0x7f0800c3

    .line 161
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->flTopBack:Landroid/widget/FrameLayout;

    const p1, 0x7f0800f9

    .line 162
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->ivTopBack:Landroid/widget/ImageView;

    const p1, 0x7f0802a0

    .line 163
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvTopTitle:Landroid/widget/TextView;

    const p1, 0x7f0802a2

    .line 164
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvTopTitleR:Landroid/widget/TextView;

    .line 165
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->ivTopBack:Landroid/widget/ImageView;

    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 166
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->flTopBack:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvTopTitleR:Landroid/widget/TextView;

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 167
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->flTopBack:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0801f7

    .line 175
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_MonomerOvervoltage:Landroid/widget/TextView;

    const p1, 0x7f0801f8

    .line 176
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_MonomerOvervoltagerelease:Landroid/widget/TextView;

    const p1, 0x7f08020a

    .line 177
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalDelayedrelease:Landroid/widget/TextView;

    const p1, 0x7f0801f5

    .line 178
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_MonomerLowpressure:Landroid/widget/TextView;

    const p1, 0x7f0801f6

    .line 179
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_MonomerLowpressurerelease:Landroid/widget/TextView;

    const p1, 0x7f080209

    .line 180
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalDelayedpressure:Landroid/widget/TextView;

    const p1, 0x7f08020f

    .line 181
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalOvervoltage:Landroid/widget/TextView;

    const p1, 0x7f080210

    .line 182
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalOvervoltagerelease:Landroid/widget/TextView;

    const p1, 0x7f08020c

    .line 183
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalDelayedvoltagerelease:Landroid/widget/TextView;

    const p1, 0x7f08020d

    .line 184
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalLowpressure:Landroid/widget/TextView;

    const p1, 0x7f08020e

    .line 185
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalLowpressurerelease:Landroid/widget/TextView;

    const p1, 0x7f08020b

    .line 186
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalDelayedvoltage:Landroid/widget/TextView;

    const p1, 0x7f080284

    .line 187
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvSetMonomerOvervoltage:Landroid/widget/TextView;

    const v0, 0x7f080091

    .line 188
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edMonomerOvervoltage:Landroid/widget/EditText;

    .line 190
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edMonomerOvervoltage:Landroid/widget/EditText;

    const v0, 0x7f080092

    .line 191
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edMonomerOvervoltagerelease:Landroid/widget/EditText;

    const v0, 0x7f08009b

    .line 192
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalDelayedrelease:Landroid/widget/EditText;

    const v0, 0x7f08008f

    .line 193
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edMonomerLowpressure:Landroid/widget/EditText;

    const v0, 0x7f080090

    .line 194
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edMonomerLowpressurerelease:Landroid/widget/EditText;

    const v0, 0x7f08009a

    .line 195
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalDelayedpressure:Landroid/widget/EditText;

    const v0, 0x7f0800a0

    .line 196
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalOvervoltage:Landroid/widget/EditText;

    const v0, 0x7f0800a1

    .line 197
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalOvervoltagerelease:Landroid/widget/EditText;

    const v0, 0x7f08009d

    .line 198
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalDelayedvoltagerelease:Landroid/widget/EditText;

    const v0, 0x7f08009e

    .line 199
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalLowpressure:Landroid/widget/EditText;

    const v0, 0x7f08009f

    .line 200
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalLowpressurerelease:Landroid/widget/EditText;

    const v0, 0x7f08009c

    .line 201
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalDelayedvoltage:Landroid/widget/EditText;

    .line 204
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvSetMonomerOvervoltage:Landroid/widget/TextView;

    const p1, 0x7f080285

    .line 205
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvSetMonomerOvervoltagerelease:Landroid/widget/TextView;

    const p1, 0x7f08028e

    .line 206
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvSetTotalDelayedrelease:Landroid/widget/TextView;

    const p1, 0x7f080282

    .line 207
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvSetMonomerLowpressure:Landroid/widget/TextView;

    const p1, 0x7f080283

    .line 208
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvSetMonomerLowpressurerelease:Landroid/widget/TextView;

    const p1, 0x7f08028d

    .line 209
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvSetTotalDelayedpressure:Landroid/widget/TextView;

    const p1, 0x7f080293

    .line 210
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvSetTotalOvervoltage:Landroid/widget/TextView;

    const p1, 0x7f080294

    .line 211
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvSetTotalOvervoltagerelease:Landroid/widget/TextView;

    const p1, 0x7f080290

    .line 212
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvSetTotalDelayedvoltagerelease:Landroid/widget/TextView;

    const p1, 0x7f080291

    .line 213
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvSetTotalLowpressure:Landroid/widget/TextView;

    const p1, 0x7f080292

    .line 214
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvSetTotalLowpressurerelease:Landroid/widget/TextView;

    const p1, 0x7f08028f

    .line 215
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvSetTotalDelayedvoltage:Landroid/widget/TextView;

    const p1, 0x7f080116

    .line 216
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const v0, 0x7f08025c

    .line 217
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_ovp_delay:Landroid/widget/TextView;

    const v0, 0x7f0802a4

    .line 218
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_uvp_delay:Landroid/widget/TextView;

    const v0, 0x7f080117

    .line 219
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 222
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvSetMonomerOvervoltage:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvSetMonomerOvervoltagerelease:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvSetTotalDelayedrelease:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvSetMonomerLowpressure:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvSetMonomerLowpressurerelease:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvSetTotalDelayedpressure:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvSetTotalOvervoltage:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvSetTotalOvervoltagerelease:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvSetTotalDelayedvoltagerelease:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvSetTotalLowpressure:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvSetTotalLowpressurerelease:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvSetTotalDelayedvoltage:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    .line 239
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 241
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    .line 242
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setInit()V

    .line 243
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 245
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 246
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setWriteMode()V

    .line 247
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 249
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvTopTitleR:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvTopTitleR:Landroid/widget/TextView;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080233

    .line 286
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_hardware_over:Landroid/widget/TextView;

    const p1, 0x7f080234

    .line 287
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_hardware_under:Landroid/widget/TextView;

    const p1, 0x7f080297

    .line 288
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080298

    .line 289
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08010f

    .line 290
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f080110

    .line 291
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 293
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v0, 0x26

    const/4 v1, 0x4

    invoke-direct {p1, v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->hardwareProtectEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 294
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 295
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->hardwareProtectEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 297
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v0, 0x2a

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->hardwareDelayEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 298
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 299
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->hardwareDelayEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 301
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->sendFactoryCmd()V

    return-void
.end method

.method synthetic lambda$initView$0$com-jiabaida-little_elephant-ui-activity-ProtectParamsActivity(Landroid/view/View;)V
    .locals 2

    const p1, 0x7f0d0047

    .line 251
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 252
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->mCellOverVoltage:F

    const/high16 v1, 0x457a0000    # 4000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const p1, 0x7f0d0046

    .line 253
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;Ljava/lang/String;)V

    invoke-static {v0, p1, v1}, Lcom/jiabaida/little_elephant/view/DialogHelper;->showDialog(Landroid/content/Context;Ljava/lang/String;Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    .line 374
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string v2, "~"

    const/16 v4, 0x1130

    const/16 v5, 0x9c4

    const/16 v6, 0x7d0

    const/16 v7, 0x1f4

    const/16 v9, 0xf3c

    const/16 v10, 0x3e8

    const/high16 v11, 0x457a0000    # 4000.0f

    const v12, 0x7f0d0188

    const/4 v13, 0x0

    const v14, 0x7f0d016e

    const/4 v15, 0x2

    const/4 v3, 0x1

    const-string v8, ""

    packed-switch v1, :pswitch_data_1

    const/16 v2, 0xff

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    goto/16 :goto_d

    :pswitch_0
    const v1, 0x7f0800a5

    .line 769
    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 770
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 771
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 772
    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerLowpressure:I

    add-int/lit16 v5, v4, 0x3e8

    sub-int/2addr v4, v10

    invoke-direct {v0, v2, v5, v4}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->IsInputProtect(III)Z

    move-result v4

    iput-boolean v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->InputPram:Z

    if-eqz v4, :cond_0

    .line 774
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showLoading()V

    .line 775
    iget-object v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v5, 0x27

    invoke-static {v2}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {v4, v5, v3, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 776
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 777
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_hardware_under:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 779
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v15, [Ljava/lang/Object;

    iget v5, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerLowpressure:I

    sub-int/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v13

    iget v5, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerLowpressure:I

    add-int/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 781
    :goto_0
    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 783
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->hideLoading()V

    .line 784
    invoke-virtual {v0, v14}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    :pswitch_1
    const v1, 0x7f0800a4

    .line 748
    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 750
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 751
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 752
    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerOvervoltage:I

    add-int/lit16 v5, v4, 0x3e8

    sub-int/2addr v4, v10

    invoke-direct {v0, v2, v5, v4}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->IsInputProtect(III)Z

    move-result v4

    iput-boolean v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->InputPram:Z

    if-eqz v4, :cond_2

    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showLoading()V

    .line 755
    iget-object v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v5, 0x26

    invoke-static {v2}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {v4, v5, v3, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 756
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 757
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_hardware_over:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 759
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v15, [Ljava/lang/Object;

    iget v5, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerOvervoltage:I

    sub-int/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v13

    iget v5, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerOvervoltage:I

    add-int/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 761
    :goto_1
    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 764
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->hideLoading()V

    .line 765
    invoke-virtual {v0, v14}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 615
    :pswitch_2
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalOvervoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 616
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalOvervoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 618
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->TotalOvervoltage:I

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerOvervoltage:I

    add-int/lit16 v4, v4, -0x190

    sget v5, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    mul-int v4, v4, v5

    invoke-direct {v0, v1, v2, v4}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->InputPram:Z

    if-eqz v2, :cond_4

    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showLoading()V

    .line 622
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v4, 0x11

    div-int/lit8 v5, v1, 0xa

    invoke-static {v5}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 623
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 626
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalOvervoltagerelease:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalOvervoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalOvervoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 628
    iput v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->TotalOvervoltagerelease:I

    goto/16 :goto_d

    .line 630
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/Object;

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerOvervoltage:I

    add-int/lit16 v4, v4, -0x190

    sget v5, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    mul-int v4, v4, v5

    .line 631
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v13

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->TotalOvervoltage:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 630
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 632
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalOvervoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 635
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->hideLoading()V

    .line 636
    invoke-virtual {v0, v14}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 578
    :pswitch_3
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalOvervoltage:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 579
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalOvervoltage:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 582
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->FullVoltage:F

    cmpl-float v2, v2, v11

    if-lez v2, :cond_6

    .line 583
    sget v2, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    mul-int/lit16 v2, v2, 0x1130

    iget v5, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->TotalOvervoltagerelease:I

    invoke-direct {v0, v1, v2, v5}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->InputPram:Z

    goto :goto_2

    .line 585
    :cond_6
    sget v2, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    mul-int/lit16 v2, v2, 0xf3c

    iget v5, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->TotalOvervoltagerelease:I

    invoke-direct {v0, v1, v2, v5}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->InputPram:Z

    .line 587
    :goto_2
    iget-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->InputPram:Z

    if-eqz v2, :cond_7

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showLoading()V

    .line 590
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v4, 0x10

    div-int/lit8 v5, v1, 0xa

    invoke-static {v5}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 591
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 594
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalOvervoltage:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalOvervoltage:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalOvervoltage:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 596
    iput v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->TotalOvervoltage:I

    goto/16 :goto_d

    .line 598
    :cond_7
    iget v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->FullVoltage:F

    cmpl-float v1, v1, v11

    if-lez v1, :cond_8

    .line 599
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/Object;

    iget v5, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->TotalOvervoltagerelease:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v13

    sget v5, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    mul-int/lit16 v5, v5, 0x1130

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_3

    .line 601
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/Object;

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->TotalOvervoltagerelease:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v13

    sget v4, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    mul-int/lit16 v4, v4, 0xf3c

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 603
    :goto_3
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalOvervoltage:Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 606
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->hideLoading()V

    .line 607
    invoke-virtual {v0, v14}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 701
    :pswitch_4
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalLowpressurerelease:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 702
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalLowpressurerelease:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 703
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerLowpressure:I

    add-int/2addr v2, v7

    sget v4, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    mul-int v2, v2, v4

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->TotalLowpressure:I

    invoke-direct {v0, v1, v2, v4}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->InputPram:Z

    if-eqz v2, :cond_a

    .line 706
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showLoading()V

    .line 707
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v4, 0x13

    div-int/lit8 v5, v1, 0xa

    invoke-static {v5}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 708
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 711
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalLowpressurerelease:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalLowpressurerelease:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalLowpressurerelease:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 713
    iput v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->TotalLowpressurerelease:I

    goto/16 :goto_d

    .line 715
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/Object;

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->TotalLowpressure:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v13

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerLowpressure:I

    add-int/2addr v4, v7

    sget v5, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    mul-int v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 716
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalLowpressurerelease:Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 719
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->hideLoading()V

    .line 720
    invoke-virtual {v0, v14}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 669
    :pswitch_5
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalLowpressure:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 670
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalLowpressure:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 671
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->FullVoltage:F

    cmpl-float v2, v2, v11

    if-lez v2, :cond_c

    .line 672
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->TotalLowpressurerelease:I

    sget v4, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    mul-int/lit16 v4, v4, 0x9c4

    invoke-direct {v0, v1, v2, v4}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->InputPram:Z

    goto :goto_4

    .line 674
    :cond_c
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->TotalLowpressurerelease:I

    sget v4, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    mul-int/lit16 v4, v4, 0x7d0

    invoke-direct {v0, v1, v2, v4}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->InputPram:Z

    .line 676
    :goto_4
    iget-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->InputPram:Z

    if-eqz v2, :cond_d

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showLoading()V

    .line 678
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v4, 0x12

    div-int/lit8 v5, v1, 0xa

    invoke-static {v5}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 679
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 682
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalLowpressure:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalLowpressure:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalLowpressure:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 684
    iput v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->TotalLowpressure:I

    goto/16 :goto_d

    .line 686
    :cond_d
    iget v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->FullVoltage:F

    cmpl-float v1, v1, v11

    if-lez v1, :cond_e

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/Object;

    sget v4, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    mul-int/lit16 v4, v4, 0x9c4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v13

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->TotalLowpressurerelease:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_5

    .line 689
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/Object;

    sget v4, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    mul-int/lit16 v4, v4, 0x7d0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v13

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->TotalLowpressurerelease:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 691
    :goto_5
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalLowpressure:Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 694
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->hideLoading()V

    .line 695
    invoke-virtual {v0, v14}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 643
    :pswitch_6
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalDelayedvoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 644
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalDelayedvoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 646
    invoke-direct {v0, v1, v2, v15}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->InputPram:Z

    if-eqz v2, :cond_10

    .line 648
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showLoading()V

    .line 650
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v4, 0x31

    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 651
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 654
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalDelayedvoltagerelease:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalDelayedvoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalDelayedvoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 656
    iput v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->TotalOverDelayed:I

    goto/16 :goto_d

    :cond_10
    const v1, 0x7f0d018a

    .line 658
    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 659
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalDelayedvoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 662
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->hideLoading()V

    .line 663
    invoke-virtual {v0, v14}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 726
    :pswitch_7
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalDelayedvoltage:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 727
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalDelayedvoltage:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 728
    invoke-direct {v0, v1, v2, v15}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->InputPram:Z

    if-eqz v2, :cond_12

    .line 730
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showLoading()V

    .line 731
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v4, 0x30

    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 732
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 735
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalDelayedvoltage:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalDelayedvoltage:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalDelayedvoltage:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 737
    iput v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->TotalLowpresDelayed:I

    goto/16 :goto_d

    :cond_12
    const v1, 0x7f0d018a

    .line 739
    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 740
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalDelayedvoltage:Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 743
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->hideLoading()V

    .line 744
    invoke-virtual {v0, v14}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 452
    :pswitch_8
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalDelayedrelease:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 453
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalDelayedrelease:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 455
    invoke-direct {v0, v1, v2, v15}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->InputPram:Z

    if-eqz v2, :cond_14

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showLoading()V

    .line 458
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v4, 0x33

    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 459
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 462
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalDelayedrelease:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalDelayedrelease:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalDelayedrelease:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iput v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerOverDelayed:I

    goto/16 :goto_d

    :cond_14
    const v1, 0x7f0d018a

    .line 466
    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 467
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalDelayedrelease:Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 470
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->hideLoading()V

    .line 471
    invoke-virtual {v0, v14}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 551
    :pswitch_9
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalDelayedpressure:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 552
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalDelayedpressure:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 554
    invoke-direct {v0, v1, v2, v15}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->InputPram:Z

    if-eqz v2, :cond_16

    .line 556
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showLoading()V

    .line 558
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v4

    const/16 v5, 0x32

    invoke-virtual {v2, v5, v3, v4}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 559
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 562
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalDelayedpressure:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalDelayedpressure:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalDelayedpressure:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 564
    iput v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerLowpresDelayed:I

    goto/16 :goto_d

    :cond_16
    const v1, 0x7f0d018a

    .line 566
    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 567
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edTotalDelayedpressure:Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 570
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->hideLoading()V

    .line 571
    invoke-virtual {v0, v14}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 419
    :pswitch_a
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edMonomerOvervoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 420
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edMonomerOvervoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 422
    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerOvervoltage:I

    add-int/lit8 v5, v4, -0x32

    add-int/lit16 v4, v4, -0xc8

    invoke-direct {v0, v1, v5, v4}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->IsInputProtect(III)Z

    move-result v4

    iput-boolean v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->InputPram:Z

    if-eqz v4, :cond_18

    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showLoading()V

    .line 426
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v4, 0x15

    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 427
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 430
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_MonomerOvervoltagerelease:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edMonomerOvervoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edMonomerOvervoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iput v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerOvervoltagerelease:I

    goto/16 :goto_d

    .line 434
    :cond_18
    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerOvervoltage:I

    if-le v1, v4, :cond_19

    const v1, 0x7f0d0109

    .line 435
    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_6

    :cond_19
    add-int/lit16 v4, v4, -0xc8

    if-ge v1, v4, :cond_1a

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0d0189

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerOvervoltage:I

    const/16 v6, 0x32

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerOvervoltage:I

    add-int/lit16 v2, v2, -0xc8

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v13

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 440
    :cond_1a
    :goto_6
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edMonomerOvervoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 445
    :cond_1b
    invoke-virtual {v0, v14}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 378
    :pswitch_b
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edMonomerOvervoltage:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 379
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edMonomerOvervoltage:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 381
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->FullVoltage:F

    cmpl-float v2, v2, v11

    if-lez v2, :cond_1c

    const/16 v2, 0x10fe

    .line 382
    iget v5, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerOvervoltagerelease:I

    invoke-direct {v0, v1, v2, v5}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->InputPram:Z

    goto :goto_7

    .line 384
    :cond_1c
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerOvervoltagerelease:I

    invoke-direct {v0, v1, v9, v2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->InputPram:Z

    .line 386
    :goto_7
    iget-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->InputPram:Z

    if-eqz v2, :cond_1d

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showLoading()V

    .line 388
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v4, 0x14

    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 389
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 392
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_MonomerOvervoltage:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edMonomerOvervoltage:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edMonomerOvervoltage:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iput v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerOvervoltage:I

    goto/16 :goto_d

    .line 396
    :cond_1d
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->FullVoltage:F

    cmpl-float v2, v2, v11

    if-lez v2, :cond_1f

    if-le v1, v4, :cond_1e

    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/Object;

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerOvervoltagerelease:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v13

    const-string v4, "4400"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_8

    .line 399
    :cond_1e
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerOvervoltagerelease:I

    if-ge v1, v2, :cond_21

    const v1, 0x7f0d0108

    .line 400
    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_8

    :cond_1f
    if-le v1, v9, :cond_20

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/Object;

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerOvervoltagerelease:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v13

    const-string v4, "3900"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_8

    .line 406
    :cond_20
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerOvervoltagerelease:I

    if-ge v1, v2, :cond_21

    const v1, 0x7f0d0108

    .line 407
    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 410
    :cond_21
    :goto_8
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edMonomerOvervoltage:Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 414
    :cond_22
    invoke-virtual {v0, v14}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 513
    :pswitch_c
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edMonomerLowpressurerelease:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 514
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edMonomerLowpressurerelease:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 516
    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->FullVoltage:F

    cmpl-float v4, v4, v11

    if-lez v4, :cond_23

    goto :goto_9

    :cond_23
    const/16 v7, 0x3e8

    .line 519
    :goto_9
    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerLowpressure:I

    add-int v5, v4, v7

    add-int/lit8 v4, v4, 0x64

    invoke-direct {v0, v1, v5, v4}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->IsInputProtect(III)Z

    move-result v4

    iput-boolean v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->InputPram:Z

    if-eqz v4, :cond_24

    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showLoading()V

    .line 522
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v4, 0x17

    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 523
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 526
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_MonomerLowpressurerelease:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edMonomerLowpressurerelease:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edMonomerLowpressurerelease:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iput v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerLowpressurerelease:I

    goto/16 :goto_d

    .line 531
    :cond_24
    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerLowpressure:I

    add-int v5, v4, v7

    if-le v1, v5, :cond_25

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0d0189

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerLowpressure:I

    add-int/lit8 v5, v5, 0x64

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerLowpressure:I

    add-int/2addr v2, v7

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v13

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_a

    :cond_25
    if-ge v1, v4, :cond_26

    const v1, 0x7f0d012b

    .line 534
    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 537
    :cond_26
    :goto_a
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edMonomerOvervoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 542
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->hideLoading()V

    .line 543
    invoke-virtual {v0, v14}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 479
    :pswitch_d
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edMonomerLowpressure:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 480
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edMonomerLowpressure:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 481
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->FullVoltage:F

    cmpl-float v2, v2, v11

    if-lez v2, :cond_28

    .line 482
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerLowpressurerelease:I

    invoke-direct {v0, v1, v2, v5}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->InputPram:Z

    goto :goto_b

    .line 484
    :cond_28
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerLowpressurerelease:I

    invoke-direct {v0, v1, v2, v6}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->InputPram:Z

    .line 486
    :goto_b
    iget-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->InputPram:Z

    if-eqz v2, :cond_29

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showLoading()V

    .line 489
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->paramSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v4, 0x16

    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 490
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 493
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_MonomerLowpressure:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edMonomerLowpressure:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edMonomerLowpressure:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iput v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerLowpressure:I

    goto :goto_d

    .line 498
    :cond_29
    iget v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->FullVoltage:F

    cmpl-float v1, v1, v11

    if-lez v1, :cond_2a

    .line 499
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/Object;

    const-string v4, "2500"

    aput-object v4, v2, v13

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerLowpressurerelease:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_c

    .line 501
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/Object;

    const-string v4, "2000"

    aput-object v4, v2, v13

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->MonomerLowpressurerelease:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 503
    :goto_c
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->edMonomerLowpressure:Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 506
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->hideLoading()V

    .line 507
    invoke-virtual {v0, v14}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showMsg(Ljava/lang/String;)V

    goto :goto_d

    :pswitch_e
    const v1, 0x7f0d01a5

    .line 791
    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->listUvpDelay:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->ShowDialog(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_d

    :pswitch_f
    const v1, 0x7f0d0097

    .line 788
    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->listOvpDelay:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->ShowDialog(Ljava/lang/String;Ljava/util/List;)V

    :goto_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f080116
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f080282
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f08028d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7f080297
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .line 1047
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onDestroy()V

    .line 1048
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->timeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1049
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onEventBusMsg(Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1065
    :cond_0
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result p1

    const/16 v0, 0x2774

    if-ne p1, v0, :cond_1

    .line 1066
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->initData()V

    .line 1067
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->sendFactoryCmd()V

    .line 1068
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tvTopTitleR:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public toProtectJson()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1178
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1179
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_MonomerOvervoltage:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "singleOvervoltageProtect"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1180
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_MonomerOvervoltagerelease:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "singleOverpressureRecovery"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1181
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalDelayedrelease:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "singleOverpressureDelay"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1182
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_MonomerLowpressure:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "singleLowvoltageProtect"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1183
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_MonomerLowpressurerelease:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "singleLowvoltageRecover"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1184
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalDelayedpressure:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "singleLowvoltageDelayed"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1185
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalOvervoltage:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "allOvervoltageProtect"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1186
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalOvervoltagerelease:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "allOverpressureRecovery"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1187
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalDelayedvoltagerelease:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "allOverpressureDelay"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1188
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalLowpressure:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "allLowvoltageProtect"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1189
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalLowpressurerelease:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "allLowvoltageRecover"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1190
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->tv_TotalDelayedvoltage:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "allLowvoltageDelay"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object v0
.end method

.method protected useEventBus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
