.class public Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "ScanBleDevicesActivity.java"


# static fields
.field public static KEY_isGoScanCode:Ljava/lang/String; = "is_go_scan_code"

.field private static final REQUEST_CODE_OPEN_GPS:I = 0x1

.field private static final REQUEST_CODE_PERMISSION_LOCATION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.activity.ScanBleDevicesActivity"


# instance fields
.field bleGattCallback:Lcom/clj/fastble/callback/BleGattCallback;

.field private final bleSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentFirstPsw:Ljava/lang/String;

.field private edtSearch:Landroid/widget/EditText;

.field private flTopBack:Landroid/widget/FrameLayout;

.field private flTopBack2:Landroid/widget/FrameLayout;

.field private final hideDialog:I

.field private isAutoPsw:Z

.field private isCheckPsw:Z

.field private isConnecting:Z

.field private isGoScanCode:Z

.field private isSearchUUID:Z

.field private ivTopTitleQrc:Landroid/widget/ImageView;

.field private ivTopTitleSearch:Landroid/widget/ImageView;

.field private listviewScanBle:Landroidx/recyclerview/widget/RecyclerView;

.field private llyTopTitleBg1:Landroid/widget/RelativeLayout;

.field private llyTopTitleBg2:Landroid/widget/LinearLayout;

.field private mBaseAppKey:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mScanResultStr:Ljava/lang/String;

.field private onScanStarted:Z

.field private scanBleDevicesAdapter:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

.field private final scanBleDevicesBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;",
            ">;"
        }
    .end annotation
.end field

.field private searchValue:Ljava/lang/String;

