.class public Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;
.super Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;
.source "NowFragment.java"


# static fields
.field private static final REQUEST_CODE_OPEN_GPS:I = 0x1

.field private static final REQUEST_CODE_PERMISSION_LOCATION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.fragment.NowFragment"

.field public static current:F

.field public static fetState:B

.field public static serial:I


# instance fields
.field private AcceptedCommand:Ljava/lang/String;

.field private BMS_model:Ljava/lang/String;

.field BletimeHandler:Landroid/os/Handler;

.field private Chargingtime:F

.field private final MSG_BATTERYINFO_CMD:I

.field private final MSG_OV_CMD:I

.field private final MSG_SEND_CMD:I

.field private final MSG_UPDATE_UI:I

.field public RSOC:I

.field public UpdetemperatureBeanList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jiabaida/little_elephant/entity/KeyValEntity;",
            ">;"
        }
    .end annotation
.end field

.field private balanceState:F

.field public balanceStates:[Z

.field private baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

.field private baseInfoResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private batteryVoltageCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

.field private bind_ble_text:Landroid/widget/TextView;

.field private bleDeviceListBean:Lcom/clj/fastble/data/BleDevice;

.field bleGattCallback:Lcom/clj/fastble/callback/BleGattCallback;

.field private blePos:I

.field private connectBleType:I

.field private counter:J

.field private cycleTimes:I

.field public equilibriumState:I

.field gson:Lcom/google/gson/Gson;

.field private final hideLoadingMsg:I

.field public humiditynum:I

.field public isCheckSecond:Z

.field private isVisible:Z

.field private ivChargeLightning:Landroid/widget/ImageView;

.field private ivChargeLineLeft:Landroid/widget/ImageView;

.field private ivChargeLineRight:Landroid/widget/ImageView;

.field private ivLeftCheckBle:Landroid/widget/ImageButton;

.field private ivRightCheckBle:Landroid/widget/ImageButton;

.field private llVoltageStatus:Landroid/widget/LinearLayout;

.field private llyDischargeTime:Landroid/widget/LinearLayout;

.field private llyNowRemaindPowerLayout:Landroid/widget/LinearLayout;

.field final mHints:[J

.field private mImgRightTitle:Landroid/widget/ImageView;

.field private mProtectStatus:I

.field private mTotalNum:I

.field private mTvLeftTitle:Landroid/widget/TextView;

.field private mVoltageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;",
            ">;"
        }
    .end annotation
.end field

.field private maxVoltage:F

.field private minVoltage:F

.field private nominalPower:F

.field private nowTopCircle:Lcom/jiabaida/little_elephant/view/CircleArcView;

.field private now_voltage_layout:Landroid/widget/LinearLayout;

.field private now_voltage_name:Landroid/widget/TextView;

.field private now_voltage_view:Landroid/view/View;

.field public ntcNum:I

.field private pressureVoltage:F

.field public productDate:Ljava/lang/String;

.field public protectionState:[B

.field public protectionStateIndex:I

.field public protectionStateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jiabaida/little_elephant/entity/KeyValEntity;",
            ">;"
        }
    .end annotation
.end field

.field private remaindPower:F

.field private rvSignleVoltage:Landroidx/recyclerview/widget/RecyclerView;

.field private rvTemperatureLeft:Landroidx/recyclerview/widget/RecyclerView;

.field private rvTemperatureRight:Landroidx/recyclerview/widget/RecyclerView;

.field private sendThread:Lcom/jiabaida/little_elephant/thread/SendCMDThread;

.field private singleVoltageAdapter:Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;

.field private singleVoltageBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;",
            ">;"
        }
    .end annotation
.end field

.field spUtils:Lcom/jiabaida/little_elephant/util/SPUtils;

.field public tempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jiabaida/little_elephant/entity/KeyValEntity;",
            ">;"
        }
    .end annotation
.end field

.field private temperatureAdapterLeft:Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter;

.field private temperatureAdapterRight:Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;

.field private temperatureBeanListLeft:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/TemperatureBean;",
            ">;"
        }
    .end annotation
.end field

.field private temperatureBeanListRight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/TemperatureBean;",
            ">;"
        }
    .end annotation
.end field

.field private totalVoltage:F

.field private tvDischargeTime:Landroid/widget/TextView;

.field private tvNowCharge:Landroid/widget/TextView;

.field private tvNowDischarge:Landroid/widget/TextView;

.field private tvNowEqualization:Landroid/widget/TextView;

.field private tvNowProtection:Landroid/widget/TextView;

.field private tvNowprotectionname:Landroid/widget/TextView;

.field private tvVoltageTitle:Landroid/widget/TextView;

.field private tv_charging_current:Landroid/widget/TextView;

.field private tv_charging_voltage:Landroid/widget/TextView;

.field private tv_discharge_current:Landroid/widget/TextView;

.field private tv_discharge_power:Landroid/widget/TextView;

.field private tv_mac:Landroid/widget/TextView;

.field private tv_nominal_capacity:Landroid/widget/TextView;

.field private tv_now_electric_a:Landroid/widget/TextView;

.field private tv_now_max_voltage_a:Landroid/widget/TextView;

.field private tv_now_min_voltage_a:Landroid/widget/TextView;

.field private tv_now_number_cycles_a:Landroid/widget/TextView;

.field private tv_now_pressure_a:Landroid/widget/TextView;

.field private tv_now_total_voltage_a:Landroid/widget/TextView;

.field private tv_now_voltage_a:Landroid/widget/TextView;

.field private tv_now_voltage_average_a:Landroid/widget/TextView;

.field private tv_power_time_title:Landroid/widget/TextView;

.field private v2_now_Residualcapacity:Landroid/widget/TextView;

.field public version:Ljava/lang/String;

