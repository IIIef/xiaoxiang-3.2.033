.class public Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "ProtectParamsOldActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.activity.ProtectParamsOldActivity"


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

.field private factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

.field private factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private flTopBack:Landroid/widget/FrameLayout;

.field private fullChargeEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

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

.field private mCellOVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mCellOVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mCellOverVoltage:F

.field private mCellOverVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mCellUVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mCellUVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mCellUnderVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mCurrentMode:Ljava/lang/String;

.field private mFullChargeVolCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mHardCellOVDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;

.field private mPackNumCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mPackOVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mPackOVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mPackOverVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mPackUVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mPackUVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mPackUnderVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mhardwareOverVoltage:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mhardwareUnderVoltage:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

.field private paramProcess:I

.field private paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private protecionDelayEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private protecionVoltageEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private tenMill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch4;

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
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 111
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->WriteLine:[B

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->InputPram:Z

    const/16 v0, 0xb

    .line 133
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->paramProcess:I

    .line 160
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch4;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch4;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tenMill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch4;

    .line 161
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    .line 162
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    const-string v0, ""

    .line 297
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCurrentMode:Ljava/lang/String;

    const/4 v0, 0x0

    .line 298
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCellOverVoltage:F

    .line 754
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$3;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->timeHandler:Landroid/os/Handler;

    .line 1014
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->listOvpDelay:Ljava/util/List;

    .line 1015
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->listUvpDelay:Ljava/util/List;

    .line 1141
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$6;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$6;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 1161
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$7;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$7;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 1185
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$8;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$8;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 1321
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$9;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$9;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 1359
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$10;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$10;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

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

    .line 1018
    new-instance v0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 1019
    new-instance p2, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;

    invoke-direct {p2, p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->setBottomItemListener(Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;)V

    .line 1073
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->show()V

    return-void
.end method

.method private UpdateProtect()V
    .locals 3

    .line 1376
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "deivceVoltageParam"

    .line 1378
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->toProtectJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1379
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->syncBatteryInformation(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1381
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$002(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;F)F
    .locals 0

    .line 56
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->FullVoltage:F

    return p1
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)F
    .locals 0

    .line 56
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCellOverVoltage:F

    return p0
.end method

.method static synthetic access$1000(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_MonomerLowpressure:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;F)F
    .locals 0

    .line 56
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCellOverVoltage:F

    return p1
.end method

.method static synthetic access$1102(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerLowpressurerelease:I

    return p1
.end method

.method static synthetic access$1200(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_MonomerLowpressurerelease:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->TotalOvervoltage:I

    return p1
.end method

.method static synthetic access$1400(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalOvervoltage:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->TotalOvervoltagerelease:I

    return p1
.end method

.method static synthetic access$1600(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalOvervoltagerelease:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalDelayedvoltagerelease:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalDelayedvoltage:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->TotalLowpressure:I

    return p1
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvTopTitleR:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalLowpressure:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->TotalLowpressurerelease:I

    return p1
.end method

.method static synthetic access$2200(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalLowpressurerelease:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_hardware_over:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_hardware_under:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->batteryNum:I

    return p0
.end method

.method static synthetic access$2502(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->batteryNum:I

    return p1
.end method

.method static synthetic access$2600(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mHardCellOVDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mHardCellOVDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->listOvpPos:I

    return p0
.end method

.method static synthetic access$2702(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->listOvpPos:I

    return p1
.end method

.method static synthetic access$2800(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->listUvpPos:I

    return p0
.end method

.method static synthetic access$2802(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->listUvpPos:I

    return p1
.end method

.method static synthetic access$2900(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->listOvpDelay:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->listUvpDelay:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerOvervoltage:I

    return p1
.end method

.method static synthetic access$3100(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_ovp_delay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_uvp_delay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edMonomerOvervoltage:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCellOverVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$3402(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCellOverVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edMonomerOvervoltagerelease:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCellOVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalDelayedrelease:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCellOVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_MonomerOvervoltage:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edMonomerLowpressure:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCellUnderVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edMonomerLowpressurerelease:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCellUVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalDelayedpressure:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCellUVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalOvervoltage:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mPackOverVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalOvervoltagerelease:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mPackOVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalDelayedvoltagerelease:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$502(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerOvervoltagerelease:I

    return p1
.end method

.method static synthetic access$5100(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mPackOVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalLowpressure:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mPackUnderVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalLowpressurerelease:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mPackUVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalDelayedvoltage:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mPackUVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mhardwareOverVoltage:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mhardwareUnderVoltage:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_MonomerOvervoltagerelease:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getOldParams()V

    return-void
.end method

.method static synthetic access$6300()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->checkProcess()V

    return-void
.end method

.method static synthetic access$6500(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->UpdateProtect()V

    return-void
.end method

.method static synthetic access$6602(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCurrentMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalDelayedpressure:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalDelayedrelease:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$902(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerLowpressure:I

    return p1
.end method

.method private checkProcess()V
    .locals 1

    .line 1134
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->paramProcess:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->paramProcess:I

    if-nez v0, :cond_0

    .line 1136
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->UpdateProtect()V

    .line 1137
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->hideLoading()V

    :cond_0
    return-void
.end method

.method private getOldParams()V
    .locals 8

    .line 1206
    new-instance v6, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1207
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00d6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    const/16 v1, 0x2f

    const/4 v4, 0x0

    const-string v5, ""

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mPackNumCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1209
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v6, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 1210
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mPackNumCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 1212
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const/16 v3, 0x12

    const-string v4, "\u6ee1\u5145\u7535\u538b"

    const-string v7, "mV"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mFullChargeVolCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1214
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 1215
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mFullChargeVolCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 1217
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1218
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00d1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const/16 v3, 0x24

    const-string v7, "mV"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCellOverVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1220
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 1221
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCellOverVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 1223
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1224
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00d2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const/16 v3, 0x25

    const-string v7, "mV"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCellOVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1226
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 1227
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCellOVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 1229
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1230
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00d0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x3d

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "S"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCellOVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1232
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 1234
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1235
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00d4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const/16 v3, 0x26

    const-string v7, "mV"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCellUnderVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1237
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 1238
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCellUnderVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 1240
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1241
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00d5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const/16 v3, 0x27

    const-string v7, "mV"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCellUVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1243
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 1244
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCellUVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 1247
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1248
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00d3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoCmdValueFormat;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCellOVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-direct {v5, v1}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoCmdValueFormat;-><init>(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V

    const/16 v3, 0x3d

    const/4 v6, 0x0

    const-string v7, "S"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCellUVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1251
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 1252
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCellUVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 1255
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1256
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0124

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tenMill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch4;

    const/16 v3, 0x20

    const-string v7, "mV"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mPackOverVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1258
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 1259
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mPackOverVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 1262
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1263
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0125

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tenMill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch4;

    const/16 v3, 0x21

    const-string v7, "mV"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mPackOVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1265
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 1266
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mPackOVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 1268
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1269
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0123

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x3c

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "S"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mPackOVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1271
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 1274
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1275
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0127

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tenMill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch4;

    const/16 v3, 0x22

    const-string v7, "mV"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mPackUnderVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1277
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 1278
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mPackUnderVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 1280
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1281
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0128

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tenMill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch4;

    const/16 v3, 0x23

    const-string v7, "mV"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mPackUVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1283
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 1284
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mPackUVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 1286
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1287
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0126

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoCmdValueFormat;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mPackOVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-direct {v5, v1}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoCmdValueFormat;-><init>(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V

    const/16 v3, 0x3c

    const/4 v6, 0x0

    const-string v7, "S"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mPackUVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1289
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 1290
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mPackUVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 1293
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const v1, 0x7f0d0098

    .line 1294
    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const/16 v3, 0x36

    const-string v7, "mV"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mhardwareOverVoltage:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1296
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 1297
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mhardwareOverVoltage:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 1299
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const v1, 0x7f0d01a6

    .line 1300
    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const/16 v3, 0x37

    const-string v7, "mV"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mhardwareUnderVoltage:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1302
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 1303
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mhardwareUnderVoltage:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 1307
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;

    const/16 v1, 0x39

    const-string v2, "\u786c\u4ef6\u8fc7\u6b20\u538b\u4fdd\u62a4\u5ef6\u65f6"

    const/4 v3, 0x0

    const-string v4, "S"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mHardCellOVDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;

    .line 1311
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 1312
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mHardCellOVDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 1316
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCellOVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCellUVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setRelativeEntity(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V

    .line 1317
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mPackOVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mPackUVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setRelativeEntity(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V

    return-void
.end method

.method private sendFactoryCmd()V
    .locals 2

    .line 1089
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;-><init>()V

    .line 1090
    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$5;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$5;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)V

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 1103
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

    .line 725
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->listOvpDelay:Ljava/util/List;

    new-instance v1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    const/4 v2, 0x0

    const-string v3, "1"

    const-string v4, "0"

    invoke-direct {v1, v2, v3, v2, v4}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->listOvpDelay:Ljava/util/List;

    new-instance v1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    const-string v5, "2"

    const/4 v6, 0x1

    invoke-direct {v1, v2, v5, v6, v3}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->listOvpDelay:Ljava/util/List;

    new-instance v1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    const-string v7, "4"

    const/4 v8, 0x2

    invoke-direct {v1, v2, v7, v8, v5}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->listOvpDelay:Ljava/util/List;

    new-instance v1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    const-string v9, "8"

    const/4 v10, 0x3

    const-string v11, "3"

    invoke-direct {v1, v2, v9, v10, v11}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->listUvpDelay:Ljava/util/List;

    new-instance v1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    invoke-direct {v1, v2, v3, v2, v4}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->listUvpDelay:Ljava/util/List;

    new-instance v1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    invoke-direct {v1, v2, v7, v6, v3}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->listUvpDelay:Ljava/util/List;

    new-instance v1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    invoke-direct {v1, v2, v9, v8, v5}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->listUvpDelay:Ljava/util/List;

    new-instance v1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    const-string v3, "16"

    invoke-direct {v1, v2, v3, v10, v11}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 735
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->QueueTag:Ljava/lang/String;

    .line 736
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showLoading()V

    .line 738
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 7

    const p1, 0x7f0800c3

    .line 171
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->flTopBack:Landroid/widget/FrameLayout;

    const p1, 0x7f0800f9

    .line 172
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->ivTopBack:Landroid/widget/ImageView;

    const p1, 0x7f0802a0

    .line 173
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvTopTitle:Landroid/widget/TextView;

    const p1, 0x7f0802a2

    .line 174
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvTopTitleR:Landroid/widget/TextView;

    .line 175
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->ivTopBack:Landroid/widget/ImageView;

    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 176
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->flTopBack:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvTopTitleR:Landroid/widget/TextView;

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 177
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->flTopBack:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0801f7

    .line 185
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_MonomerOvervoltage:Landroid/widget/TextView;

    const p1, 0x7f0801f8

    .line 186
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_MonomerOvervoltagerelease:Landroid/widget/TextView;

    const p1, 0x7f08020a

    .line 187
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalDelayedrelease:Landroid/widget/TextView;

    const p1, 0x7f0801f5

    .line 188
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_MonomerLowpressure:Landroid/widget/TextView;

    const p1, 0x7f0801f6

    .line 189
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_MonomerLowpressurerelease:Landroid/widget/TextView;

    const p1, 0x7f080209

    .line 190
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalDelayedpressure:Landroid/widget/TextView;

    const p1, 0x7f08020f

    .line 191
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalOvervoltage:Landroid/widget/TextView;

    const p1, 0x7f080210

    .line 192
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalOvervoltagerelease:Landroid/widget/TextView;

    const p1, 0x7f08020c

    .line 193
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalDelayedvoltagerelease:Landroid/widget/TextView;

    const p1, 0x7f08020d

    .line 194
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalLowpressure:Landroid/widget/TextView;

    const p1, 0x7f08020e

    .line 195
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalLowpressurerelease:Landroid/widget/TextView;

    const p1, 0x7f08020b

    .line 196
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalDelayedvoltage:Landroid/widget/TextView;

    const p1, 0x7f080284

    .line 197
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvSetMonomerOvervoltage:Landroid/widget/TextView;

    const v0, 0x7f080091

    .line 198
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edMonomerOvervoltage:Landroid/widget/EditText;

    .line 200
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edMonomerOvervoltage:Landroid/widget/EditText;

    const v0, 0x7f080092

    .line 201
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edMonomerOvervoltagerelease:Landroid/widget/EditText;

    const v0, 0x7f08009b

    .line 202
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalDelayedrelease:Landroid/widget/EditText;

    const v0, 0x7f08008f

    .line 203
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edMonomerLowpressure:Landroid/widget/EditText;

    const v0, 0x7f080090

    .line 204
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edMonomerLowpressurerelease:Landroid/widget/EditText;

    const v0, 0x7f08009a

    .line 205
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalDelayedpressure:Landroid/widget/EditText;

    const v0, 0x7f0800a0

    .line 206
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalOvervoltage:Landroid/widget/EditText;

    const v0, 0x7f0800a1

    .line 207
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalOvervoltagerelease:Landroid/widget/EditText;

    const v0, 0x7f08009d

    .line 208
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalDelayedvoltagerelease:Landroid/widget/EditText;

    const v0, 0x7f08009e

    .line 209
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalLowpressure:Landroid/widget/EditText;

    const v0, 0x7f08009f

    .line 210
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalLowpressurerelease:Landroid/widget/EditText;

    const v0, 0x7f08009c

    .line 211
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalDelayedvoltage:Landroid/widget/EditText;

    .line 214
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvSetMonomerOvervoltage:Landroid/widget/TextView;

    const p1, 0x7f080285

    .line 215
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvSetMonomerOvervoltagerelease:Landroid/widget/TextView;

    const p1, 0x7f08028e

    .line 216
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvSetTotalDelayedrelease:Landroid/widget/TextView;

    const p1, 0x7f080282

    .line 217
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvSetMonomerLowpressure:Landroid/widget/TextView;

    const p1, 0x7f080283

    .line 218
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvSetMonomerLowpressurerelease:Landroid/widget/TextView;

    const p1, 0x7f08028d

    .line 219
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvSetTotalDelayedpressure:Landroid/widget/TextView;

    const p1, 0x7f080293

    .line 220
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvSetTotalOvervoltage:Landroid/widget/TextView;

    const p1, 0x7f080294

    .line 221
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvSetTotalOvervoltagerelease:Landroid/widget/TextView;

    const p1, 0x7f080290

    .line 222
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvSetTotalDelayedvoltagerelease:Landroid/widget/TextView;

    const p1, 0x7f080291

    .line 223
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvSetTotalLowpressure:Landroid/widget/TextView;

    const p1, 0x7f080292

    .line 224
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvSetTotalLowpressurerelease:Landroid/widget/TextView;

    const p1, 0x7f08028f

    .line 225
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvSetTotalDelayedvoltage:Landroid/widget/TextView;

    .line 228
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvSetMonomerOvervoltage:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvSetMonomerOvervoltagerelease:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvSetTotalDelayedrelease:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvSetMonomerLowpressure:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvSetMonomerLowpressurerelease:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvSetTotalDelayedpressure:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvSetTotalOvervoltage:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvSetTotalOvervoltagerelease:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvSetTotalDelayedvoltagerelease:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvSetTotalLowpressure:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvSetTotalLowpressurerelease:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvSetTotalDelayedvoltage:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    .line 243
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 245
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    .line 246
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setInit()V

    .line 247
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 248
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvTopTitleR:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvTopTitleR:Landroid/widget/TextView;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$$ExternalSyntheticLambda0;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080233

    .line 284
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_hardware_over:Landroid/widget/TextView;

    const p1, 0x7f080234

    .line 285
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_hardware_under:Landroid/widget/TextView;

    const p1, 0x7f080297

    .line 286
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080298

    .line 287
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08025c

    .line 288
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_ovp_delay:Landroid/widget/TextView;

    const p1, 0x7f0802a4

    .line 289
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_uvp_delay:Landroid/widget/TextView;

    const p1, 0x7f080116

    .line 290
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080117

    .line 291
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08010f

    .line 292
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f080110

    .line 293
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$initView$0$com-jiabaida-little_elephant-ui-activity-ProtectParamsOldActivity(Landroid/view/View;)V
    .locals 2

    const p1, 0x7f0d0047

    .line 250
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 251
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCellOverVoltage:F

    const/high16 v1, 0x457a0000    # 4000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const p1, 0x7f0d0046

    .line 252
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;Ljava/lang/String;)V

    invoke-static {v0, p1, v1}, Lcom/jiabaida/little_elephant/view/DialogHelper;->showDialog(Landroid/content/Context;Ljava/lang/String;Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    .line 305
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string v2, "~"

    const/16 v4, 0x9c4

    const/16 v5, 0x7d0

    const/16 v6, 0x1130

    const/16 v7, 0xf3c

    const/16 v8, 0x1f4

    const/16 v9, 0x3e8

    const/high16 v10, 0x457a0000    # 4000.0f

    const v11, 0x7f0d0188

    const v12, 0x7f0d016e

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x2

    const-string v3, ""

    packed-switch v1, :pswitch_data_1

    const/16 v2, 0xff

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    goto/16 :goto_d

    :pswitch_0
    const v1, 0x7f0800a5

    .line 693
    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 694
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 695
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 696
    iget v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerLowpressure:I

    add-int/lit16 v4, v3, 0x3e8

    sub-int/2addr v3, v9

    invoke-direct {v0, v2, v4, v3}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->InputPram:Z

    if-eqz v2, :cond_0

    .line 698
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showLoading()V

    .line 699
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v3, 0x7d0e

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 700
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto :goto_0

    .line 702
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v15, [Ljava/lang/Object;

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerLowpressure:I

    sub-int/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v14

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerLowpressure:I

    add-int/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v13

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 705
    :goto_0
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_hardware_under:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 707
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->hideLoading()V

    .line 708
    invoke-virtual {v0, v12}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    :pswitch_1
    const v1, 0x7f0800a4

    .line 674
    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 675
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 677
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 678
    iget v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerOvervoltage:I

    add-int/lit16 v4, v3, 0x3e8

    sub-int/2addr v3, v9

    invoke-direct {v0, v2, v4, v3}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->InputPram:Z

    if-eqz v2, :cond_2

    .line 680
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showLoading()V

    .line 681
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v3, 0x7d0d

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 682
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto :goto_1

    .line 684
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v15, [Ljava/lang/Object;

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerOvervoltage:I

    sub-int/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v14

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerOvervoltage:I

    add-int/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v13

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 686
    :goto_1
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_hardware_over:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 688
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->hideLoading()V

    .line 689
    invoke-virtual {v0, v12}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 545
    :pswitch_2
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalOvervoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 546
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalOvervoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 548
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->TotalOvervoltage:I

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerOvervoltage:I

    add-int/lit16 v4, v4, -0x190

    sget v5, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    mul-int v4, v4, v5

    invoke-direct {v0, v1, v2, v4}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->InputPram:Z

    if-eqz v2, :cond_4

    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showLoading()V

    .line 552
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v3, 0x7d08

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 553
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 555
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalOvervoltagerelease:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalOvervoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iput v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->TotalOvervoltagerelease:I

    goto/16 :goto_d

    .line 559
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/Object;

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerOvervoltage:I

    add-int/lit16 v4, v4, -0x190

    sget v5, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    mul-int v4, v4, v5

    .line 560
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v14

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->TotalOvervoltage:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v13

    .line 559
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 561
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalOvervoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 564
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->hideLoading()V

    .line 565
    invoke-virtual {v0, v12}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 509
    :pswitch_3
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalOvervoltage:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 510
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalOvervoltage:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 513
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->FullVoltage:F

    cmpl-float v2, v2, v10

    if-lez v2, :cond_6

    .line 514
    sget v2, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    mul-int/lit16 v2, v2, 0x1130

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->TotalOvervoltagerelease:I

    invoke-direct {v0, v1, v2, v4}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->InputPram:Z

    goto :goto_2

    .line 516
    :cond_6
    sget v2, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    mul-int/lit16 v2, v2, 0xf3c

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->TotalOvervoltagerelease:I

    invoke-direct {v0, v1, v2, v4}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->InputPram:Z

    .line 518
    :goto_2
    iget-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->InputPram:Z

    if-eqz v2, :cond_7

    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showLoading()V

    .line 521
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v3, 0x7d07

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 522
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 524
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalOvervoltage:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalOvervoltage:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iput v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->TotalOvervoltage:I

    goto/16 :goto_d

    .line 528
    :cond_7
    iget v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->FullVoltage:F

    cmpl-float v1, v1, v10

    if-lez v1, :cond_8

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/Object;

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->TotalOvervoltagerelease:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v14

    sget v4, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    mul-int/lit16 v4, v4, 0x1130

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v13

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_3

    .line 531
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/Object;

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->TotalOvervoltagerelease:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v14

    sget v4, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    mul-int/lit16 v4, v4, 0xf3c

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v13

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 533
    :goto_3
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalOvervoltage:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 536
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->hideLoading()V

    .line 537
    invoke-virtual {v0, v12}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 629
    :pswitch_4
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalLowpressurerelease:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 630
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalLowpressurerelease:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 631
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerLowpressure:I

    add-int/2addr v2, v8

    sget v4, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    mul-int v2, v2, v4

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->TotalLowpressure:I

    invoke-direct {v0, v1, v2, v4}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->InputPram:Z

    if-eqz v2, :cond_a

    .line 634
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showLoading()V

    .line 635
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v3, 0x7d0b

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 637
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 639
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalLowpressurerelease:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalLowpressurerelease:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    iput v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->TotalLowpressurerelease:I

    goto/16 :goto_d

    .line 643
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/Object;

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->TotalLowpressure:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v14

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerLowpressure:I

    add-int/2addr v4, v8

    sget v5, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    mul-int v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v13

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 644
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalLowpressurerelease:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 647
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->hideLoading()V

    .line 648
    invoke-virtual {v0, v12}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 597
    :pswitch_5
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalLowpressure:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 598
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalLowpressure:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 599
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->FullVoltage:F

    cmpl-float v2, v2, v10

    if-lez v2, :cond_c

    .line 600
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->TotalLowpressurerelease:I

    sget v6, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    mul-int/lit16 v6, v6, 0xfa

    invoke-direct {v0, v1, v2, v6}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->InputPram:Z

    goto :goto_4

    .line 602
    :cond_c
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->TotalLowpressurerelease:I

    sget v6, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    mul-int/lit16 v6, v6, 0xc8

    invoke-direct {v0, v1, v2, v6}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->InputPram:Z

    .line 604
    :goto_4
    iget-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->InputPram:Z

    if-eqz v2, :cond_d

    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showLoading()V

    .line 606
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v3, 0x7d0a

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 608
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 610
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalLowpressure:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalLowpressure:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    iput v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->TotalLowpressure:I

    goto/16 :goto_d

    .line 614
    :cond_d
    iget v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->FullVoltage:F

    cmpl-float v1, v1, v10

    if-lez v1, :cond_e

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/Object;

    sget v5, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    mul-int/lit16 v5, v5, 0x9c4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v14

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->TotalLowpressurerelease:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v13

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_5

    .line 617
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/Object;

    sget v4, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    mul-int/lit16 v4, v4, 0x7d0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v14

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->TotalLowpressurerelease:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v13

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 619
    :goto_5
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalLowpressure:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 622
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->hideLoading()V

    .line 623
    invoke-virtual {v0, v12}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 572
    :pswitch_6
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalDelayedvoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 573
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalDelayedvoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 575
    invoke-direct {v0, v1, v2, v15}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->InputPram:Z

    if-eqz v2, :cond_10

    .line 577
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showLoading()V

    .line 579
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v3, 0x7d09

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 580
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 582
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalDelayedvoltagerelease:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalDelayedvoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    iput v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->TotalOverDelayed:I

    goto/16 :goto_d

    :cond_10
    const v1, 0x7f0d018a

    .line 586
    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 587
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalDelayedvoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 590
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->hideLoading()V

    .line 591
    invoke-virtual {v0, v12}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 654
    :pswitch_7
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalDelayedvoltage:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 655
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalDelayedvoltage:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 656
    invoke-direct {v0, v1, v2, v15}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->InputPram:Z

    if-eqz v2, :cond_12

    .line 658
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showLoading()V

    .line 659
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v3, 0x7d0c

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 660
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 661
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalDelayedvoltage:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalDelayedvoltage:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    iput v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->TotalLowpresDelayed:I

    goto/16 :goto_d

    :cond_12
    const v1, 0x7f0d018a

    .line 665
    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 666
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalDelayedvoltage:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 669
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->hideLoading()V

    .line 670
    invoke-virtual {v0, v12}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 381
    :pswitch_8
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalDelayedrelease:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 382
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalDelayedrelease:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 384
    invoke-direct {v0, v1, v2, v15}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->InputPram:Z

    if-eqz v2, :cond_14

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showLoading()V

    .line 387
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v3, 0x7d03

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 389
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 391
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalDelayedrelease:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalDelayedrelease:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iput v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerOverDelayed:I

    goto/16 :goto_d

    :cond_14
    const v1, 0x7f0d018a

    .line 395
    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 396
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalDelayedrelease:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 399
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->hideLoading()V

    .line 400
    invoke-virtual {v0, v12}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 484
    :pswitch_9
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalDelayedpressure:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 485
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalDelayedpressure:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 487
    invoke-direct {v0, v1, v2, v15}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->InputPram:Z

    if-eqz v2, :cond_16

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showLoading()V

    .line 490
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v3, 0x7d06

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 491
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 493
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalDelayedpressure:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalDelayedpressure:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iput v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerLowpresDelayed:I

    goto/16 :goto_d

    :cond_16
    const v1, 0x7f0d018a

    .line 497
    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 498
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edTotalDelayedpressure:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 501
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->hideLoading()V

    .line 502
    invoke-virtual {v0, v12}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 348
    :pswitch_a
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edMonomerOvervoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 349
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edMonomerOvervoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 351
    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerOvervoltage:I

    add-int/lit8 v5, v4, -0x64

    add-int/lit16 v4, v4, -0x190

    invoke-direct {v0, v1, v5, v4}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->IsInputProtect(III)Z

    move-result v4

    iput-boolean v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->InputPram:Z

    if-eqz v4, :cond_18

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showLoading()V

    .line 355
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v3, 0x7d02

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 356
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 358
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_MonomerOvervoltagerelease:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edMonomerOvervoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iput v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerOvervoltagerelease:I

    goto/16 :goto_d

    .line 362
    :cond_18
    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerOvervoltage:I

    if-le v1, v4, :cond_19

    const v1, 0x7f0d0109

    .line 363
    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_6

    :cond_19
    add-int/lit16 v4, v4, -0x190

    if-ge v1, v4, :cond_1a

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0d0189

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v13, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerOvervoltage:I

    add-int/lit8 v6, v6, -0x64

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerOvervoltage:I

    add-int/lit16 v2, v2, -0x190

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v14

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_6

    .line 367
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/Object;

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerOvervoltage:I

    add-int/lit16 v4, v4, -0x190

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v14

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerOvervoltage:I

    add-int/lit8 v4, v4, -0x64

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v13

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 369
    :goto_6
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edMonomerOvervoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 374
    :cond_1b
    invoke-virtual {v0, v12}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 309
    :pswitch_b
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edMonomerOvervoltage:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 310
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edMonomerOvervoltage:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 311
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->FullVoltage:F

    cmpl-float v2, v2, v10

    if-lez v2, :cond_1c

    const/16 v2, 0x10fe

    .line 312
    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerOvervoltagerelease:I

    invoke-direct {v0, v1, v2, v4}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->InputPram:Z

    goto :goto_7

    .line 314
    :cond_1c
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerOvervoltagerelease:I

    invoke-direct {v0, v1, v7, v2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->InputPram:Z

    .line 316
    :goto_7
    iget-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->InputPram:Z

    if-eqz v2, :cond_1d

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showLoading()V

    .line 318
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v3, 0x7d01

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 319
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 320
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_MonomerOvervoltage:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edMonomerOvervoltage:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iput v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerOvervoltage:I

    goto/16 :goto_d

    .line 323
    :cond_1d
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->FullVoltage:F

    const v4, 0x7f0d0108

    cmpl-float v2, v2, v10

    if-lez v2, :cond_1f

    if-le v1, v6, :cond_1e

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/Object;

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerOvervoltagerelease:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v14

    const-string v4, "4400"

    aput-object v4, v2, v13

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_8

    .line 326
    :cond_1e
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerOvervoltagerelease:I

    if-ge v1, v2, :cond_21

    .line 327
    invoke-virtual {v0, v4}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_8

    :cond_1f
    if-le v1, v7, :cond_20

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/Object;

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerOvervoltagerelease:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v14

    const-string v4, "3900"

    aput-object v4, v2, v13

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_8

    .line 333
    :cond_20
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerOvervoltagerelease:I

    if-ge v1, v2, :cond_21

    .line 334
    invoke-virtual {v0, v4}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 337
    :cond_21
    :goto_8
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edMonomerOvervoltage:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 341
    :cond_22
    invoke-virtual {v0, v12}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 447
    :pswitch_c
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edMonomerLowpressurerelease:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 448
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edMonomerLowpressurerelease:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 450
    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->FullVoltage:F

    cmpl-float v4, v4, v10

    if-lez v4, :cond_23

    goto :goto_9

    :cond_23
    const/16 v8, 0x3e8

    .line 453
    :goto_9
    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerLowpressure:I

    add-int v5, v4, v8

    add-int/lit8 v4, v4, 0x64

    invoke-direct {v0, v1, v5, v4}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->IsInputProtect(III)Z

    move-result v4

    iput-boolean v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->InputPram:Z

    if-eqz v4, :cond_24

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showLoading()V

    .line 456
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v3, 0x7d05

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 457
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 459
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_MonomerLowpressurerelease:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edMonomerLowpressurerelease:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iput v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerLowpressurerelease:I

    goto/16 :goto_d

    .line 464
    :cond_24
    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerLowpressure:I

    add-int/lit16 v5, v4, 0x1f4

    if-le v1, v5, :cond_25

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0d0189

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v13, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerLowpressure:I

    add-int/lit8 v6, v6, 0x64

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerLowpressure:I

    add-int/2addr v2, v8

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v14

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_a

    :cond_25
    if-ge v1, v4, :cond_26

    const v1, 0x7f0d012b

    .line 467
    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 470
    :cond_26
    :goto_a
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edMonomerOvervoltagerelease:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 475
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->hideLoading()V

    .line 476
    invoke-virtual {v0, v12}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 408
    :pswitch_d
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edMonomerLowpressure:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 409
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edMonomerLowpressure:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 410
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->FullVoltage:F

    cmpl-float v2, v2, v10

    if-lez v2, :cond_28

    .line 411
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerLowpressurerelease:I

    invoke-direct {v0, v1, v2, v4}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->InputPram:Z

    goto :goto_b

    .line 413
    :cond_28
    iget v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerLowpressurerelease:I

    invoke-direct {v0, v1, v2, v5}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->IsInputProtect(III)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->InputPram:Z

    .line 415
    :goto_b
    iget-boolean v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->InputPram:Z

    if-eqz v2, :cond_29

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showLoading()V

    .line 418
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v3, 0x7d04

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 419
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v2

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 421
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_MonomerLowpressure:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edMonomerLowpressure:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iput v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerLowpressure:I

    goto :goto_d

    .line 426
    :cond_29
    iget v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->FullVoltage:F

    cmpl-float v1, v1, v10

    if-lez v1, :cond_2a

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/Object;

    const-string v4, "2500"

    aput-object v4, v2, v14

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerLowpressurerelease:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v13

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_c

    .line 432
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/Object;

    const-string v4, "2000"

    aput-object v4, v2, v14

    iget v4, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->MonomerLowpressurerelease:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v13

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 435
    :goto_c
    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->edMonomerLowpressure:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 438
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->hideLoading()V

    .line 439
    invoke-virtual {v0, v12}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showMsg(Ljava/lang/String;)V

    goto :goto_d

    :pswitch_e
    const v1, 0x7f0d01a5

    .line 715
    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->listUvpDelay:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->ShowDialog(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_d

    :pswitch_f
    const v1, 0x7f0d0097

    .line 712
    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->listOvpDelay:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->ShowDialog(Ljava/lang/String;Ljava/util/List;)V

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

    .line 1077
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onDestroy()V

    .line 1078
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->timeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1079
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

    .line 1110
    :cond_0
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result p1

    const/16 v0, 0x2774

    if-ne p1, v0, :cond_1

    .line 1111
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->sendFactoryCmd()V

    .line 1112
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tvTopTitleR:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->mCurrentMode:Ljava/lang/String;

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

    .line 1387
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1388
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_MonomerOvervoltage:Landroid/widget/TextView;

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

    .line 1389
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_MonomerOvervoltagerelease:Landroid/widget/TextView;

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

    .line 1390
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalDelayedrelease:Landroid/widget/TextView;

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

    .line 1391
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_MonomerLowpressure:Landroid/widget/TextView;

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

    .line 1392
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_MonomerLowpressurerelease:Landroid/widget/TextView;

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

    .line 1393
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalDelayedpressure:Landroid/widget/TextView;

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

    .line 1394
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalOvervoltage:Landroid/widget/TextView;

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

    .line 1395
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalOvervoltagerelease:Landroid/widget/TextView;

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

    .line 1396
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalDelayedvoltagerelease:Landroid/widget/TextView;

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

    .line 1397
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalLowpressure:Landroid/widget/TextView;

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

    .line 1398
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalLowpressurerelease:Landroid/widget/TextView;

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

    .line 1399
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->tv_TotalDelayedvoltage:Landroid/widget/TextView;

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
