.class public Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "ElectricSettingsOldActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.activity.ElectricSettingsOldActivity"


# instance fields
.field private Detectionresistance:F

.field private InputPram:Z

.field private closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

.field private closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

.field private factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private flTopBack:Landroid/widget/FrameLayout;

.field private hardDISCurrentArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hardDISCurrentDelayArray:[Ljava/lang/String;

.field private hardDSGCurrentArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hardDSGCurrentDelayArray:[Ljava/lang/String;

.field private icTypeResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private isDouble:Z

.field private ivTopBack:Landroid/widget/ImageView;

.field private llyShortDelay:Landroid/widget/LinearLayout;

.field private llyShortProtection:Landroid/widget/LinearLayout;

.field private llyTopTitleBg:Landroid/widget/RelativeLayout;

.field private llyTwoElectric:Landroid/widget/LinearLayout;

.field private mChgOCReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mChgOCReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mChgOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mDisOCReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mDisOCReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mDisOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mDoubleHardValCmd:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mEdCharCurrentDelay:Landroid/widget/EditText;

.field private mEdCharCurrentProtection:Landroid/widget/EditText;

.field private mEdCharCurrentRecoveryDelay:Landroid/widget/EditText;

.field private mEdDischargeDelay:Landroid/widget/EditText;

.field private mEdDischargeProtection:Landroid/widget/EditText;

.field private mEdDischargeRecoveryDelay:Landroid/widget/EditText;

.field private mEdShortRecoveryDelay:Landroid/widget/EditText;

.field private mHardCellLVDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mHardCellOVDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mHardDSGOCDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mHardDSGOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mHardDisOCDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mHardDisOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mLlySecondDelay:Landroid/widget/LinearLayout;

.field private mLlySecondProtection:Landroid/widget/LinearLayout;

.field private mSCReleaseTimeCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mSenseResistorCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mTvCharCurrentDelay:Landroid/widget/TextView;

.field private mTvCharCurrentProtection:Landroid/widget/TextView;

.field private mTvCharCurrentRecoveryDelay:Landroid/widget/TextView;

.field private mTvDischargeDelay:Landroid/widget/TextView;

.field private mTvDischargeProtection:Landroid/widget/TextView;

.field private mTvDischargeRecoveryDelay:Landroid/widget/TextView;

.field private mTvSecondaryDelay:Landroid/widget/TextView;

.field private mTvSecondaryprotection:Landroid/widget/TextView;

.field private mTvSecondaryprotectionvalue:Landroid/widget/Switch;

.field private mTvSetCharCurrentDelay:Landroid/widget/TextView;

.field private mTvSetCharCurrentProtection:Landroid/widget/TextView;

.field private mTvSetCharCurrentRecoveryDelay:Landroid/widget/TextView;

.field private mTvSetDischargeDelay:Landroid/widget/TextView;

.field private mTvSetDischargeProtection:Landroid/widget/TextView;

.field private mTvSetDischargeRecoveryDelay:Landroid/widget/TextView;

.field private mTvShortRecoveryDelay:Landroid/widget/TextView;

.field private mTvShortprotection:Landroid/widget/TextView;

.field private mTvShortprotectionDelay:Landroid/widget/TextView;

.field private ocIndex:I

.field private ocdelayed:I

.field private paramProcess:I

.field private paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private scDelayedIndex:I

.field private scIndex:I

.field private tenMill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch;

.field timeHandler:Landroid/os/Handler;

.field private tvTopTitle:Landroid/widget/TextView;

.field private tvTopTitleR:Landroid/widget/TextView;

.field private tvTwoElectric:Landroid/widget/TextView;

.field private twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

.field private twoByte2SignedInt:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2SignedInt;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 54
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->isDouble:Z

    const/4 v0, 0x6

    .line 104
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->paramProcess:I

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->Detectionresistance:F

    const-string v0, "70"

    const-string v1, "100"

    const-string v2, "200"

    const-string v3, "400"

    .line 112
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hardDSGCurrentDelayArray:[Ljava/lang/String;

    const-string v1, "8"

    const-string v2, "20"

    const-string v3, "40"

    const-string v4, "80"

    const-string v5, "160"

    const-string v6, "320"

    const-string v7, "640"

    const-string v8, "1280"

    .line 113
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hardDISCurrentDelayArray:[Ljava/lang/String;

    .line 188
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->timeHandler:Landroid/os/Handler;

    .line 371
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$3;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 696
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$5;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$5;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 716
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$6;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$6;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->icTypeResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 731
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$7;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$7;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 752
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2SignedInt;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2SignedInt;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->twoByte2SignedInt:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2SignedInt;

    .line 753
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->tenMill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch;

    .line 754
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    .line 855
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$8;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$8;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 872
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$9;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$9;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-void
.end method

.method private RefreshList(Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BottomSelectBean;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BottomSelectBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 410
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 411
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->getItemid()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 412
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->setItemSelect(Z)V

    goto :goto_1

    .line 414
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    invoke-virtual {v2, v0}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->setItemSelect(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private ShowDialog(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 645
    new-instance v0, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 646
    new-instance p4, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, p4}, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->setBottomItemListener(Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;)V

    .line 680
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->show()V

    return-void
.end method

.method private UpdateElectric()V
    .locals 3

    .line 902
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "electricityParam"

    .line 904
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->toElectricJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 905
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->syncBatteryInformation(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 907
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvCharCurrentProtection:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvCharCurrentDelay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;[IF)[Ljava/lang/String;
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getIntToString([IF)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hardDSGCurrentArray:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hardDSGCurrentArray:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->ocIndex:I

    return p0
.end method

.method static synthetic access$1202(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->ocIndex:I

    return p1
.end method

.method static synthetic access$1300(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardDisOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->ocdelayed:I

    return p0
.end method

.method static synthetic access$1402(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->ocdelayed:I

    return p1
.end method

.method static synthetic access$1500(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardDisOCDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->scIndex:I

    return p0
.end method

.method static synthetic access$1602(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->scIndex:I

    return p1
.end method

.method static synthetic access$1700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardDSGOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->scDelayedIndex:I

    return p0
.end method

.method static synthetic access$1802(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->scDelayedIndex:I

    return p1
.end method

.method static synthetic access$1900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardDSGOCDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvCharCurrentRecoveryDelay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvShortprotectionDelay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvSecondaryprotection:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvSecondaryDelay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvShortprotection:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvShortRecoveryDelay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;F)F
    .locals 0

    .line 54
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->Detectionresistance:F

    return p1
.end method

.method static synthetic access$2600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdCharCurrentProtection:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mChgOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdCharCurrentDelay:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvDischargeProtection:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mChgOCReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdCharCurrentRecoveryDelay:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mChgOCReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdDischargeProtection:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mDisOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdDischargeDelay:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mDisOCReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdDischargeRecoveryDelay:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mDisOCReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)[Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hardDISCurrentDelayArray:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvDischargeDelay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)[Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hardDSGCurrentDelayArray:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/EditText;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdShortRecoveryDelay:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mSCReleaseTimeCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$4202(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mSCReleaseTimeCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->UpdateElectric()V

    return-void
.end method

.method static synthetic access$4500(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$4600()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->checkProcess()V

    return-void
.end method

.method static synthetic access$4800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getOldParams()V

    return-void
.end method

.method static synthetic access$500(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvDischargeRecoveryDelay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mDoubleHardValCmd:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/Switch;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvSecondaryprotectionvalue:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hardDISCurrentArray:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$802(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hardDISCurrentArray:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mSenseResistorCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object p0
.end method

.method private checkProcess()V
    .locals 1

    .line 688
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->paramProcess:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->paramProcess:I

    if-nez v0, :cond_0

    .line 690
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->UpdateElectric()V

    .line 691
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hideLoading()V

    :cond_0
    return-void
.end method

.method private getIntToString([IF)[Ljava/lang/String;
    .locals 3

    .line 889
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 893
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 894
    aget v2, p1, v1

    int-to-float v2, v2

    div-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getOldParams()V
    .locals 15

    .line 757
    new-instance v6, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 758
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00dd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->twoByte2SignedInt:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2SignedInt;

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->tenMill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch;

    const/16 v1, 0x28

    const-string v5, "A"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mChgOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 760
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v6, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 761
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mChgOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 763
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 764
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00e5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x3e

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "S"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mChgOCReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 766
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 767
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 768
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00dc

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoCmdValueFormat;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mChgOCReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-direct {v5, v1}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoCmdValueFormat;-><init>(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V

    const-string v7, "S"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mChgOCReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 770
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 771
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mChgOCReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 773
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 774
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00f2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->twoByte2SignedInt:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2SignedInt;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->tenMill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch;

    const/16 v3, 0x29

    const-string v7, "A"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mDisOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 776
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 777
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mDisOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 779
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 780
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00f1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x3f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "S"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mDisOCReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 782
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 783
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 784
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00f3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoCmdValueFormat;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mDisOCReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-direct {v5, v1}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoCmdValueFormat;-><init>(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V

    const-string v7, "S"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mDisOCReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 787
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 788
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mDisOCReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 791
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 792
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00ed

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    new-instance v6, Lcom/jiabaida/little_elephant/entity/ParamFormat$SensorResistorUnitSwitch;

    invoke-direct {v6}, Lcom/jiabaida/little_elephant/entity/ParamFormat$SensorResistorUnitSwitch;-><init>()V

    const/16 v3, 0x2c

    const-string v7, "mR"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mSenseResistorCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 794
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 795
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mSenseResistorCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 798
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 800
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0115

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x38

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mDoubleHardValCmd:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 803
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 804
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0114

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v9, 0x38

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "A"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardDisOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 806
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 808
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 809
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0113

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "mS"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardDisOCDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 811
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 813
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 814
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0119

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "A"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardDSGOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 816
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 818
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 820
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d011a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "uS"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardDSGOCDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 822
    new-instance v0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;

    iget-object v9, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardDSGOCDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v10, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardDisOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v11, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardDisOCDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v12, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardDSGOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v13, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mSenseResistorCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v14, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mDoubleHardValCmd:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/jiabaida/little_elephant/util/HardDSGFormat;-><init>(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V

    .line 824
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardDSGOCDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setFormatCMDParam(Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;)V

    .line 825
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardDSGOCDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 826
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardDSGOCDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 828
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v3, 0x39

    const-string v4, "hard_cell_over_voltage_delay"

    const-string v7, "S"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardCellOVDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 831
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 833
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const-string v4, "hard_cell_under_voltage_delay"

    const-string v7, "S"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardCellLVDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 835
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 837
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const-string v4, "SC_release_time"

    const-string v7, "S"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mSCReleaseTimeCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 840
    new-instance v1, Lcom/jiabaida/little_elephant/util/HardTimeFormat;

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mSCReleaseTimeCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardCellOVDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardCellLVDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-direct {v1, v2, v3, v4}, Lcom/jiabaida/little_elephant/util/HardTimeFormat;-><init>(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setFormatCMDParam(Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;)V

    .line 841
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mSCReleaseTimeCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 842
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mSCReleaseTimeCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 845
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mChgOCReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mChgOCReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setRelativeEntity(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V

    .line 846
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mDisOCReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mDisOCReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setRelativeEntity(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V

    .line 847
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardCellLVDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mSCReleaseTimeCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setRelativeEntity(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V

    .line 848
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardCellOVDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mSCReleaseTimeCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setRelativeEntity(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V

    .line 849
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardDisOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardDSGOCDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setRelativeEntity(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V

    .line 850
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardDisOCDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardDSGOCDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setRelativeEntity(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V

    .line 851
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardDSGOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardDSGOCDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setRelativeEntity(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V

    .line 853
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mDoubleHardValCmd:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mHardDSGOCDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setRelativeEntity(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V

    return-void
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a0046

    return v0
.end method

.method protected initData()V
    .locals 1

    .line 184
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->QueueTag:Ljava/lang/String;

    .line 185
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->showLoading()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 7

    const p1, 0x7f0800c3

    .line 122
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->flTopBack:Landroid/widget/FrameLayout;

    const p1, 0x7f0800f9

    .line 123
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->ivTopBack:Landroid/widget/ImageView;

    const p1, 0x7f0802a0

    .line 124
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->tvTopTitle:Landroid/widget/TextView;

    const p1, 0x7f0802a2

    .line 125
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->tvTopTitleR:Landroid/widget/TextView;

    .line 126
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->ivTopBack:Landroid/widget/ImageView;

    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f080137

    .line 127
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->llyTopTitleBg:Landroid/widget/RelativeLayout;

    .line 128
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->flTopBack:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->tvTopTitleR:Landroid/widget/TextView;

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 129
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->flTopBack:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08013a

    .line 135
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->llyTwoElectric:Landroid/widget/LinearLayout;

    const p1, 0x7f0802a3

    .line 136
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->tvTwoElectric:Landroid/widget/TextView;

    const p1, 0x7f080136

    .line 138
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->llyShortProtection:Landroid/widget/LinearLayout;

    const p1, 0x7f080135

    .line 139
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->llyShortDelay:Landroid/widget/LinearLayout;

    const p1, 0x7f080133

    .line 140
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mLlySecondProtection:Landroid/widget/LinearLayout;

    const p1, 0x7f080132

    .line 141
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mLlySecondDelay:Landroid/widget/LinearLayout;

    const p1, 0x7f0801d8

    .line 144
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvCharCurrentProtection:Landroid/widget/TextView;

    const p1, 0x7f0801d7

    .line 145
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvCharCurrentDelay:Landroid/widget/TextView;

    const p1, 0x7f0801d9

    .line 146
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvCharCurrentRecoveryDelay:Landroid/widget/TextView;

    const p1, 0x7f0801e9

    .line 147
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvDischargeProtection:Landroid/widget/TextView;

    const p1, 0x7f0801e2

    .line 148
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvDischargeDelay:Landroid/widget/TextView;

    const p1, 0x7f0801ea

    .line 149
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvDischargeRecoveryDelay:Landroid/widget/TextView;

    const p1, 0x7f080201

    .line 150
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvSecondaryprotectionvalue:Landroid/widget/Switch;

    const p1, 0x7f080200

    .line 152
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvSecondaryprotection:Landroid/widget/TextView;

    const p1, 0x7f0801ff

    .line 153
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvSecondaryDelay:Landroid/widget/TextView;

    const p1, 0x7f080205

    .line 154
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvShortprotection:Landroid/widget/TextView;

    const p1, 0x7f080206

    .line 155
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvShortprotectionDelay:Landroid/widget/TextView;

    const p1, 0x7f080204

    .line 156
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvShortRecoveryDelay:Landroid/widget/TextView;

    const p1, 0x7f080072

    .line 159
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdCharCurrentProtection:Landroid/widget/EditText;

    const p1, 0x7f080071

    .line 160
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdCharCurrentDelay:Landroid/widget/EditText;

    const p1, 0x7f080073

    .line 161
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdCharCurrentRecoveryDelay:Landroid/widget/EditText;

    const p1, 0x7f080083

    .line 162
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdDischargeProtection:Landroid/widget/EditText;

    const p1, 0x7f08007c

    .line 163
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdDischargeDelay:Landroid/widget/EditText;

    const p1, 0x7f080084

    .line 164
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdDischargeRecoveryDelay:Landroid/widget/EditText;

    const p1, 0x7f080097

    .line 165
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdShortRecoveryDelay:Landroid/widget/EditText;

    const p1, 0x7f080265

    .line 167
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvSetCharCurrentProtection:Landroid/widget/TextView;

    const p1, 0x7f080264

    .line 168
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvSetCharCurrentDelay:Landroid/widget/TextView;

    const p1, 0x7f080266

    .line 169
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvSetCharCurrentRecoveryDelay:Landroid/widget/TextView;

    const p1, 0x7f080276

    .line 170
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvSetDischargeProtection:Landroid/widget/TextView;

    const p1, 0x7f08026f

    .line 171
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvSetDischargeDelay:Landroid/widget/TextView;

    const p1, 0x7f080277

    .line 172
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvSetDischargeRecoveryDelay:Landroid/widget/TextView;

    .line 174
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    .line 175
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 177
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    .line 178
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setInit()V

    .line 179
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 180
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method

.method public onClickElectric(Landroid/view/View;)V
    .locals 8

    .line 436
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0d0189

    const/4 v1, 0x0

    const v2, 0x7f0d018a

    const/16 v3, 0xff

    const/4 v4, 0x1

    const/4 v5, 0x2

    const v6, 0x7f0d016e

    const-string v7, ""

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_4

    .line 609
    :sswitch_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdShortRecoveryDelay:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 610
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdShortRecoveryDelay:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 611
    invoke-static {p1, v3, v5}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->InputPram:Z

    if-eqz p1, :cond_0

    .line 613
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->showLoading()V

    .line 614
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d08

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 615
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_4

    .line 619
    :cond_0
    invoke-virtual {p0, v2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 620
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdShortRecoveryDelay:Landroid/widget/EditText;

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 623
    :cond_1
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hideLoading()V

    .line 624
    invoke-virtual {p0, v6}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 586
    :sswitch_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdDischargeRecoveryDelay:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 587
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdDischargeRecoveryDelay:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 588
    invoke-static {p1, v3, v5}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->InputPram:Z

    if-eqz p1, :cond_2

    .line 590
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->showLoading()V

    .line 593
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d06

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 594
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_4

    .line 597
    :cond_2
    invoke-virtual {p0, v2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 598
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdDischargeRecoveryDelay:Landroid/widget/EditText;

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 601
    :cond_3
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hideLoading()V

    .line 602
    invoke-virtual {p0, v6}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 543
    :sswitch_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdDischargeProtection:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 544
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdDischargeProtection:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->StrTransInt(Ljava/lang/String;)I

    move-result p1

    const/16 v2, -0x2710

    const v3, -0x4ffb0

    .line 545
    invoke-static {p1, v2, v3}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->InputPram:Z

    if-eqz p1, :cond_4

    .line 547
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->showLoading()V

    .line 548
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d04

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 549
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_4

    .line 552
    :cond_4
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v2, "-10000~-327600"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 553
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdDischargeProtection:Landroid/widget/EditText;

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 556
    :cond_5
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hideLoading()V

    .line 557
    invoke-virtual {p0, v6}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 564
    :sswitch_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdDischargeDelay:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 565
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdDischargeDelay:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 566
    invoke-static {p1, v3, v5}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->InputPram:Z

    if-eqz p1, :cond_6

    .line 568
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->showLoading()V

    .line 571
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d05

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 572
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_4

    .line 574
    :cond_6
    invoke-virtual {p0, v2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 575
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdDischargeDelay:Landroid/widget/EditText;

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 578
    :cond_7
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hideLoading()V

    .line 579
    invoke-virtual {p0, v6}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 522
    :sswitch_4
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdCharCurrentRecoveryDelay:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 523
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdCharCurrentRecoveryDelay:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 524
    invoke-static {p1, v3, v5}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->InputPram:Z

    if-eqz p1, :cond_8

    .line 526
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->showLoading()V

    .line 529
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d03

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 530
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_4

    .line 532
    :cond_8
    invoke-virtual {p0, v2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 533
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdCharCurrentRecoveryDelay:Landroid/widget/EditText;

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 536
    :cond_9
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hideLoading()V

    .line 537
    invoke-virtual {p0, v6}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 480
    :sswitch_5
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdCharCurrentProtection:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 481
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdCharCurrentProtection:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const v2, 0x4ffb0

    const/16 v3, 0x2710

    .line 482
    invoke-static {p1, v2, v3}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->InputPram:Z

    if-eqz p1, :cond_a

    .line 484
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->showLoading()V

    .line 485
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d01

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 486
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_4

    .line 489
    :cond_a
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v2, "10000~327600"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 490
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdCharCurrentProtection:Landroid/widget/EditText;

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 493
    :cond_b
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hideLoading()V

    .line 494
    invoke-virtual {p0, v6}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 501
    :sswitch_6
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdCharCurrentDelay:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 502
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdCharCurrentDelay:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 503
    invoke-static {p1, v3, v5}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->InputPram:Z

    if-eqz p1, :cond_c

    .line 505
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->showLoading()V

    .line 506
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d02

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 507
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_4

    .line 509
    :cond_c
    invoke-virtual {p0, v2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 510
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mEdCharCurrentDelay:Landroid/widget/EditText;

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 514
    :cond_d
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hideLoading()V

    .line 515
    invoke-virtual {p0, v6}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 438
    :sswitch_7
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvSecondaryprotectionvalue:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->isDouble:Z

    const/4 p1, 0x0

    .line 439
    :goto_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hardDISCurrentArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_f

    .line 440
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvSecondaryprotection:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hardDISCurrentArray:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 441
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->ocIndex:I

    goto :goto_1

    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 445
    :cond_f
    :goto_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hardDSGCurrentArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_11

    .line 446
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvShortprotection:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hardDSGCurrentArray:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 447
    iput v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->scIndex:I

    goto :goto_2

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 451
    :cond_11
    :goto_2
    iget-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->isDouble:Z

    if-eqz p1, :cond_12

    .line 452
    sget-object p1, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->hardDISCurrentArray_1:[I

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mSenseResistorCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    invoke-direct {p0, p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getIntToString([IF)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hardDISCurrentArray:Ljava/util/List;

    .line 453
    sget-object p1, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->hardDSGCurrentArray_1:[I

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mSenseResistorCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    invoke-direct {p0, p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getIntToString([IF)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hardDSGCurrentArray:Ljava/util/List;

    goto :goto_3

    .line 455
    :cond_12
    sget-object p1, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->hardDISCurrentArray_0:[I

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mSenseResistorCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    invoke-direct {p0, p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getIntToString([IF)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hardDISCurrentArray:Ljava/util/List;

    .line 456
    sget-object p1, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->hardDSGCurrentArray_0:[I

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mSenseResistorCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    invoke-direct {p0, p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getIntToString([IF)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hardDSGCurrentArray:Ljava/util/List;

    .line 459
    :goto_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvSecondaryprotection:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hardDISCurrentArray:Ljava/util/List;

    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->ocIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvShortprotection:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hardDSGCurrentArray:Ljava/util/List;

    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->scIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    const/16 v0, 0x7d07

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 463
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto :goto_4

    :sswitch_8
    const/4 p1, 0x3

    const v0, 0x7f0d0119

    .line 466
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hardDSGCurrentArray:Ljava/util/List;

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvShortprotection:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->ShowDialog(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_4

    :sswitch_9
    const/4 p1, 0x4

    const v0, 0x7f0d011a

    .line 469
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hardDSGCurrentDelayArray:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvShortprotectionDelay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->ShowDialog(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_4

    :sswitch_a
    const p1, 0x7f0d0114

    .line 473
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hardDISCurrentArray:Ljava/util/List;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvSecondaryprotection:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, p1, v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->ShowDialog(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_4

    :sswitch_b
    const p1, 0x7f0d0113

    .line 476
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hardDISCurrentDelayArray:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvSecondaryDelay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, p1, v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->ShowDialog(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080132 -> :sswitch_b
        0x7f080133 -> :sswitch_a
        0x7f080135 -> :sswitch_9
        0x7f080136 -> :sswitch_8
        0x7f080201 -> :sswitch_7
        0x7f080264 -> :sswitch_6
        0x7f080265 -> :sswitch_5
        0x7f080266 -> :sswitch_4
        0x7f08026f -> :sswitch_3
        0x7f080276 -> :sswitch_2
        0x7f080277 -> :sswitch_1
        0x7f08028a -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    .line 398
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onDestroy()V

    .line 399
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->timeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 400
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

.method public toElectricJson()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 913
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 914
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvCharCurrentProtection:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "occhg"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 915
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvCharCurrentDelay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "chargeOvercurrentDelay"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 916
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvCharCurrentRecoveryDelay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "chargeOvercurrentRecoverDelay"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 917
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvDischargeProtection:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "dischargeOvercurrentProtect"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 918
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvDischargeDelay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "dischargeOvercurrentDelay"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 919
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvDischargeRecoveryDelay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "dischargeOvercurrentRecoverDelay"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 920
    iget-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->isDouble:Z

    const-string v2, "level2OvercurrentProtectV"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 921
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->ocIndex:I

    const-string v2, "level2OvercurrentProtect"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 922
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->ocIndex:I

    const-string v2, "level2OvercurrentProtectVNo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 923
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->ocIndex:I

    const-string v2, "level2OvercurrentProtectNo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 924
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->ocdelayed:I

    const-string v2, "leve2OvercurrentDelay"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 925
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->ocdelayed:I

    const-string v2, "leve2OvercurrentDelayNo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 926
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->scIndex:I

    const-string v2, "shortcircuiProtect"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 927
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->scIndex:I

    const-string v2, "shortcircuiProtectNo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 928
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->scDelayedIndex:I

    const-string v2, "shortcircuiProtectDelay"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 929
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->scDelayedIndex:I

    const-string v2, "shortcircuiProtectDelayNo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 930
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->mTvShortRecoveryDelay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "shortcircuiProtectRecoverDelay"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object v0
.end method

.method protected useEventBus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