.field private voltageResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 97
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;-><init>()V

    const/16 v0, 0x2710

    .line 101
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->MSG_SEND_CMD:I

    const/16 v0, 0x2711

    .line 102
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->MSG_UPDATE_UI:I

    const/16 v0, 0x2712

    .line 103
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->MSG_BATTERYINFO_CMD:I

    const/16 v0, 0x2713

    .line 104
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->MSG_OV_CMD:I

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->singleVoltageBeanList:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->temperatureBeanListLeft:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->temperatureBeanListRight:Ljava/util/List;

    .line 143
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->gson:Lcom/google/gson/Gson;

    const-string v0, ""

    .line 153
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->AcceptedCommand:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 167
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->protectionState:[B

    const/4 v0, 0x0

    .line 176
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->humiditynum:I

    const/4 v1, -0x1

    .line 193
    iput v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->protectionStateIndex:I

    const-wide/16 v1, 0x0

    .line 217
    iput-wide v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->counter:J

    const/4 v1, 0x1

    .line 220
    iput-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->isVisible:Z

    .line 225
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->isCheckSecond:Z

    const/16 v1, 0x64

    .line 309
    iput v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->hideLoadingMsg:I

    .line 310
    new-instance v1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$1;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$1;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V

    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->BletimeHandler:Landroid/os/Handler;

    .line 345
    new-instance v1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$2;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$2;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V

    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->bleGattCallback:Lcom/clj/fastble/callback/BleGattCallback;

    const/4 v1, 0x5

    new-array v1, v1, [J

    .line 534
    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->mHints:[J

    .line 882
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->connectBleType:I

    .line 886
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->blePos:I

    .line 1183
    new-instance v0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$12;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$12;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->baseInfoResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 1241
    new-instance v0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$13;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$13;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->voltageResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-void
.end method

.method private CloseTime()V
    .locals 0

    return-void
.end method

.method private IsConnectBlue()V
    .locals 2

    .line 868
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    const-string v1, "Bluetoothdevice"

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 870
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private SetChargingIcon(F)V
    .locals 7

    .line 752
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->llyDischargeTime:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, "---Main>"

    const/high16 v2, 0x447a0000    # 1000.0f

    const/4 v3, 0x1

    const/high16 v4, 0x42700000    # 60.0f

    const/4 v5, 0x0

    cmpl-float v6, p1, v5

    if-lez v6, :cond_2

    .line 754
    invoke-direct {p0, v3}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->setChartChargeState(Z)V

    .line 756
    sget p1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->current:F

    cmpl-float p1, p1, v5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->nominalPower:F

    iget v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->remaindPower:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->current:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v5, p1, v1

    :goto_0
    iput v5, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->Chargingtime:F

    mul-float v5, v5, v4

    mul-float v5, v5, v4

    mul-float v5, v5, v2

    float-to-long v1, v5

    .line 758
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->Chargingtime:F

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "=\u5145\u7535=="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    iget p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->RSOC:I

    const/16 v0, 0x5f

    if-lt p1, v0, :cond_1

    .line 761
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    iget p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->RSOC:I

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 778
    :pswitch_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvDischargeTime:Landroid/widget/TextView;

    const-string v0, "0:0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 775
    :pswitch_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvDischargeTime:Landroid/widget/TextView;

    const-string v0, "0:6"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 772
    :pswitch_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvDischargeTime:Landroid/widget/TextView;

    const-string v0, "0:12"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 769
    :pswitch_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvDischargeTime:Landroid/widget/TextView;

    const-string v0, "0:18"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 766
    :pswitch_4
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvDischargeTime:Landroid/widget/TextView;

    const-string v0, "0:24"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 763
    :pswitch_5
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvDischargeTime:Landroid/widget/TextView;

    const-string v0, "0:30"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 782
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvDischargeTime:Landroid/widget/TextView;

    invoke-static {v1, v2, v3}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->generateTime(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 784
    :goto_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_power_time_title:Landroid/widget/TextView;

    const v0, 0x7f0d0148

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_2
    cmpg-float p1, p1, v5

    if-gez p1, :cond_4

    .line 788
    invoke-direct {p0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->setChartChargeState(Z)V

    .line 790
    sget p1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->current:F

    cmpl-float p1, p1, v5

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->remaindPower:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->current:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v5, p1, v1

    :goto_2
    iput v5, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->Chargingtime:F

    mul-float v5, v5, v4

    mul-float v5, v5, v4

    mul-float v5, v5, v2

    float-to-long v1, v5

    .line 792
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->Chargingtime:F

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "=\u653e\u7535=="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvDischargeTime:Landroid/widget/TextView;

    invoke-static {v1, v2, v3}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->generateTime(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_power_time_title:Landroid/widget/TextView;

    const v0, 0x7f0d0151

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    if-nez v6, :cond_5

    .line 798
    invoke-direct {p0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->setChartChargeState(Z)V

    .line 800
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->llyDischargeTime:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 801
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->CloseTime()V

    :cond_5
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private StartTime()V
    .locals 0

    return-void
.end method

.method private UpdateDecimal(F)D
    .locals 5

    const-string v0, "\u2212"

    const-string v1, ","

    .line 1169
    :try_start_0
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, ".00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v3, p1

    .line 1170
    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 1171
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "."

    .line 1172
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1173
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "-"

    .line 1174
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1175
    :cond_1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private UpdateNowData()V
    .locals 3

    .line 969
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "deivceRealtimeInfo"

    .line 971
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->toNowDataJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 972
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->syncBatteryInformation(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 978
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->batteryVoltageCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;F)F
    .locals 0

    .line 97
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->totalVoltage:F

    return p1
.end method

.method static synthetic access$1102(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;F)F
    .locals 0

    .line 97
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->remaindPower:F

    return p1
.end method

.method static synthetic access$1202(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;F)F
    .locals 0

    .line 97
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->nominalPower:F

    return p1
.end method

.method static synthetic access$1302(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;I)I
    .locals 0

    .line 97
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->cycleTimes:I

    return p1
.end method

.method static synthetic access$1402(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;F)F
    .locals 0

    .line 97
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->balanceState:F

    return p1
.end method

.method static synthetic access$1502(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->mVoltageList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;F)F
    .locals 0

    .line 97
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->maxVoltage:F

    return p1
.end method

.method static synthetic access$1702(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;F)F
    .locals 0

    .line 97
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->minVoltage:F

    return p1
.end method

.method static synthetic access$1800(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)J
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->counter:J

    return-wide v0
.end method

.method static synthetic access$1808(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)J
    .locals 4

    .line 97
    iget-wide v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->counter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->counter:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->UpdateNowData()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->initConnectName()V

    return-void
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->setUIDatas()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 97
    sget-object v0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->bleDeviceListBean:Lcom/clj/fastble/data/BleDevice;

    return-object p0
.end method

.method static synthetic access$502(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->bleDeviceListBean:Lcom/clj/fastble/data/BleDevice;

    return-object p1
.end method

.method static synthetic access$600(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/jiabaida/little_elephant/thread/SendCMDThread;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->sendThread:Lcom/jiabaida/little_elephant/thread/SendCMDThread;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->checkPermissions()V

    return-void
.end method

.method static synthetic access$800(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;Ljava/lang/String;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->checkBleDeviceBind(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$902(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;I)I
    .locals 0

    .line 97
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->connectBleType:I

    return p1
.end method

.method private checkBleDeviceBind(Ljava/lang/String;)V
    .locals 2

    .line 1268
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v0

    new-instance v1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$14;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$14;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->checkCanBindDevicePermissions(Ljava/lang/String;Lcom/jiabaida/little_elephant/socket/SocketClineListener;)V

    return-void
.end method

.method private checkGPSIsOpen()Z
    .locals 2

    .line 1155
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "gps"

    .line 1158
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkPermissions()V
    .locals 6

    .line 1062
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->isBlueEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0d00a2

    .line 1063
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->showDefaultMsg(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 1067
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1068
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_1

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    const-string v1, "android.permission.BLUETOOTH_ADVERTISE"

    const-string v2, "android.permission.BLUETOOTH_SCAN"

    .line 1069
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 1072
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1073
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 1074
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 1076
    invoke-direct {p0, v4}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->onPermissionGranted(Ljava/lang/String;)V

    goto :goto_1

    .line 1078
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1081
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1082
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1083
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method public static compereByteArray([B[B)Z
    .locals 4

    .line 729
    array-length v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 732
    :cond_0
    array-length v0, p0

    array-length v2, p1

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 736
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 737
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :cond_4
    :goto_1
    return v1
.end method

.method private formatTemp(ILjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/jiabaida/little_elephant/entity/KeyValEntity;",
            ">;)V"
        }
    .end annotation

    .line 837
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 839
    iput-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->UpdetemperatureBeanList:Ljava/util/ArrayList;

    .line 840
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 844
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->temperatureBeanListLeft:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 845
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->temperatureBeanListRight:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 846
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->temperatureBeanListLeft:Ljava/util/List;

    new-instance v0, Lcom/jiabaida/little_elephant/entity/TemperatureBean;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiabaida/little_elephant/entity/KeyValEntity;

    iget-object v2, v2, Lcom/jiabaida/little_elephant/entity/KeyValEntity;->val:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const-string v3, "MOS"

    invoke-direct {v0, v1, v3, v2}, Lcom/jiabaida/little_elephant/entity/TemperatureBean;-><init>(ILjava/lang/String;F)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->temperatureBeanListRight:Ljava/util/List;

    new-instance v0, Lcom/jiabaida/little_elephant/entity/TemperatureBean;

    const v2, 0x7f0d0163

    invoke-virtual {p0, v2}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->humiditynum:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/jiabaida/little_elephant/entity/TemperatureBean;-><init>(ILjava/lang/String;F)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_2

    .line 850
    rem-int/lit8 p1, v1, 0x2

    if-nez p1, :cond_1

    .line 851
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->temperatureBeanListLeft:Ljava/util/List;

    new-instance v0, Lcom/jiabaida/little_elephant/entity/TemperatureBean;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiabaida/little_elephant/entity/KeyValEntity;

    iget-object v2, v2, Lcom/jiabaida/little_elephant/entity/KeyValEntity;->key:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiabaida/little_elephant/entity/KeyValEntity;

    iget-object v3, v3, Lcom/jiabaida/little_elephant/entity/KeyValEntity;->val:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/jiabaida/little_elephant/entity/TemperatureBean;-><init>(ILjava/lang/String;F)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 853
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->temperatureBeanListRight:Ljava/util/List;

    new-instance v0, Lcom/jiabaida/little_elephant/entity/TemperatureBean;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiabaida/little_elephant/entity/KeyValEntity;

    iget-object v2, v2, Lcom/jiabaida/little_elephant/entity/KeyValEntity;->key:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiabaida/little_elephant/entity/KeyValEntity;

    iget-object v3, v3, Lcom/jiabaida/little_elephant/entity/KeyValEntity;->val:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/jiabaida/little_elephant/entity/TemperatureBean;-><init>(ILjava/lang/String;F)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 856
    :cond_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->temperatureAdapterLeft:Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter;

    if-eqz p1, :cond_3

    .line 858
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->rvTemperatureLeft:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 860
    :cond_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->temperatureAdapterRight:Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;

    if-eqz p1, :cond_4

    .line 862
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->rvTemperatureRight:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_4
    return-void
.end method

.method private getProtectStatus()Ljava/lang/String;
    .locals 5

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1013
    :goto_0
    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    iget-object v3, v3, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->protectionStateList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v4, ","

    if-ge v2, v3, :cond_1

    .line 1014
    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    iget-object v3, v3, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->protectionStateList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiabaida/little_elephant/entity/KeyValEntity;

    iget-object v3, v3, Lcom/jiabaida/little_elephant/entity/KeyValEntity;->val:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const-string v3, ""

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1016
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1017
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1018
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private getTemperatures()Lorg/json/JSONArray;
    .locals 6

    .line 1044
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 1045
    :goto_0
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->UpdetemperatureBeanList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1046
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "name"

    .line 1048
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "value"

    .line 1049
    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->UpdetemperatureBeanList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiabaida/little_elephant/entity/KeyValEntity;

    iget-object v4, v4, Lcom/jiabaida/little_elephant/entity/KeyValEntity;->val:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->UpdateDecimal(F)D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 1051
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 1053
    :goto_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getVoltageSeries()Lorg/json/JSONArray;
    .locals 6

    .line 1025
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1026
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->mVoltageList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 1029
    :goto_0
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->mVoltageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1030
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "name"

    .line 1032
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "value"

    .line 1034
    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->mVoltageList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;

    iget v4, v4, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;->voltage:F

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 1036
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 1038
    :goto_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private initConnectName()V
    .locals 4

    .line 408
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->now_voltage_name:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 409
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    const-string v1, "BluetoothMac"

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->isBleConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->now_voltage_name:Landroid/widget/TextView;

    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v2

    const-string v3, "BluetoothName"

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_mac:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 411
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->now_voltage_name:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d017d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_mac:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private initListerView()V
    .locals 2

    .line 889
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->mTvLeftTitle:Landroid/widget/TextView;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$6;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$6;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 896
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->mImgRightTitle:Landroid/widget/ImageView;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$7;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$7;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 904
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->ivLeftCheckBle:Landroid/widget/ImageButton;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$8;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$8;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 921
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->ivRightCheckBle:Landroid/widget/ImageButton;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$9;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$9;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onPermissionGranted(Ljava/lang/String;)V
    .locals 5

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 1088
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x1f

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    :cond_0
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 1089
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_7

    .line 1090
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    const/4 v1, 0x0

    if-lt p1, v0, :cond_2

    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->checkGPSIsOpen()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1091
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d008c

    .line 1092
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0d0070

    .line 1093
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0d0058

    new-instance v2, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$11;

    invoke-direct {v2, p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$11;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V

    .line 1094
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0d00b6

    new-instance v2, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$10;

    invoke-direct {v2, p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$10;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V

    .line 1101
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1110
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1111
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 1114
    :cond_2
    iget p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->connectBleType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v0, 0x3

    const/4 v2, 0x4

    if-eq p1, v0, :cond_3

    if-eq p1, v2, :cond_3

    goto :goto_0

    .line 1129
    :cond_3
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object p1

    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/clj/fastble/BleManager;->disconnect(Lcom/clj/fastble/data/BleDevice;)V

    .line 1130
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->setBleDevice(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/data/BleDevice;

    .line 1131
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v3, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const-string v4, ""

    invoke-direct {v3, v2, v4, v0}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(ILjava/lang/String;[B)V

    invoke-virtual {p1, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1134
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->bleDeviceListBean:Lcom/clj/fastble/data/BleDevice;

    if-eqz p1, :cond_6

    .line 1135
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->showLoading()V

    .line 1136
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->bleDeviceListBean:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->bleGattCallback:Lcom/clj/fastble/callback/BleGattCallback;

    invoke-virtual {p1, v0, v2}, Lcom/clj/fastble/BleManager;->connect(Ljava/lang/String;Lcom/clj/fastble/callback/BleGattCallback;)Landroid/bluetooth/BluetoothGatt;

    goto :goto_0

    .line 1123
    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1124
    sget-object v2, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->KEY_isGoScanCode:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1125
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1117
    :cond_5
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1118
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->KEY_isGoScanCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1119
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->startActivity(Landroid/content/Intent;)V

    .line 1143
    :cond_6
    :goto_0
    iput v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->connectBleType:I

    :cond_7
    :goto_1
    return-void
.end method

.method private setChartChargeState(Z)V
    .locals 4

    .line 961
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->ivChargeLineLeft:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 962
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->ivChargeLineRight:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 963
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->ivChargeLightning:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 964
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->nowTopCircle:Lcom/jiabaida/little_elephant/view/CircleArcView;

    if-eqz p1, :cond_3

    const p1, 0x7f0d0149

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    const-string p1, "SOC"

    :goto_3
    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/view/CircleArcView;->setTopTag(Ljava/lang/String;)V

    return-void
.end method

.method private setProtectionState()V
    .locals 3

    .line 818
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvNowprotectionname:Landroid/widget/TextView;

    const v1, 0x7f0d0181

    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 819
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvNowprotectionname:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 820
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvNowProtection:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->setTextChargeState(Landroid/widget/TextView;Z)V

    .line 821
    iput v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->mProtectStatus:I

    .line 822
    :goto_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->protectionStateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 823
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->protectionStateList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiabaida/little_elephant/entity/KeyValEntity;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/KeyValEntity;->val:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvNowprotectionname:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    iget-object v2, v2, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->protectionStateList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/KeyValEntity;

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/KeyValEntity;->key:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 825
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvNowprotectionname:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 826
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvNowProtection:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->setTextChargeState(Landroid/widget/TextView;Z)V

    .line 827
    iput v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->mProtectStatus:I

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setTextChargeState(Landroid/widget/TextView;Z)V
    .locals 4

    if-eqz p2, :cond_0

    .line 947
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 949
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v1, 0x0

    .line 950
    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 951
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_1

    const v1, 0x7f0d0192

    goto :goto_1

    :cond_1
    const v1, 0x7f0d0191

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_2

    .line 952
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f050099

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f05009e

    :goto_2
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setUIDatas()V
    .locals 13

    .line 652
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    iget v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->serial:I

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 655
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->setBaseInfoCMDEntity(Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;)V

    .line 657
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->v2_now_Residualcapacity:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->remaindPower:F

    float-to-double v2, v2

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatFloat(DI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "AH"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_total_voltage_a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->totalVoltage:F

    float-to-double v5, v3

    invoke-static {v5, v6, v4}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatFloat(DI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "V"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_electric_a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->current:F

    float-to-double v5, v5

    invoke-static {v5, v6, v4}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatFloat(DI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "A"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_number_cycles_a:Landroid/widget/TextView;

    iget v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->cycleTimes:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_voltage_a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->totalVoltage:F

    sget v6, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->current:F

    mul-float v5, v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6, v4}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatFloat(DI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "W"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->RSOC:I

    const/16 v1, 0x64

    const/4 v5, 0x0

    if-gt v0, v1, :cond_1

    .line 664
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->nowTopCircle:Lcom/jiabaida/little_elephant/view/CircleArcView;

    int-to-float v0, v0

    const/high16 v6, 0x42c80000    # 100.0f

    const-string v7, "SOC"

    invoke-virtual {v1, v7, v0, v6, v5}, Lcom/jiabaida/little_elephant/view/CircleArcView;->setParams(Ljava/lang/String;FFI)V

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_nominal_capacity:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->nominalPower:F

    float-to-double v6, v6

    invoke-static {v6, v7, v4}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatFloat(DI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    sget-boolean v0, Lcom/jiabaida/little_elephant/app/AppConfig;->BleBindStatus:Z

    const-string v1, "sp_key_ble_auth"

    const/4 v2, 0x3

    if-nez v0, :cond_3

    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Lcom/jiabaida/little_elephant/util/SPUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x3

    .line 671
    :goto_1
    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_voltage_average_a:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->totalVoltage:F

    sget v9, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9, v0}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatFloat(DI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_max_voltage_a:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->batteryVoltageCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    iget v8, v8, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->maxVoltage:F

    float-to-double v8, v8

    invoke-static {v8, v9, v0}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatFloat(DI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_min_voltage_a:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->batteryVoltageCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    iget v8, v8, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->minVoltage:F

    float-to-double v8, v8

    invoke-static {v8, v9, v0}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatFloat(DI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_max_voltage_a:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 675
    iget-object v8, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_min_voltage_a:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 677
    :try_start_0
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    sub-float/2addr v8, v9

    .line 678
    iget-object v9, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_pressure_a:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v11, v8

    invoke-static {v11, v12, v0}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatFloat(DI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 680
    :catch_0
    iget-object v8, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_max_voltage_a:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    const-string v10, "."

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 681
    iget-object v11, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_min_voltage_a:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 682
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    sub-float/2addr v8, v9

    .line 683
    iget-object v9, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_pressure_a:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v11, v8

    invoke-static {v11, v12, v0}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatFloat(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    sget-object v0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseFloat\u5f02\u5e38 : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    :goto_2
    sget v0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->current:F

    invoke-direct {p0, v0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->SetChargingIcon(F)V

    .line 689
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    iget v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->ntcNum:I

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    iget-object v3, v3, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->tempList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->formatTemp(ILjava/util/ArrayList;)V

    .line 691
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->setProtectionState()V

    .line 694
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    iget v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->current:F

    const/4 v3, 0x0

    const/4 v6, 0x1

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, v0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->setChartChargeState(Z)V

    .line 696
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvNowCharge:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    iget-boolean v3, v3, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->chargeSwithOnOff:Z

    invoke-direct {p0, v0, v3}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->setTextChargeState(Landroid/widget/TextView;Z)V

    .line 697
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvNowDischarge:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    iget-boolean v3, v3, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->outputSwitchOnOff:Z

    invoke-direct {p0, v0, v3}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->setTextChargeState(Landroid/widget/TextView;Z)V

    .line 700
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvNowEqualization:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    iget v3, v3, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->balanceState:I

    if-lez v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    invoke-direct {p0, v0, v6}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->setTextChargeState(Landroid/widget/TextView;Z)V

    .line 702
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->batteryVoltageCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->getVoltageList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 703
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->batteryVoltageCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    invoke-virtual {v0, v3}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->setVoltageCMDEntity(Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;)V

    .line 704
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->singleVoltageBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 705
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Lcom/jiabaida/little_elephant/util/SPUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 706
    :goto_5
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->batteryVoltageCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->getVoltageList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_8

    .line 708
    sget-boolean v1, Lcom/jiabaida/little_elephant/app/AppConfig;->BleBindStatus:Z

    if-nez v1, :cond_7

    if-eqz v0, :cond_6

    goto :goto_6

    .line 711
    :cond_6
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->batteryVoltageCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->getVoltageList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;

    iget v1, v1, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;->voltage:F

    invoke-static {v1, v4}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatDouble(FI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_7

    .line 709
    :cond_7
    :goto_6
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->batteryVoltageCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->getVoltageList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;

    iget v1, v1, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;->voltage:F

    invoke-static {v1, v2}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatDouble(FI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 713
    :goto_7
    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->singleVoltageBeanList:Ljava/util/List;

    new-instance v6, Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;

    add-int/lit8 v5, v5, 0x1

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-direct {v6, v5, v1, v7}, Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;-><init>(IFF)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 715
    :cond_8
    new-instance v0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->singleVoltageBeanList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->singleVoltageAdapter:Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;

    .line 716
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->singleVoltageBeanList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->calculate(Ljava/util/List;)V

    .line 717
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->rvSignleVoltage:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->singleVoltageAdapter:Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_9
    :goto_8
    return-void
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a005a

    return v0
.end method

.method public bindDevice(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 636
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->hideLoading()V

    const-string v0, "code"

    .line 638
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/CauseUtils;->getCauseStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->showDefaultMsg(Ljava/lang/String;)V

    return-void
.end method

.method public canBindDevice(Lorg/json/JSONObject;)V
    .locals 2

    .line 611
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->bind_ble_text:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 612
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0d0142

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$5;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$5;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V

    invoke-static {p1, v0, v1}, Lcom/jiabaida/little_elephant/view/DialogHelper;->showDialog(Landroid/content/Context;Ljava/lang/String;Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;)V

    return-void
.end method

.method public changeLayoutVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 645
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->bind_ble_text:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public changeVoltageStatus(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1302
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->llVoltageStatus:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1303
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->rvSignleVoltage:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1304
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvVoltageTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1306
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->llVoltageStatus:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1307
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->rvSignleVoltage:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1308
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvVoltageTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public fromToJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 876
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 878
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected initData()V
    .locals 7

    .line 579
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvNowCharge:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->setTextChargeState(Landroid/widget/TextView;Z)V

    .line 580
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvNowEqualization:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->setTextChargeState(Landroid/widget/TextView;Z)V

    .line 581
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvNowDischarge:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->setTextChargeState(Landroid/widget/TextView;Z)V

    .line 582
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvNowProtection:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->setTextChargeState(Landroid/widget/TextView;Z)V

    .line 584
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->nowTopCircle:Lcom/jiabaida/little_elephant/view/CircleArcView;

    const-string v2, "SOC"

    const/4 v3, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/jiabaida/little_elephant/view/CircleArcView;->setParams(Ljava/lang/String;FFI)V

    .line 586
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->temperatureBeanListLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 587
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->temperatureBeanListRight:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 588
    new-instance v0, Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter;

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->temperatureBeanListLeft:Ljava/util/List;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->temperatureAdapterLeft:Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter;

    .line 589
    new-instance v0, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->temperatureBeanListRight:Ljava/util/List;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->temperatureAdapterRight:Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;

    .line 591
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->temperatureBeanListLeft:Ljava/util/List;

    new-instance v2, Lcom/jiabaida/little_elephant/entity/TemperatureBean;

    const-string v4, "MOS"

    invoke-direct {v2, v1, v4, v3}, Lcom/jiabaida/little_elephant/entity/TemperatureBean;-><init>(ILjava/lang/String;F)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->temperatureBeanListRight:Ljava/util/List;

    new-instance v2, Lcom/jiabaida/little_elephant/entity/TemperatureBean;

    const v4, 0x7f0d0163

    invoke-virtual {p0, v4}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4, v3}, Lcom/jiabaida/little_elephant/entity/TemperatureBean;-><init>(ILjava/lang/String;F)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 594
    rem-int/lit8 v2, v0, 0x2

    const-string v4, "T"

    if-nez v2, :cond_0

    .line 595
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->temperatureBeanListLeft:Ljava/util/List;

    new-instance v5, Lcom/jiabaida/little_elephant/entity/TemperatureBean;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v0, v4, v3}, Lcom/jiabaida/little_elephant/entity/TemperatureBean;-><init>(ILjava/lang/String;F)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 597
    :cond_0
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->temperatureBeanListRight:Ljava/util/List;

    new-instance v5, Lcom/jiabaida/little_elephant/entity/TemperatureBean;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v0, v4, v3}, Lcom/jiabaida/little_elephant/entity/TemperatureBean;-><init>(ILjava/lang/String;F)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->rvTemperatureLeft:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->temperatureAdapterLeft:Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 603
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->rvTemperatureRight:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->temperatureAdapterRight:Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 605
    invoke-direct {p0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->setChartChargeState(Z)V

    .line 606
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->initListerView()V

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 4

    .line 447
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance(Landroid/content/Context;)Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->spUtils:Lcom/jiabaida/little_elephant/util/SPUtils;

    const v0, 0x7f080150

    .line 449
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->now_voltage_name:Landroid/widget/TextView;

    const v0, 0x7f08023e

    .line 450
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_mac:Landroid/widget/TextView;

    const v0, 0x7f0802ab

    .line 451
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->v2_now_Residualcapacity:Landroid/widget/TextView;

    const v0, 0x7f080255

    .line 452
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_total_voltage_a:Landroid/widget/TextView;

    const v0, 0x7f080248

    .line 453
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_electric_a:Landroid/widget/TextView;

    const v0, 0x7f080257

    .line 454
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_voltage_a:Landroid/widget/TextView;

    const v0, 0x7f08024b

    .line 455
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_max_voltage_a:Landroid/widget/TextView;

    const v0, 0x7f08024d

    .line 456
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_min_voltage_a:Landroid/widget/TextView;

    const v0, 0x7f080251

    .line 457
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_pressure_a:Landroid/widget/TextView;

    const v0, 0x7f08024f

    .line 458
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_number_cycles_a:Landroid/widget/TextView;

    const v0, 0x7f080258

    .line 459
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_voltage_average_a:Landroid/widget/TextView;

    const v0, 0x7f08014f

    .line 462
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->now_voltage_layout:Landroid/widget/LinearLayout;

    const v0, 0x7f080151

    .line 463
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->now_voltage_view:Landroid/view/View;

    const v0, 0x7f08021b

    .line 464
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_charging_voltage:Landroid/widget/TextView;

    const v0, 0x7f08021a

    .line 465
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_charging_current:Landroid/widget/TextView;

    const v0, 0x7f08022b

    .line 466
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_discharge_current:Landroid/widget/TextView;

    const v0, 0x7f08022c

    .line 467
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_discharge_power:Landroid/widget/TextView;

    const v0, 0x7f080245

    .line 468
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_nominal_capacity:Landroid/widget/TextView;

    const v0, 0x7f08025d

    .line 470
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_power_time_title:Landroid/widget/TextView;

    const v0, 0x7f0802a1

    .line 472
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->mTvLeftTitle:Landroid/widget/TextView;

    const v0, 0x7f0800fc

    .line 473
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->mImgRightTitle:Landroid/widget/ImageView;

    .line 474
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->mTvLeftTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08014e

    .line 475
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiabaida/little_elephant/view/CircleArcView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->nowTopCircle:Lcom/jiabaida/little_elephant/view/CircleArcView;

    const v0, 0x7f080177

    .line 476
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->rvSignleVoltage:Landroidx/recyclerview/widget/RecyclerView;

    .line 478
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const v0, 0x7f080178

    .line 479
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->rvTemperatureLeft:Landroidx/recyclerview/widget/RecyclerView;

    .line 480
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const v0, 0x7f080179

    .line 481
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->rvTemperatureRight:Landroidx/recyclerview/widget/RecyclerView;

    .line 482
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const v0, 0x7f0800e6

    .line 483
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->ivChargeLineLeft:Landroid/widget/ImageView;

    const v0, 0x7f0800e7

    .line 484
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->ivChargeLineRight:Landroid/widget/ImageView;

    const v0, 0x7f0800e5

    .line 485
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->ivChargeLightning:Landroid/widget/ImageView;

    const v0, 0x7f080246

    .line 486
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvNowCharge:Landroid/widget/TextView;

    const v0, 0x7f08024a

    .line 487
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvNowEqualization:Landroid/widget/TextView;

    const v0, 0x7f080247

    .line 488
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvNowDischarge:Landroid/widget/TextView;

    const v0, 0x7f080253

    .line 489
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvNowProtection:Landroid/widget/TextView;

    const v0, 0x7f080254

    .line 490
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvNowprotectionname:Landroid/widget/TextView;

    const v0, 0x7f080124

    .line 491
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->llyDischargeTime:Landroid/widget/LinearLayout;

    const v0, 0x7f08022d

    .line 492
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvDischargeTime:Landroid/widget/TextView;

    const v0, 0x7f0800ea

    .line 493
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->ivLeftCheckBle:Landroid/widget/ImageButton;

    const v0, 0x7f0800f8

    .line 494
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->ivRightCheckBle:Landroid/widget/ImageButton;

    const v0, 0x7f08012d

    .line 495
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->llyNowRemaindPowerLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f080029

    .line 496
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->bind_ble_text:Landroid/widget/TextView;

    .line 497
    new-instance v1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$3;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$3;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->now_voltage_name:Landroid/widget/TextView;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$4;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$4;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->IsConnectBlue()V

    const v0, 0x7f080118

    .line 529
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->llVoltageStatus:Landroid/widget/LinearLayout;

    const v0, 0x7f0802a7

    .line 530
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvVoltageTitle:Landroid/widget/TextView;

    .line 532
    sget-boolean p1, Lcom/jiabaida/little_elephant/util/BleUtils;->displayVoltage:Z

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->changeVoltageStatus(Z)V

    return-void
.end method

.method protected initViewPager(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method synthetic lambda$onCreate$0$com-jiabaida-little_elephant-ui-fragment-NowFragment()V
    .locals 2

    .line 250
    :goto_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->sendThread:Lcom/jiabaida/little_elephant/thread/SendCMDThread;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/thread/SendCMDThread;->pauseThread()V

    .line 251
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 253
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->batteryVoltageCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    :cond_0
    const-wide/16 v0, 0x7d0

    .line 255
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method

.method synthetic lambda$sendAppKey$1$com-jiabaida-little_elephant-ui-fragment-NowFragment()V
    .locals 4

    const-wide/16 v0, 0xc8

    .line 1319
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 1321
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->cleanPsw()V

    .line 1324
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->sendAppKey()V

    .line 1325
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->BletimeHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method synthetic lambda$showPswDialog$2$com-jiabaida-little_elephant-ui-fragment-NowFragment(Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1339
    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 1340
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v0, 0x4

    if-eqz p3, :cond_0

    .line 1341
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgbyte()[B

    move-result-object p1

    aget-byte p1, p1, v0

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/util/BleUtils;->sendSecondLevPsw(BLjava/lang/String;)V

    goto :goto_0

    .line 1343
    :cond_0
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgbyte()[B

    move-result-object p1

    aget-byte p1, p1, v0

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/util/BleUtils;->sendFirstLevPsw(BLjava/lang/String;)V

    .line 1347
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->showLoading()V

    return-void
.end method

.method synthetic lambda$showPswDialog$3$com-jiabaida-little_elephant-ui-fragment-NowFragment(Z)V
    .locals 4

    .line 1349
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->hideLoading()V

    if-eqz p1, :cond_0

    .line 1351
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object p1

    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/clj/fastble/BleManager;->disconnect(Lcom/clj/fastble/data/BleDevice;)V

    .line 1352
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->setBleDevice(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/data/BleDevice;

    .line 1353
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->hideLoading()V

    .line 1354
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const/4 v2, 0x4

    const-string v3, ""

    invoke-direct {v1, v2, v3, v0}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(ILjava/lang/String;[B)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$showPswDialog$4$com-jiabaida-little_elephant-ui-fragment-NowFragment(Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1360
    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 1361
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v0, 0x4

    if-eqz p3, :cond_0

    .line 1362
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgbyte()[B

    move-result-object p1

    aget-byte p1, p1, v0

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/util/BleUtils;->sendSecondLevPsw(BLjava/lang/String;)V

    goto :goto_0

    .line 1364
    :cond_0
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgbyte()[B

    move-result-object p1

    aget-byte p1, p1, v0

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/util/BleUtils;->sendFirstLevPsw(BLjava/lang/String;)V

    .line 1367
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->showLoading()V

    return-void
.end method

.method synthetic lambda$showPswDialog$5$com-jiabaida-little_elephant-ui-fragment-NowFragment()V
    .locals 0

    .line 1369
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->hideLoading()V

    return-void
.end method

.method protected lazyLoad()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 242
    invoke-super {p0, p1}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->onCreate(Landroid/os/Bundle;)V

    .line 243
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    .line 244
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->batteryVoltageCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    .line 245
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->baseInfoResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 246
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->batteryVoltageCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->voltageResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 247
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->sendHeartPkg()V

    .line 248
    new-instance p1, Lcom/jiabaida/little_elephant/thread/SendCMDThread;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$$ExternalSyntheticLambda4;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V

    invoke-direct {p1, v0}, Lcom/jiabaida/little_elephant/thread/SendCMDThread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->sendThread:Lcom/jiabaida/little_elephant/thread/SendCMDThread;

    .line 258
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/thread/SendCMDThread;->start()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1163
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->onDestroy()V

    .line 1164
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->CloseTime()V

    return-void
.end method

.method public onEventBusMsg(Lcom/jiabaida/little_elephant/eventbus/EventBusBMSMsg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 545
    :cond_0
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->initConnectName()V

    .line 546
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusBMSMsg;->getMsgCode()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    const/16 v1, 0x76

    if-eq v0, v1, :cond_3

    const/16 p1, 0x3e9

    if-eq v0, p1, :cond_2

    const/16 p1, 0x3ea

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 567
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->sendThread:Lcom/jiabaida/little_elephant/thread/SendCMDThread;

    if-eqz p1, :cond_5

    .line 568
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/thread/SendCMDThread;->onResume()V

    goto :goto_0

    .line 563
    :cond_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->sendThread:Lcom/jiabaida/little_elephant/thread/SendCMDThread;

    if-eqz p1, :cond_5

    .line 564
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/thread/SendCMDThread;->onPause()V

    goto :goto_0

    .line 558
    :cond_3
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->hideLoading()V

    .line 559
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusBMSMsg;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 560
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/CauseUtils;->getCauseStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 550
    :cond_4
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->readContent:[B

    .line 551
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusBMSMsg;->getMsgbyte()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInfoContent([B)[B

    move-result-object p1

    .line 553
    invoke-static {p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->Getbytearray([B)[B

    move-result-object v0

    invoke-static {p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->Getbytearray([B)[B

    move-result-object p1

    array-length p1, p1

    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->BmsIDbyte2HexStr([BI)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->convertHexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 554
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->BMS_model:Ljava/lang/String;

    .line 555
    sget-object p1, Lcom/jiabaida/little_elephant/app/Constant_xx;->bmsDataBean:Lcom/jiabaida/little_elephant/db/BmsBaseInfoBean;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->BMS_model:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/db/BmsBaseInfoBean;->setBmsModle(Ljava/lang/String;)V

    .line 573
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->hideLoading()V

    return-void
.end method

.method protected onFragmentVisibleChange(Z)V
    .locals 1

    .line 285
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->isVisible:Z

    if-eqz p1, :cond_3

    .line 288
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p1

    if-nez p1, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->setInitData()V

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->StartTime()V

    .line 292
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->sendThread:Lcom/jiabaida/little_elephant/thread/SendCMDThread;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/thread/SendCMDThread;->isPause()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 293
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->sendThread:Lcom/jiabaida/little_elephant/thread/SendCMDThread;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/thread/SendCMDThread;->onResume()V

    .line 295
    :cond_1
    sget-boolean p1, Lcom/jiabaida/little_elephant/app/AppConfig;->BleIsCanBind:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->isLogin()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 296
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->bind_ble_text:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 298
    :cond_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->bind_ble_text:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    :goto_0
    sget-boolean p1, Lcom/jiabaida/little_elephant/util/BleUtils;->displayVoltage:Z

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->changeVoltageStatus(Z)V

    goto :goto_1

    .line 302
    :cond_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->sendThread:Lcom/jiabaida/little_elephant/thread/SendCMDThread;

    if-eqz p1, :cond_4

    .line 303
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/thread/SendCMDThread;->onPause()V

    .line 304
    :cond_4
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->CloseTime()V

    .line 306
    :goto_1
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->initConnectName()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 1313
    invoke-super {p0, p1}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->onHiddenChanged(Z)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 277
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->onPause()V

    .line 278
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->CloseTime()V

    .line 279
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->sendThread:Lcom/jiabaida/little_elephant/thread/SendCMDThread;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/thread/SendCMDThread;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 264
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->onResume()V

    .line 265
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->StartTime()V

    .line 266
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->initConnectName()V

    .line 267
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->isVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->sendThread:Lcom/jiabaida/little_elephant/thread/SendCMDThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/thread/SendCMDThread;->isPause()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->sendThread:Lcom/jiabaida/little_elephant/thread/SendCMDThread;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/thread/SendCMDThread;->onResume()V

    .line 270
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    if-nez v0, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->setInitData()V

    :cond_1
    return-void
.end method

.method public pswError()V
    .locals 3

    .line 1381
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d009e

    invoke-virtual {p0, v2}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    .line 1382
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->hideLoading()V

    .line 1383
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1384
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clj/fastble/BleManager;->disconnect(Lcom/clj/fastble/data/BleDevice;)V

    .line 1385
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->setBleDevice(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/data/BleDevice;

    :cond_0
    return-void
.end method

.method public pswPass()V
    .locals 1

    .line 1375
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->hideLoading()V

    .line 1376
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->sendThread:Lcom/jiabaida/little_elephant/thread/SendCMDThread;

    if-eqz v0, :cond_0

    .line 1377
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/thread/SendCMDThread;->onResume()V

    :cond_0
    return-void
.end method

.method public sendAppKey()V
    .locals 2

    .line 1318
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$$ExternalSyntheticLambda5;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1330
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setInitData()V
    .locals 3

    .line 427
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->initData()V

    .line 428
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvNowprotectionname:Landroid/widget/TextView;

    const v1, 0x7f0d0181

    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tvNowprotectionname:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 430
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_total_voltage_a:Landroid/widget/TextView;

    const-string v1, "0.0 V"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_electric_a:Landroid/widget/TextView;

    const-string v2, "0.0 A"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_voltage_a:Landroid/widget/TextView;

    const-string v2, "0.0 W"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_max_voltage_a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_min_voltage_a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_voltage_average_a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_pressure_a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->tv_now_number_cycles_a:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->singleVoltageBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 439
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->singleVoltageAdapter:Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->notifyDataSetChanged()V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->v2_now_Residualcapacity:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showPswDialog(Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;Z)V
    .locals 3

    .line 1334
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->BletimeHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "xzx"

    const-string v1, "NowFragment passWordDialog  show()"

    .line 1335
    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1337
    invoke-static {}, Lcom/jiabaida/little_elephant/util/DialogUtils;->getInstances()Lcom/jiabaida/little_elephant/util/DialogUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$$ExternalSyntheticLambda2;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;)V

    new-instance p1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$$ExternalSyntheticLambda1;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;Z)V

    invoke-virtual {v0, v1, v2, p1}, Lcom/jiabaida/little_elephant/util/DialogUtils;->passWordDialog(Landroid/content/Context;Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;Lcom/jiabaida/little_elephant/util/DialogUtils$OnCancelClickListener;)V

    goto :goto_0

    .line 1358
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/DialogUtils;->getInstances()Lcom/jiabaida/little_elephant/util/DialogUtils;

    move-result-object p2

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$$ExternalSyntheticLambda3;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;)V

    new-instance p1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$$ExternalSyntheticLambda0;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V

    invoke-virtual {p2, v0, v1, p1}, Lcom/jiabaida/little_elephant/util/DialogUtils;->passWordDialog2(Landroid/content/Context;Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;Lcom/jiabaida/little_elephant/util/DialogUtils$OnCancelClickListener;)V

    :goto_0
    return-void
.end method

.method public threadPause()V
    .locals 1

    .line 1291
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->sendThread:Lcom/jiabaida/little_elephant/thread/SendCMDThread;

    if-eqz v0, :cond_0

    .line 1292
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/thread/SendCMDThread;->onPause()V

    :cond_0
    return-void
.end method

.method public threadResume()V
    .locals 1

    .line 1296
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->sendThread:Lcom/jiabaida/little_elephant/thread/SendCMDThread;

    if-eqz v0, :cond_0

    .line 1297
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/thread/SendCMDThread;->onResume()V

    :cond_0
    return-void
.end method

.method public toNowDataJson()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 984
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 985
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->RSOC:I

    const-string v2, "soc"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 986
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->remaindPower:F

    invoke-direct {p0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->UpdateDecimal(F)D

    move-result-wide v1

    const-string v3, "surplusCapacity"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 987
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->totalVoltage:F

    invoke-direct {p0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->UpdateDecimal(F)D

    move-result-wide v1

    const-string v3, "totalVoltage"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 988
    sget v1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->current:F

    invoke-direct {p0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->UpdateDecimal(F)D

    move-result-wide v1

    const-string v3, "electricity"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 989
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->totalVoltage:F

    sget v2, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->current:F

    mul-float v1, v1, v2

    float-to-double v1, v1

    const-string v3, "power"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 990
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->maxVoltage:F

    invoke-direct {p0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->UpdateDecimal(F)D

    move-result-wide v1

    const-string v3, "ceilingVoltage"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 991
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->minVoltage:F

    invoke-direct {p0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->UpdateDecimal(F)D

    move-result-wide v1

    const-string v3, "minimumVoltage"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 992
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->maxVoltage:F

    iget v2, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->minVoltage:F

    sub-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->UpdateDecimal(F)D

    move-result-wide v1

    const-string v3, "dropoutVoltage"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 993
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->cycleTimes:I

    const-string v2, "cycleIndex"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 994
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->totalVoltage:F

    sget v2, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->UpdateDecimal(F)D

    move-result-wide v1

    const-string v3, "avgVoltage"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 995
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->humiditynum:I

    int-to-float v1, v1

    float-to-double v1, v1

    const-string v3, "humidity"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 996
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->equilibriumState:I

    const-string v2, "equilibriumStatus"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 997
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->mProtectStatus:I

    const-string v2, "protectStatus"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 998
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getProtectStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "protectStatusIndex"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1001
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    iget-boolean v1, v1, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->chargeSwithOnOff:Z

    const-string v2, "chargeSwitch"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1002
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    iget-boolean v1, v1, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->outputSwitchOnOff:Z

    const-string v2, "dischargeSwitch"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1003
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getVoltageSeries()Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "voltageSeries"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1004
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getTemperatures()Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "temperatures"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1006
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v1

    const-string v2, "BluetoothName"

    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bluetoothName"

    .line 1007
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method protected useEventBus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
