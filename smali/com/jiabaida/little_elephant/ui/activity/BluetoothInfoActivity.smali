.class public Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "BluetoothInfoActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.activity.BluetoothInfoActivity"


# instance fields
.field private WriteLine:[B

.field private batteryInfoCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private batteryNum:I

.field private blerenameResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private bmsAddressLayout:Landroid/widget/RelativeLayout;

.field private bmsInfoCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private bmsInfoCMDModel:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

.field private bmsModelLayout:Landroid/widget/RelativeLayout;

.field private charging_current:F

.field private chgCurrentLayout:Landroid/widget/RelativeLayout;

.field private closeFactoryCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

.field private cmdCount:I

.field private commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private deviceModelLayout:Landroid/widget/RelativeLayout;

.field private disCurrentLayout:Landroid/widget/RelativeLayout;

.field private disPowerLayout:Landroid/widget/RelativeLayout;

.field private discharge_current:F

.field private discharge_power:F

.field private factoryCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

.field private flTopBack:Landroid/widget/FrameLayout;

.field private ivTopBack:Landroid/widget/ImageView;

.field private llyTopTitleBg:Landroid/widget/RelativeLayout;

.field private mBarCodeCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mByte2String:Lcom/jiabaida/little_elephant/entity/ParamFormat$Byte2Sting;

.field private mCellOVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mCellOverVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mDeviceNameCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mEdBluetoothname:Landroid/widget/EditText;

.field private mFormatDate:Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatDate;

.field private mManufactureDateCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mManufacturerNameCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mPackNumCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mSerialNumberCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mTvSetBluetoothname:Landroid/widget/TextView;

.field private mhardwareVersion:Ljava/lang/String;

.field private mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

.field private paramProcess:I

.field private paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field timeHandler:Landroid/os/Handler;

.field private tvTopTitle:Landroid/widget/TextView;

.field private tvTopTitleR:Landroid/widget/TextView;

.field private tv_BMS_address:Landroid/widget/TextView;

.field private tv_BMS_model:Landroid/widget/TextView;

.field private tv_BMS_version:Landroid/widget/TextView;

.field private tv_Batterymanufacturer:Landroid/widget/TextView;

.field private tv_Batterymodel:Landroid/widget/TextView;

.field private tv_Bluetooth_name:Landroid/widget/TextView;

.field private tv_Ratedchargingcurrent:Landroid/widget/TextView;

.field private tv_Rateddischargecurrent:Landroid/widget/TextView;

.field private tv_Rateddischargepower:Landroid/widget/TextView;

.field private tv_Serialnumber:Landroid/widget/TextView;

.field private tv_info_barcode:Landroid/widget/TextView;

.field private tv_manufacturingdate:Landroid/widget/TextView;

.field private twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 78
    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->WriteLine:[B

    const/4 v1, 0x4

    .line 81
    iput v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->paramProcess:I

    .line 207
    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$2;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)V

    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->factoryCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 223
    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$3;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)V

    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->closeFactoryCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 260
    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)V

    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->timeHandler:Landroid/os/Handler;

    .line 382
    new-instance v1, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    invoke-direct {v1}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;-><init>()V

    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    .line 383
    new-instance v1, Lcom/jiabaida/little_elephant/entity/ParamFormat$Byte2Sting;

    invoke-direct {v1}, Lcom/jiabaida/little_elephant/entity/ParamFormat$Byte2Sting;-><init>()V

    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->mByte2String:Lcom/jiabaida/little_elephant/entity/ParamFormat$Byte2Sting;

    .line 384
    new-instance v1, Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatDate;

    invoke-direct {v1}, Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatDate;-><init>()V

    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->mFormatDate:Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatDate;

    .line 385
    new-instance v1, Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    invoke-direct {v1}, Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;-><init>()V

    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    .line 436
    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$5;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$5;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)V

    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 468
    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$6;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$6;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)V

    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 487
    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$7;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$7;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)V

    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->blerenameResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 552
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->cmdCount:I

    .line 553
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-void
.end method