.field private serviceUuids:[Ljava/util/UUID;

.field private swRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private tcpCleanType:Ljava/lang/String;

.field private final toMainWhat:I

.field private tvTopSearch:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 87
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isGoScanCode:Z

    .line 110
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->onScanStarted:Z

    .line 113
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isConnecting:Z

    const-string v1, ""

    .line 114
    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->mScanResultStr:Ljava/lang/String;

    const/16 v2, 0x64

    .line 137
    iput v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->toMainWhat:I

    const/16 v2, 0x65

    .line 138
    iput v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->hideDialog:I

    .line 142
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isAutoPsw:Z

    .line 146
    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->currentFirstPsw:Ljava/lang/String;

    .line 150
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isCheckPsw:Z

    .line 152
    new-instance v2, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->mHandler:Landroid/os/Handler;

    .line 239
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->scanBleDevicesBeanList:Ljava/util/List;

    .line 241
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->bleSet:Ljava/util/HashSet;

    .line 242
    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->mBaseAppKey:Ljava/lang/String;

    .line 455
    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->searchValue:Ljava/lang/String;

    .line 456
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isSearchUUID:Z

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/UUID;

    const-string v2, "0000ff00-0000-1000-8000-00805f9b34fb"

    .line 460
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->serviceUuids:[Ljava/util/UUID;

    .line 721
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->bleGattCallback:Lcom/clj/fastble/callback/BleGattCallback;

    const-string v0, "0"

    .line 1049
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->tcpCleanType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isCheckPsw:Z

    return p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->goToMain()V

    return-void
.end method

.method static synthetic access$1000(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->startSearchScanRule(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->startScan()V

    return-void
.end method

.method static synthetic access$1202(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->onScanStarted:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Landroid/os/Handler;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isSearchUUID:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)[Ljava/util/UUID;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->serviceUuids:[Ljava/util/UUID;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isConnecting:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isConnecting:Z

    return p1
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .locals 1

    .line 87
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->checkPermissions()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Ljava/util/List;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->scanBleDevicesBeanList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->mBaseAppKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->mBaseAppKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->removeMsg()V

    return-void
.end method

.method static synthetic access$500(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->connectBle(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Lcom/clj/fastble/data/BleDevice;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->disConnectBle(Lcom/clj/fastble/data/BleDevice;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->scanBleDevicesAdapter:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Landroid/widget/EditText;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->edtSearch:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$900(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->mScanResultStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->mScanResultStr:Ljava/lang/String;

    return-object p1
.end method

.method private checkGPSIsOpen()Z
    .locals 2

    const-string v0, "location"

    .line 1195
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "gps"

    .line 1198
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkPermissions()V
    .locals 7

    .line 1125
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->checkGPSIsOpen()Z

    move-result v0

    const/16 v1, 0x1f

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_0

    .line 1126
    invoke-static {}, Lcom/jiabaida/little_elephant/util/DialogUtils;->getInstances()Lcom/jiabaida/little_elephant/util/DialogUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jiabaida/little_elephant/util/DialogUtils;->showGpsDialog(Landroid/content/Context;)V

    return-void

    .line 1129
    :cond_0
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->isBlueEnable()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0d00a2

    .line 1130
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->showDefaultMsg(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 1134
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1135
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_2

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    const-string v1, "android.permission.BLUETOOTH_ADVERTISE"

    const-string v2, "android.permission.BLUETOOTH_SCAN"

    .line 1136
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 1139
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1140
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v0, v4

    .line 1141
    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    .line 1143
    invoke-direct {p0, v5}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->onPermissionGranted(Ljava/lang/String;)V

    goto :goto_1

    .line 1145
    :cond_3
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1148
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    new-array v0, v3, [Ljava/lang/String;

    .line 1149
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x2

    .line 1150
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method private checkedPsw(Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;)V
    .locals 3

    const/4 v0, 0x1

    .line 1003
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isCheckPsw:Z

    .line 1004
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->removeMsg()V

    const-string v1, "xzx"

    const-string v2, "ScanBleDevicesActivity passWordDialog  show()"

    .line 1005
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v1

    const-string v2, "BluetoothMac"

    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1007
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1009
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1010
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1011
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isAutoPsw:Z

    .line 1012
    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->currentFirstPsw:Ljava/lang/String;

    .line 1013
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgbyte()[B

    move-result-object p1

    const/4 v0, 0x4

    aget-byte p1, p1, v0

    invoke-static {p1, v1}, Lcom/jiabaida/little_elephant/util/BleUtils;->sendFirstLevPsw(BLjava/lang/String;)V

    return-void

    .line 1018
    :cond_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1021
    :cond_1
    invoke-static {}, Lcom/jiabaida/little_elephant/util/DialogUtils;->getInstances()Lcom/jiabaida/little_elephant/util/DialogUtils;

    move-result-object v0

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$$ExternalSyntheticLambda8;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;)V

    new-instance p1, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$6;

    invoke-direct {p1, p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$6;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)V

    invoke-virtual {v0, p0, v1, p1}, Lcom/jiabaida/little_elephant/util/DialogUtils;->passWordDialog(Landroid/content/Context;Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;Lcom/jiabaida/little_elephant/util/DialogUtils$OnCancelClickListener;)V

    return-void
.end method

.method private connectBle(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;)V
    .locals 2

    .line 703
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isConnecting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "xzx"

    const-string v1, "\u5f00\u59cb\u8fde\u63a5\u84dd\u7259\u8bbe\u5907"

    .line 706
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 707
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isConnecting:Z

    .line 708
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->showLoading()V

    .line 711
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object p2

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->bleGattCallback:Lcom/clj/fastble/callback/BleGattCallback;

    invoke-virtual {p2, p1, v0}, Lcom/clj/fastble/BleManager;->connect(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/callback/BleGattCallback;)Landroid/bluetooth/BluetoothGatt;

    goto :goto_0

    .line 713
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 714
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->bleGattCallback:Lcom/clj/fastble/callback/BleGattCallback;

    invoke-virtual {p1, p2, v0}, Lcom/clj/fastble/BleManager;->connect(Ljava/lang/String;Lcom/clj/fastble/callback/BleGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method private disConnectBle(Lcom/clj/fastble/data/BleDevice;I)V
    .locals 3

    .line 399
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/clj/fastble/BleManager;->disconnect(Lcom/clj/fastble/data/BleDevice;)V

    .line 400
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->setBleDevice(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/data/BleDevice;

    .line 401
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->scanBleDevicesAdapter:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    if-eqz p1, :cond_1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 403
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->notifyItemChanged(I)V

    .line 408
    :cond_1
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {p2, v1, v2, v0}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(ILjava/lang/String;[B)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private getRandom(Ljava/lang/String;)V
    .locals 0

    .line 1051
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->tcpCleanType:Ljava/lang/String;

    .line 1052
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->getRandom()V

    return-void
.end method

.method private getSocketFactoryList()V
    .locals 7

    .line 352
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 353
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "command"

    const/16 v3, 0x90

    .line 354
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "data"

    .line 355
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "txnNo"

    .line 357
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "token"

    .line 358
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v5

    const-string v6, "sp_key_user_token"

    invoke-virtual {v5, v6}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    new-instance v1, Lcom/jiabaida/little_elephant/socket/PkgDataBean;

    invoke-direct {v1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;-><init>()V

    .line 362
    invoke-virtual {v1, v3}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setCmd(I)V

    const/16 v3, 0x91

    .line 363
    invoke-virtual {v1, v3}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setMsgType(I)V

    .line 364
    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setData(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setTxnNo(Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/NettyClient;->getInstance()Lcom/jiabaida/little_elephant/socket/NettyClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/socket/NettyClient;->sendDatas(Lcom/jiabaida/little_elephant/socket/PkgDataBean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 369
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private goScanCode()V
    .locals 3

    .line 417
    :try_start_0
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->cancelScan()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 419
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 422
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 423
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->startActivity(Landroid/content/Intent;)V

    .line 424
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$3;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)V

    invoke-static {v0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->setScanerListener(Lcom/libs/qrcodecamera/interfaces/OnRxScanerListener;)V

    return-void
.end method

.method private goToMain()V
    .locals 3

    .line 1086
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->hideLoading()V

    .line 1087
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->cleanPsw()V

    .line 1088
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "intent_type"

    const-string v2, "checkBleDeviceBind"

    .line 1089
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1090
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->startActivity(Landroid/content/Intent;)V

    .line 1092
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->sendHeartPkg()V

    .line 1094
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1095
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$$ExternalSyntheticLambda9;->INSTANCE:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1102
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1104
    :cond_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->finishActivity()V

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->ivTopTitleSearch:Landroid/widget/ImageView;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$$ExternalSyntheticLambda3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->flTopBack:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$$ExternalSyntheticLambda4;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->flTopBack2:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$$ExternalSyntheticLambda5;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->tvTopSearch:Landroid/widget/TextView;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$$ExternalSyntheticLambda6;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$goToMain$7()V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 1096
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 1097
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    const-string v1, "BluetoothMac"

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1098
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1099
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->queryDevicePermissions(Ljava/lang/String;)V

    .line 1100
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->queryMacPermissions(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onPermissionGranted(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 1156
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x1f

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    :cond_0
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 1157
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_6

    .line 1158
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_2

    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->checkGPSIsOpen()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1159
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1160
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d008c

    .line 1161
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0d0070

    .line 1162
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0d0058

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$$ExternalSyntheticLambda0;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)V

    .line 1163
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0d00b6

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$$ExternalSyntheticLambda1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)V

    .line 1165
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 1170
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1171
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2

    .line 1175
    :cond_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->edtSearch:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->llyTopTitleBg2:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 1176
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->edtSearch:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->searchValue:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->edtSearch:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->startSearchScanRule(Ljava/lang/String;)V

    goto :goto_1

    .line 1178
    :cond_4
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->mScanResultStr:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1179
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->searchValue:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->startSearchScanRule(Ljava/lang/String;)V

    goto :goto_1

    .line 1181
    :cond_5
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->mScanResultStr:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->startSearchScanRule(Ljava/lang/String;)V

    .line 1185
    :goto_1
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->startScan()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---onPermissionGranted\u51fa\u9519--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "xiezhixian"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method

.method private removeFactoryList()V
    .locals 7

    .line 378
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 379
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "command"

    const/16 v3, 0x92

    .line 380
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "data"

    .line 381
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "txnNo"

    .line 383
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "token"

    .line 384
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v5

    const-string v6, "sp_key_user_token"

    invoke-virtual {v5, v6}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "macAddr"

    .line 385
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v5

    const-string v6, "BluetoothMac"

    invoke-virtual {v5, v6}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    new-instance v1, Lcom/jiabaida/little_elephant/socket/PkgDataBean;

    invoke-direct {v1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;-><init>()V

    .line 388
    invoke-virtual {v1, v3}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setCmd(I)V

    const/16 v3, 0x93

    .line 389
    invoke-virtual {v1, v3}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setMsgType(I)V

    .line 390
    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setData(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setTxnNo(Ljava/lang/String;)V

    .line 392
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/NettyClient;->getInstance()Lcom/jiabaida/little_elephant/socket/NettyClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/socket/NettyClient;->sendDatas(Lcom/jiabaida/little_elephant/socket/PkgDataBean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 394
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private removeMsg()V
    .locals 2

    .line 1233
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1234
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private sendCleanCmd()V
    .locals 4

    .line 1058
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->tcpCleanType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    :pswitch_1
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :pswitch_2
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :pswitch_3
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    const/16 v0, 0x2714

    packed-switch v3, :pswitch_data_1

    .line 1078
    sput-boolean v2, Lcom/jiabaida/little_elephant/util/BleUtils;->isCheckRootPsw:Z

    goto :goto_1

    .line 1073
    :pswitch_4
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->returnFactory()V

    .line 1074
    sput v0, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    .line 1075
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->hideLoading()V

    goto :goto_1

    .line 1069
    :pswitch_5
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->restoreSecondPsw()V

    .line 1070
    sput v0, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    goto :goto_1

    .line 1064
    :pswitch_6
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->cleanFirstLevPsw()V

    .line 1065
    sput v0, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    .line 1066
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->hideLoading()V

    goto :goto_1

    .line 1060
    :pswitch_7
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->cleanAppKey()V

    .line 1061
    sput v0, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    :goto_1
    const-string v0, "0"

    .line 1081
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->tcpCleanType:Ljava/lang/String;

    return-void

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private showConnectedDevice()V
    .locals 7

    .line 549
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isGoScanCode:Z

    if-nez v0, :cond_5

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 550
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->getAllConnectedDevice()Ljava/util/List;

    move-result-object v0

    .line 551
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->edtSearch:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 552
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->scanBleDevicesAdapter:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    .line 553
    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->clearConnectedDevice()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 554
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 555
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 556
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v4}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 557
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v4}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 558
    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->scanBleDevicesAdapter:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v4, v5}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->addDevice(Lcom/clj/fastble/data/BleDevice;)V

    .line 559
    sget-object v4, Lcom/jiabaida/little_elephant/util/BleUtils;->bleList:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v5}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/clj/fastble/data/BleDevice;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 560
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v4}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 561
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v4}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 562
    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->scanBleDevicesAdapter:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v4, v5}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->addDevice(Lcom/clj/fastble/data/BleDevice;)V

    .line 563
    sget-object v4, Lcom/jiabaida/little_elephant/util/BleUtils;->bleList:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v5}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/clj/fastble/data/BleDevice;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 564
    :cond_1
    iget-boolean v4, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isSearchUUID:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->serviceUuids:[Ljava/util/UUID;

    if-eqz v4, :cond_3

    array-length v4, v4

    if-lez v4, :cond_3

    .line 565
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v4}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->serviceUuids:[Ljava/util/UUID;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 566
    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->scanBleDevicesAdapter:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v4, v5}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->addDevice(Lcom/clj/fastble/data/BleDevice;)V

    .line 567
    sget-object v4, Lcom/jiabaida/little_elephant/util/BleUtils;->bleList:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v5}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/clj/fastble/data/BleDevice;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 570
    :cond_2
    sget-object v4, Lcom/jiabaida/little_elephant/util/BleUtils;->bleList:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v5}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/clj/fastble/data/BleDevice;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->scanBleDevicesAdapter:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v4, v5}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->addDevice(Lcom/clj/fastble/data/BleDevice;)V

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 574
    :cond_4
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->scanBleDevicesAdapter:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->notifyDataSetChanged()V

    :cond_5
    return-void
.end method

.method private startScan()V
    .locals 4

    .line 584
    :try_start_0
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)V

    invoke-virtual {v0, v1}, Lcom/clj/fastble/BleManager;->scan(Lcom/clj/fastble/callback/BleScanCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 689
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object v1

    invoke-static {}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d008e

    invoke-virtual {p0, v3}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showLong(Landroid/content/Context;Ljava/lang/String;)V

    .line 690
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startSearchScanRule(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 472
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isSearchUUID:Z

    const-string v1, "([0-9a-fA-F]{8}(-[0-9a-fA-F]{4}){3}-[0-9a-fA-F]{12}?)"

    .line 476
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isSearchUUID:Z

    if-eqz p1, :cond_0

    .line 498
    new-instance p1, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;

    invoke-direct {p1}, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;-><init>()V

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->serviceUuids:[Ljava/util/UUID;

    .line 499
    invoke-virtual {p1, v1}, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->setServiceUuids([Ljava/util/UUID;)Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;

    move-result-object p1

    .line 502
    invoke-virtual {p1, v0}, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->setAutoConnect(Z)Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;

    move-result-object p1

    const-wide/16 v0, 0x2710

    .line 503
    invoke-virtual {p1, v0, v1}, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->setScanTimeOut(J)Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;

    move-result-object p1

    .line 504
    invoke-virtual {p1}, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->build()Lcom/clj/fastble/scan/BleScanRuleConfig;

    move-result-object p1

    .line 534
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/clj/fastble/BleManager;->initScanRule(Lcom/clj/fastble/scan/BleScanRuleConfig;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a004e

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 246
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->QueueTag:Ljava/lang/String;

    const-string v0, "0000ff00-0000-1000-8000-00805f9b34fb"

    .line 247
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->searchValue:Ljava/lang/String;

    .line 248
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->initListener()V

    .line 251
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->scanBleDevicesBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 252
    new-instance v0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->scanBleDevicesBeanList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->scanBleDevicesAdapter:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    .line 253
    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)V

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->setOnDeviceClickListener(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$OnDeviceClickListener;)V

    .line 320
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isGoScanCode:Z

    if-eqz v0, :cond_0

    .line 322
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->goScanCode()V

    goto :goto_0

    .line 324
    :cond_0
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->checkPermissions()V

    .line 326
    :goto_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->listviewScanBle:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->scanBleDevicesAdapter:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 327
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->swRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$$ExternalSyntheticLambda7;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 338
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->ivTopTitleQrc:Landroid/widget/ImageView;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$$ExternalSyntheticLambda2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 3

    const p1, 0x7f080138

    .line 171
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->llyTopTitleBg1:Landroid/widget/RelativeLayout;

    const p1, 0x7f0800c3

    .line 172
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->flTopBack:Landroid/widget/FrameLayout;

    const p1, 0x7f0800fd

    .line 174
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->ivTopTitleSearch:Landroid/widget/ImageView;

    const p1, 0x7f0800fb

    .line 175
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->ivTopTitleQrc:Landroid/widget/ImageView;

    const p1, 0x7f080139

    .line 178
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->llyTopTitleBg2:Landroid/widget/LinearLayout;

    const p1, 0x7f0800c4

    .line 179
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->flTopBack2:Landroid/widget/FrameLayout;

    const p1, 0x7f0800b5

    .line 181
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->edtSearch:Landroid/widget/EditText;

    const p1, 0x7f08029f

    .line 182
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->tvTopSearch:Landroid/widget/TextView;

    const p1, 0x7f080108

    .line 184
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->listviewScanBle:Landroidx/recyclerview/widget/RecyclerView;

    .line 185
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const p1, 0x7f0801a2

    .line 186
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->swRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 187
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    const p1, 0x7f0802a0

    .line 188
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0d00bd

    .line 189
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method synthetic lambda$checkedPsw$6$com-jiabaida-little_elephant-ui-activity-ScanBleDevicesActivity(Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1023
    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 1024
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v0, 0x4

    if-eqz p3, :cond_0

    .line 1025
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgbyte()[B

    move-result-object p1

    aget-byte p1, p1, v0

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/util/BleUtils;->sendSecondLevPsw(BLjava/lang/String;)V

    goto :goto_0

    .line 1027
    :cond_0
    iput-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->currentFirstPsw:Ljava/lang/String;

    .line 1028
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgbyte()[B

    move-result-object p1

    aget-byte p1, p1, v0

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/util/BleUtils;->sendFirstLevPsw(BLjava/lang/String;)V

    .line 1031
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->showLoading()V

    return-void
.end method

.method synthetic lambda$initData$4$com-jiabaida-little_elephant-ui-activity-ScanBleDevicesActivity()V
    .locals 2

    .line 328
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->onScanStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->swRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void

    .line 332
    :cond_0
    iput-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isGoScanCode:Z

    .line 333
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->checkPermissions()V

    .line 334
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->scanBleDevicesAdapter:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->notifyLocalDevice()V

    .line 335
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->scanBleDevicesAdapter:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->notifyDataSetChanged()V

    .line 336
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->swRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method synthetic lambda$initData$5$com-jiabaida-little_elephant-ui-activity-ScanBleDevicesActivity(Landroid/view/View;)V
    .locals 0

    .line 339
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->isFastDoubleClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 343
    :cond_0
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->goScanCode()V

    return-void
.end method

.method synthetic lambda$initListener$0$com-jiabaida-little_elephant-ui-activity-ScanBleDevicesActivity(Landroid/view/View;)V
    .locals 1

    .line 211
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->llyTopTitleBg1:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 212
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->llyTopTitleBg2:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$initListener$1$com-jiabaida-little_elephant-ui-activity-ScanBleDevicesActivity(Landroid/view/View;)V
    .locals 2

    .line 217
    :try_start_0
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/clj/fastble/BleManager;->cancelScan()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :catch_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->startActivity(Landroid/content/Intent;)V

    .line 223
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->finishActivity()V

    return-void
.end method

.method synthetic lambda$initListener$2$com-jiabaida-little_elephant-ui-activity-ScanBleDevicesActivity(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    .line 226
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isGoScanCode:Z

    .line 228
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->llyTopTitleBg2:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->llyTopTitleBg1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 231
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->edtSearch:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$initListener$3$com-jiabaida-little_elephant-ui-activity-ScanBleDevicesActivity(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 234
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isGoScanCode:Z

    .line 235
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->checkPermissions()V

    return-void
.end method

.method synthetic lambda$onPermissionGranted$8$com-jiabaida-little_elephant-ui-activity-ScanBleDevicesActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1164
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onPermissionGranted$9$com-jiabaida-little_elephant-ui-activity-ScanBleDevicesActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1167
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 1168
    invoke-virtual {p0, p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1203
    invoke-super {p0, p1, p2, p3}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 1205
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->checkGPSIsOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1206
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->searchValue:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->startSearchScanRule(Ljava/lang/String;)V

    .line 1207
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->startScan()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1214
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->mBaseAppKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1217
    :try_start_0
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->cancelScan()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1222
    :goto_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->finishActivity()V

    :cond_0
    return-void
.end method

.method protected onCreateBefor(Landroid/os/Bundle;)V
    .locals 2

    .line 129
    invoke-super {p0, p1}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onCreateBefor(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->KEY_isGoScanCode:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isGoScanCode:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1228
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onDestroy()V

    .line 1229
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->removeMsg()V

    const/4 v0, 0x0

    .line 1230
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onEventBusMsg(Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;)V
    .locals 8
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 844
    :cond_0
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v0

    const/16 v1, 0x2712

    if-ne v0, v1, :cond_2

    const-wide/16 v0, 0xc8

    .line 848
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 852
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->mBaseAppKey:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 854
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->sendAppKey()V

    .line 855
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 857
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->mBaseAppKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/BleUtils;->sendBaseAppKey(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 864
    :cond_2
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v0

    const/16 v1, 0x2713

    if-ne v0, v1, :cond_4

    .line 865
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->tcpCleanType:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 866
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->checkedPsw(Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;)V

    goto/16 :goto_4

    .line 868
    :cond_3
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgbyte()[B

    move-result-object p1

    const/4 v1, 0x4

    aget-byte p1, p1, v1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr(B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getRootPsw(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 871
    :cond_4
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v0

    const/16 v1, 0x2715

    const-string v2, ""

    const-string v3, "BluetoothMac"

    const v4, 0x7f0d009e

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-ne v0, v1, :cond_5

    .line 872
    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 873
    iput-boolean v6, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isCheckPsw:Z

    .line 874
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->removeMsg()V

    .line 875
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->hideLoading()V

    .line 876
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->disConnectBle(Lcom/clj/fastble/data/BleDevice;I)V

    .line 877
    iget-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isAutoPsw:Z

    if-eqz p1, :cond_1b

    .line 878
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 879
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    iput-boolean v6, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isAutoPsw:Z

    goto/16 :goto_4

    .line 882
    :cond_5
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v0

    const/16 v1, 0x2718

    if-ne v0, v1, :cond_6

    .line 883
    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 884
    iput-boolean v6, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isCheckPsw:Z

    .line 885
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->removeMsg()V

    .line 886
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->hideLoading()V

    .line 887
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->disConnectBle(Lcom/clj/fastble/data/BleDevice;I)V

    goto/16 :goto_4

    .line 888
    :cond_6
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v0

    const/16 v1, 0x2714

    const-string v4, "xzx1"

    if-ne v0, v1, :cond_7

    .line 890
    iput-boolean v6, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isCheckPsw:Z

    .line 891
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 892
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->currentFirstPsw:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result p1

    sput p1, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    .line 894
    sput-boolean v6, Lcom/jiabaida/little_elephant/util/BleUtils;->isHaveFirstPsw:Z

    const-string p1, "\u4e00\u7ea7\u5bc6\u7801\u9a8c\u8bc1\u6210\u529f\u8fdb\u5165\u4e3b\u9875"

    .line 895
    invoke-static {v4, p1}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->goToMain()V

    .line 897
    iput-boolean v6, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isAutoPsw:Z

    goto/16 :goto_4

    .line 898
    :cond_7
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v0

    const/16 v1, 0x2717

    if-ne v0, v1, :cond_8

    .line 899
    iput-boolean v6, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isCheckPsw:Z

    .line 900
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result p1

    sput p1, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    const-string p1, "\u4e8c\u7ea7\u5bc6\u7801\u9a8c\u8bc1\u6210\u529f\u8fdb\u5165\u4e3b\u9875"

    .line 901
    invoke-static {v4, p1}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->goToMain()V

    .line 903
    sput-boolean v6, Lcom/jiabaida/little_elephant/util/BleUtils;->isHaveFirstPsw:Z

    goto/16 :goto_4

    .line 904
    :cond_8
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v0

    const/16 v3, 0x2716

    const/4 v7, 0x1

    if-ne v0, v3, :cond_9

    .line 905
    sput-boolean v7, Lcom/jiabaida/little_elephant/util/BleUtils;->isHaveFirstPsw:Z

    .line 906
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result p1

    sput p1, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    const-string p1, "\u65e0\u5bc6\u7801\u9a8c\u8bc1\u8fdb\u5165\u4e3b\u9875"

    .line 908
    invoke-static {v4, p1}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->goToMain()V

    goto/16 :goto_4

    .line 910
    :cond_9
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v0

    const/16 v3, 0x271f

    if-ne v0, v3, :cond_a

    .line 911
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->removeMsg()V

    .line 912
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object p1

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "APPKEY\u6821\u9a8c\u5931\u8d25!."

    invoke-virtual {p1, v0, v1, v7}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;I)V

    .line 913
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->hideLoading()V

    .line 914
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->disConnectBle(Lcom/clj/fastble/data/BleDevice;I)V

    goto/16 :goto_4

    .line 915
    :cond_a
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v0

    const/16 v3, 0x91

    const-string v4, "data"

    if-ne v0, v3, :cond_c

    .line 917
    :try_start_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->bleSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 918
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 919
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "resetDeviceList"

    .line 920
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 921
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_b

    .line 922
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->bleSet:Ljava/util/HashSet;

    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 924
    :cond_b
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->bleSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_1b

    .line 925
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->scanBleDevicesAdapter:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->bleSet:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->setData(Ljava/util/HashSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    .line 928
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u51fa\u5382\u8bbe\u7f6e\u8bbe\u5907\u5217\u8868 \u89e3\u6790\u5f02\u5e38: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 931
    :cond_c
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v0

    const/16 v3, 0x2720

    if-ne v0, v3, :cond_d

    .line 932
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->mBaseAppKey:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1b

    const p1, 0x7f0d0066

    .line 934
    invoke-static {p0, p1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 935
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->removeFactoryList()V

    .line 936
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->scanBleDevicesAdapter:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->getBleSet()Ljava/util/HashSet;

    move-result-object p1

    .line 937
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 938
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->scanBleDevicesAdapter:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->setData(Ljava/util/HashSet;)V

    .line 939
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->returnFactory()V

    .line 940
    iput-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->mBaseAppKey:Ljava/lang/String;

    goto/16 :goto_4

    .line 942
    :cond_d
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v0

    const/16 v2, 0x2721

    if-ne v0, v2, :cond_e

    .line 944
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object p1

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6062\u590d\u5931\u8d25!"

    invoke-virtual {p1, v0, v1, v7}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;I)V

    .line 946
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->disConnectBle(Lcom/clj/fastble/data/BleDevice;I)V

    goto/16 :goto_4

    .line 948
    :cond_e
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v0

    const/16 v2, 0x8e

    if-eq v0, v2, :cond_1a

    .line 949
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v0

    const/16 v2, 0x8f

    if-ne v0, v2, :cond_f

    goto/16 :goto_3

    .line 959
    :cond_f
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v0

    const/16 v2, 0x2719

    if-ne v0, v2, :cond_10

    .line 960
    sput v2, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    .line 961
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->sendCleanCmd()V

    goto/16 :goto_4

    .line 962
    :cond_10
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v0

    const/16 v3, 0x98

    if-ne v0, v3, :cond_1b

    .line 965
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 966
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "type"

    .line 967
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    .line 968
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 969
    sget v0, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    if-eq v0, v1, :cond_12

    sget v0, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    if-ne v0, v2, :cond_11

    goto :goto_1

    .line 973
    :cond_11
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->getRandom(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 971
    :cond_12
    :goto_1
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->cleanAppKey()V

    goto :goto_4

    :cond_13
    const-string v0, "2"

    .line 975
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 976
    sget v0, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    if-eq v0, v1, :cond_15

    sget v0, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    if-ne v0, v2, :cond_14

    goto :goto_2

    .line 980
    :cond_14
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->getRandom(Ljava/lang/String;)V

    goto :goto_4

    .line 978
    :cond_15
    :goto_2
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->cleanFirstLevPsw()V

    goto :goto_4

    :cond_16
    const-string v0, "3"

    .line 982
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 983
    sget v0, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    if-ne v0, v2, :cond_17

    .line 984
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->restoreSecondPsw()V

    goto :goto_4

    .line 986
    :cond_17
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->getRandom(Ljava/lang/String;)V

    goto :goto_4

    :cond_18
    const-string v0, "4"

    .line 988
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 989
    sget v0, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    if-ne v0, v2, :cond_19

    .line 990
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->returnFactory()V

    goto :goto_4

    .line 992
    :cond_19
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->getRandom(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 996
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 951
    :cond_1a
    :goto_3
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 952
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "encodePwd"

    .line 953
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 954
    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/BleUtils;->sendRootPsw(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 956
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1b
    :goto_4
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 197
    :try_start_0
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->cancelScan()V

    .line 198
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->startActivity(Landroid/content/Intent;)V

    .line 200
    invoke-static {p0}, Lcom/jiabaida/little_elephant/app/CustomActivityManager;->deleteActivity(Landroidx/appcompat/app/AppCompatActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 206
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1112
    invoke-super {p0, p1, p2, p3}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1114
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 1115
    :goto_0
    array-length v0, p3

    if-ge p1, v0, :cond_1

    .line 1116
    aget v0, p3, p1

    if-nez v0, :cond_0

    .line 1117
    aget-object v0, p2, p1

    invoke-direct {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->onPermissionGranted(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 541
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onResume()V

    .line 542
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->showConnectedDevice()V

    .line 543
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->checkGPSIsOpen()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    .line 544
    invoke-static {}, Lcom/jiabaida/little_elephant/util/DialogUtils;->getInstances()Lcom/jiabaida/little_elephant/util/DialogUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jiabaida/little_elephant/util/DialogUtils;->showGpsDialog(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected useEventBus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