.method private UpdateBleInfo()V
    .locals 3

    .line 348
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "basicInfo"

    .line 350
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->toBleInfoJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->syncBatteryInformation(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 353
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->batteryInfoCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_Batterymanufacturer:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_Batterymodel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_manufacturingdate:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->batteryNum:I

    return p1
.end method

.method static synthetic access$1400(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->bmsInfoCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_BMS_address:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->bmsInfoCMDModel:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_BMS_model:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->checkProcess()V

    return-void
.end method

.method static synthetic access$1900(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/EditText;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->mEdBluetoothname:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)F
    .locals 0

    .line 48
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->discharge_current:F

    return p0
.end method

.method static synthetic access$2000(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_Bluetooth_name:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;F)F
    .locals 0

    .line 48
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->discharge_current:F

    return p1
.end method

.method static synthetic access$2100(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->cmdCount:I

    return p0
.end method

.method static synthetic access$2102(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->cmdCount:I

    return p1
.end method

.method static synthetic access$2108(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)I
    .locals 2

    .line 48
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->cmdCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->cmdCount:I

    return v0
.end method

.method static synthetic access$2200(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tvTopTitleR:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)F
    .locals 0

    .line 48
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->charging_current:F

    return p0
.end method

.method static synthetic access$302(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;F)F
    .locals 0

    .line 48
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->charging_current:F

    return p1
.end method

.method static synthetic access$400(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)F
    .locals 0

    .line 48
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->discharge_power:F

    return p0
.end method

.method static synthetic access$402(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;F)F
    .locals 0

    .line 48
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->discharge_power:F

    return p1
.end method

.method static synthetic access$500(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_Ratedchargingcurrent:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_Rateddischargecurrent:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_Rateddischargepower:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_Serialnumber:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_info_barcode:Landroid/widget/TextView;

    return-object p0
.end method

.method private checkProcess()V
    .locals 2

    .line 459
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->paramProcess:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->paramProcess:I

    if-nez v0, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->UpdateBleInfo()V

    .line 462
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->hideLoading()V

    .line 463
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->timeHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 464
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    :cond_0
    return-void
.end method

.method private controlDisplay()V
    .locals 3

    .line 239
    sget v0, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    const/16 v1, 0x8

    const/16 v2, 0x2716

    if-ne v0, v2, :cond_0

    const v0, 0x7f08002d

    .line 240
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBaseInfoCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object v0

    iget-boolean v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->isOldVersion:Z

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->deviceModelLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->bmsAddressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->bmsModelLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->chgCurrentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->disCurrentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->disPowerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 250
    :cond_1
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->isLogin()Z

    move-result v0

    if-nez v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->chgCurrentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->disCurrentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->disPowerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private getCMDParams()V
    .locals 7

    .line 390
    new-instance v6, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 391
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00d6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    const/16 v1, 0x2f

    const/4 v4, 0x0

    const-string v5, ""

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->mPackNumCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 393
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v6, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 394
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->mPackNumCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 395
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBaseInfoCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object v0

    iget-boolean v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->isOldVersion:Z

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 396
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->paramProcess:I

    goto :goto_0

    .line 398
    :cond_0
    iput v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->paramProcess:I

    .line 400
    :goto_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->timeHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const-wide/16 v3, 0x1f40

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 401
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->showLoading()V

    .line 417
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBaseInfoCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object v0

    iget-boolean v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->isOldVersion:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 421
    :cond_1
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v2, 0x75

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->batteryInfoCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 422
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 423
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->batteryInfoCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0, v2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 426
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v2, 0xaa

    invoke-direct {v0, v2, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->bmsInfoCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 427
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 428
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->bmsInfoCMD:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 430
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    const/16 v1, 0xb0

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>(II)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->bmsInfoCMDModel:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 431
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 432
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->bmsInfoCMDModel:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    :goto_1
    return-void
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a0042

    return v0
.end method

.method public getParams2()V
    .locals 8

    .line 524
    new-instance v6, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    const/16 v1, 0x16

    const-string v2, ""

    const/4 v4, 0x0

    const-string v5, ""

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->mSerialNumberCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 526
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v6, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 527
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->mSerialNumberCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 529
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->mByte2String:Lcom/jiabaida/little_elephant/entity/ParamFormat$Byte2Sting;

    const/16 v3, 0xa2

    const-string v4, ""

    const/4 v6, 0x0

    const-string v7, ""

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->mBarCodeCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 531
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 532
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->mBarCodeCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 534
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->mByte2String:Lcom/jiabaida/little_elephant/entity/ParamFormat$Byte2Sting;

    const/16 v3, 0xa0

    const-string v4, ""

    const-string v7, ""

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->mManufacturerNameCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 536
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 537
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->mManufacturerNameCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 539
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->mByte2String:Lcom/jiabaida/little_elephant/entity/ParamFormat$Byte2Sting;

    const/16 v3, 0xa1

    const-string v4, ""

    const-string v7, ""

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->mDeviceNameCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 541
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 542
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->mDeviceNameCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 544
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->mFormatDate:Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatDate;

    const/16 v3, 0x15

    const-string v4, ""

    const-string v7, ""

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->mManufactureDateCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 546
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->commonCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 547
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->mManufactureDateCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method

.method protected initData()V
    .locals 2

    .line 184
    invoke-static {p0}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance(Landroid/content/Context;)Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    const-string v1, "BluetoothMac"

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->isMacConnected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_BMS_version:Landroid/widget/TextView;

    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBaseInfoCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_manufacturingdate:Landroid/widget/TextView;

    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBaseInfoCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->productDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->controlDisplay()V

    .line 190
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    .line 191
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->factoryCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 192
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    .line 194
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->closeFactoryCMDResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 195
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 196
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->getCMDParams()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->flTopBack:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$1;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 7

    const p1, 0x7f080137

    .line 103
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->llyTopTitleBg:Landroid/widget/RelativeLayout;

    const p1, 0x7f0800f9

    .line 104
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->ivTopBack:Landroid/widget/ImageView;

    const p1, 0x7f0802a0

    .line 105
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tvTopTitle:Landroid/widget/TextView;

    const p1, 0x7f0802a2

    .line 106
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tvTopTitleR:Landroid/widget/TextView;

    const p1, 0x7f0800c3

    .line 107
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->flTopBack:Landroid/widget/FrameLayout;

    const p1, 0x7f0801d6

    .line 109
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_Bluetooth_name:Landroid/widget/TextView;

    const p1, 0x7f0801d2

    .line 110
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_BMS_version:Landroid/widget/TextView;

    const p1, 0x7f08023f

    .line 111
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_manufacturingdate:Landroid/widget/TextView;

    const p1, 0x7f0801d0

    .line 112
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_BMS_address:Landroid/widget/TextView;

    const p1, 0x7f080235

    .line 113
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_info_barcode:Landroid/widget/TextView;

    const p1, 0x7f0801d5

    .line 114
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_Batterymodel:Landroid/widget/TextView;

    const p1, 0x7f0801d4

    .line 115
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_Batterymanufacturer:Landroid/widget/TextView;

    const p1, 0x7f0801d1

    .line 116
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_BMS_model:Landroid/widget/TextView;

    const p1, 0x7f0801fc

    .line 117
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_Ratedchargingcurrent:Landroid/widget/TextView;

    const p1, 0x7f0801fd

    .line 118
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_Rateddischargecurrent:Landroid/widget/TextView;

    const p1, 0x7f0801fe

    .line 119
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_Rateddischargepower:Landroid/widget/TextView;

    const p1, 0x7f080202

    .line 120
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_Serialnumber:Landroid/widget/TextView;

    const p1, 0x7f080070

    .line 122
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->mEdBluetoothname:Landroid/widget/EditText;

    const p1, 0x7f080263

    .line 123
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->mTvSetBluetoothname:Landroid/widget/TextView;

    const p1, 0x7f080069

    .line 125
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->deviceModelLayout:Landroid/widget/RelativeLayout;

    const p1, 0x7f08002b

    .line 126
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->bmsAddressLayout:Landroid/widget/RelativeLayout;

    const p1, 0x7f08002c

    .line 127
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->bmsModelLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f08004e

    .line 128
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->chgCurrentLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f08006d

    .line 129
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->disCurrentLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f08006c

    .line 130
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->disPowerLayout:Landroid/widget/RelativeLayout;

    .line 131
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_Bluetooth_name:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance(Landroid/content/Context;)Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v1

    const-string v2, "BluetoothName"

    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_BMS_version:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance(Landroid/content/Context;)Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v1

    const-string v2, "BleVersion"

    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_manufacturingdate:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance(Landroid/content/Context;)Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v1

    const-string v2, "BleproductDate"

    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->ivTopBack:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0700ca

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0d00ce

    .line 136
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->ivTopBack:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tvTopTitleR:Landroid/widget/TextView;

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 137
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->mTvSetBluetoothname:Landroid/widget/TextView;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$$ExternalSyntheticLambda0;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    sget v0, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    const/16 v1, 0x2716

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->isOldVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08016f

    .line 151
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080170

    .line 152
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080171

    .line 153
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080172

    .line 154
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initView$0$com-jiabaida-little_elephant-ui-activity-BluetoothInfoActivity(Landroid/view/View;)V
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->showLoading()V

    .line 139
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->mEdBluetoothname:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 140
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->mEdBluetoothname:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 141
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;-><init>()V

    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;->setContent([B)V

    .line 143
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->blerenameResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 144
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->hideLoading()V

    const p1, 0x7f0d016e

    .line 147
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->showMsg(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 339
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onDestroy()V

    .line 340
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->timeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 341
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

.method protected onResume()V
    .locals 1

    .line 162
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onResume()V

    .line 163
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->QueueTag:Ljava/lang/String;

    return-void
.end method

.method public toBleInfoJson()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 359
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 360
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_Bluetooth_name:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bluetoothName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_info_barcode:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "barCode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 362
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_Serialnumber:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "serialNumber"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_Batterymodel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "model"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_Batterymanufacturer:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "manufacturer"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 365
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_BMS_version:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bmsVersion"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_BMS_model:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bmsModel"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_manufacturingdate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "producedDate"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_BMS_address:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bmsAddr"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->charging_current:F

    float-to-double v1, v1

    const-string v3, "ratedChargingCurrent"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 370
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->discharge_current:F

    float-to-double v1, v1

    const-string v3, "ratedDischargeCurrent"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 371
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->discharge_power:F

    float-to-double v1, v1

    const-string v3, "ratedDischargePower"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 372
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->tv_BMS_version:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "softwareVersion"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->mhardwareVersion:Ljava/lang/String;

    const-string v2, "hardwareVersion"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method protected useEventBus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
