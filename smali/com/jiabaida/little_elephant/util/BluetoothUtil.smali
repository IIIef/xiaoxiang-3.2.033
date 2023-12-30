.class public Lcom/jiabaida/little_elephant/util/BluetoothUtil;
.super Ljava/lang/Object;
.source "BluetoothUtil.java"


# static fields
.field public static QueueTag:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "BluetoothUtil"

.field public static TestLine:Ljava/lang/StringBuffer; = null

.field public static appLastConnectBelMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static isCanAutoConnect:Z = false

.field public static mDataQueue:Ljava/util/Queue; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "[B>;"
        }
    .end annotation
.end field

.field private static volatile mInstance:Lcom/jiabaida/little_elephant/util/BluetoothUtil; = null

.field public static mbleDevice:Lcom/clj/fastble/data/BleDevice; = null

.field public static penetrateData:Z = false

.field public static final uuid_char:Ljava/lang/String; = "0000ff02-0000-1000-8000-00805f9b34fb"

.field public static final uuid_readChara:Ljava/lang/String; = "0000ff01-0000-1000-8000-00805f9b34fb"

.field public static final uuid_service:Ljava/lang/String; = "0000ff00-0000-1000-8000-00805f9b34fb"


# instance fields
.field private baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

.field public cmdQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;",
            ">;"
        }
    .end annotation
.end field

.field public cmdWaitingList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field public context:Landroid/content/Context;

.field private mCommandRunThread:Ljava/lang/Thread;

.field private penetrateTimeCount:Landroid/os/CountDownTimer;

.field public readContent:[B

.field public responseExecutor:Ljava/util/concurrent/ExecutorService;

.field private voltageCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->appLastConnectBelMap:Ljava/util/Map;

    const/4 v0, 0x1

    .line 64
    sput-boolean v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->isCanAutoConnect:Z

    .line 65
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->mDataQueue:Ljava/util/Queue;

    .line 77
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "\u6d4b\u8bd5\u8bfb\u53d6\u6307\u4ee4---\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->TestLine:Ljava/lang/StringBuffer;

    .line 82
    sput-boolean v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->penetrateData:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdWaitingList:Ljava/util/HashMap;

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 75
    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->readContent:[B

    .line 84
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->responseExecutor:Ljava/util/concurrent/ExecutorService;

    .line 141
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdWaitingList:Ljava/util/HashMap;

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 75
    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->readContent:[B

    .line 84
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->responseExecutor:Ljava/util/concurrent/ExecutorService;

    .line 159
    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->context:Landroid/content/Context;

    return-void
.end method

.method public static ResDatacheckSum(C[BI)[B
    .locals 5

    .line 243
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p2, p0

    and-int/lit16 p0, p2, 0xff

    add-int/2addr v3, p0

    .line 248
    invoke-static {v3}, Lcom/jiabaida/little_elephant/util/CommonUtil;->intToByteArray(I)[B

    move-result-object p0

    .line 249
    array-length p1, p0

    add-int/lit8 p1, p1, -0x2

    aget-byte p1, p0, p1

    .line 250
    array-length p1, p0

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    aget-byte p0, p0, p1

    new-array p1, p2, [B

    aput-byte p0, p1, v1

    return-object p1
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/util/BluetoothUtil;)Landroid/os/CountDownTimer;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->penetrateTimeCount:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/jiabaida/little_elephant/util/BluetoothUtil;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->penetrateTimeCount:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method public static checkposition([B[B)Z
    .locals 0

    .line 231
    invoke-static {p0, p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->compereByteArray([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static contrastByteArray([B[B)Z
    .locals 4

    .line 255
    array-length v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 258
    :cond_0
    array-length v0, p0

    array-length v2, p1

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 262
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 263
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

.method public static getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;
    .locals 2

    .line 147
    sget-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->mInstance:Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    if-nez v0, :cond_1

    .line 148
    const-class v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    monitor-enter v0

    .line 149
    :try_start_0
    sget-object v1, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->mInstance:Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    if-nez v1, :cond_0

    .line 150
    new-instance v1, Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    invoke-direct {v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;-><init>()V

    sput-object v1, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->mInstance:Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    .line 152
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 154
    :cond_1
    :goto_0
    sget-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->mInstance:Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    return-object v0
.end method

.method public static isMacConnected(Ljava/lang/String;)Z
    .locals 1

    .line 190
    :try_start_0
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/clj/fastble/BleManager;->isConnected(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public closeIndicate(Lcom/clj/fastble/data/BleDevice;)V
    .locals 3

    .line 316
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    const-string v1, "0000ff00-0000-1000-8000-00805f9b34fb"

    const-string v2, "0000ff01-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v0, p1, v1, v2}, Lcom/clj/fastble/BleManager;->stopIndicate(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public closeNotify(Lcom/clj/fastble/data/BleDevice;)V
    .locals 3

    .line 320
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    const-string v1, "0000ff00-0000-1000-8000-00805f9b34fb"

    const-string v2, "0000ff01-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v0, p1, v1, v2}, Lcom/clj/fastble/BleManager;->stopNotify(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public getBaseInfoCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    return-object v0
.end method

.method public getBleDevice()Lcom/clj/fastble/data/BleDevice;
    .locals 1

    .line 137
    sget-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->mbleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object v0
.end method

.method public getContent([B)[B
    .locals 2

    .line 274
    array-length v0, p1

    add-int/lit8 v0, v0, -0x3

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public getInfoContent([B)[B
    .locals 2

    .line 280
    array-length v0, p1

    add-int/lit8 v0, v0, -0x3

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public getVoltageCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->voltageCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    return-object v0
.end method

.method public isBleConnected()Z
    .locals 2

    const/4 v0, 0x0

    .line 167
    :try_start_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method public openIndicate(Lcom/clj/fastble/data/BleDevice;)V
    .locals 4

    .line 285
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    new-instance v1, Lcom/jiabaida/little_elephant/util/BluetoothUtil$2;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil$2;-><init>(Lcom/jiabaida/little_elephant/util/BluetoothUtil;)V

    const-string v2, "0000ff00-0000-1000-8000-00805f9b34fb"

    const-string v3, "0000ff01-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/clj/fastble/BleManager;->indicate(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Lcom/clj/fastble/callback/BleIndicateCallback;)V

    return-void
.end method

.method public openNotify(Lcom/clj/fastble/data/BleDevice;)V
    .locals 4

    .line 199
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    new-instance v1, Lcom/jiabaida/little_elephant/util/BluetoothUtil$1;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil$1;-><init>(Lcom/jiabaida/little_elephant/util/BluetoothUtil;)V

    const-string v2, "0000ff00-0000-1000-8000-00805f9b34fb"

    const-string v3, "0000ff01-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/clj/fastble/BleManager;->notify(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Lcom/clj/fastble/callback/BleNotifyCallback;)V

    return-void
.end method

.method public readComplete()Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
    .locals 1

    const/4 v0, 0x0

    .line 734
    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->readContent:[B

    .line 735
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;

    .line 736
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->readComplete()V

    return-object v0
.end method

.method public readData([B)V
    .locals 8

    const-string v0, "xzx"

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   read:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-static {p1, v2}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/IdsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    array-length v0, p1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x6

    if-ne v0, v5, :cond_16

    aget-byte v0, p1, v2

    if-ne v0, v1, :cond_16

    aget-byte v0, p1, v3

    const/16 v5, -0x56

    if-ne v0, v5, :cond_16

    const/4 v0, 0x2

    .line 557
    aget-byte v1, p1, v0

    const/16 v5, 0x15

    const/16 v6, 0x2716

    if-ne v1, v5, :cond_2

    .line 558
    aget-byte v1, p1, v4

    if-nez v1, :cond_0

    .line 560
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->getRandom()V

    .line 561
    sput-boolean v3, Lcom/jiabaida/little_elephant/util/BleUtils;->isHaveAppKey:Z

    goto/16 :goto_0

    .line 562
    :cond_0
    aget-byte v1, p1, v4

    if-ne v1, v3, :cond_1

    .line 564
    sput-boolean v3, Lcom/jiabaida/little_elephant/util/BleUtils;->isHaveAppKey:Z

    .line 565
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const/16 v1, 0x271f

    invoke-direct {v0, v1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 566
    :cond_1
    aget-byte p1, p1, v4

    if-ne p1, v0, :cond_15

    .line 567
    sput-boolean v3, Lcom/jiabaida/little_elephant/util/BleUtils;->isHaveAppKey:Z

    .line 568
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    invoke-direct {v0, v6}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 570
    :cond_2
    aget-byte v1, p1, v0

    const/16 v5, 0x16

    if-ne v1, v5, :cond_5

    .line 571
    aget-byte v0, p1, v4

    if-nez v0, :cond_3

    .line 573
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const/16 v1, 0x271b

    invoke-direct {v0, v1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 574
    :cond_3
    aget-byte p1, p1, v4

    if-ne p1, v3, :cond_4

    .line 576
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const/16 v1, 0x271c

    invoke-direct {v0, v1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 578
    :cond_4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const/16 v1, 0x2724

    invoke-direct {v0, v1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 580
    :cond_5
    aget-byte v1, p1, v0

    const/16 v5, 0x17

    if-ne v1, v5, :cond_6

    .line 583
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const/16 v2, 0x2713

    const-string v3, "{}"

    invoke-direct {v1, v2, v3, p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(ILjava/lang/String;[B)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 584
    :cond_6
    aget-byte v1, p1, v0

    const/16 v5, 0x18

    if-ne v1, v5, :cond_9

    .line 585
    aget-byte v1, p1, v4

    if-nez v1, :cond_7

    .line 587
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const/16 v1, 0x2714

    invoke-direct {v0, v1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 588
    :cond_7
    aget-byte v1, p1, v4

    if-ne v1, v3, :cond_8

    .line 594
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const/16 v1, 0x2715

    invoke-direct {v0, v1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 598
    :cond_8
    aget-byte p1, p1, v4

    if-ne p1, v0, :cond_15

    .line 600
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    invoke-direct {v0, v6}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 602
    :cond_9
    aget-byte v1, p1, v0

    const/16 v5, 0x19

    if-ne v1, v5, :cond_b

    .line 604
    aget-byte v0, p1, v4

    if-nez v0, :cond_a

    .line 606
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const/16 v1, 0x271d

    invoke-direct {v0, v1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 607
    :cond_a
    aget-byte p1, p1, v4

    if-ne p1, v3, :cond_15

    .line 609
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const/16 v1, 0x271e

    invoke-direct {v0, v1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 611
    :cond_b
    aget-byte v1, p1, v0

    const/16 v5, 0x1b

    if-ne v1, v5, :cond_d

    .line 612
    aget-byte v0, p1, v4

    if-nez v0, :cond_c

    .line 614
    sput-boolean v3, Lcom/jiabaida/little_elephant/util/BleUtils;->secondPswStatus:Z

    .line 615
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const/16 v1, 0x2717

    invoke-direct {v0, v1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 616
    :cond_c
    aget-byte p1, p1, v4

    if-ne p1, v3, :cond_15

    .line 618
    sput-boolean v2, Lcom/jiabaida/little_elephant/util/BleUtils;->secondPswStatus:Z

    .line 619
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const/16 v1, 0x2718

    invoke-direct {v0, v1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 621
    :cond_d
    aget-byte v1, p1, v0

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_f

    .line 623
    aget-byte v0, p1, v4

    if-nez v0, :cond_e

    .line 625
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const/16 v2, 0x2719

    const-string v3, "{}"

    invoke-direct {v1, v2, v3, p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(ILjava/lang/String;[B)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 626
    :cond_e
    aget-byte v0, p1, v4

    if-ne v0, v3, :cond_15

    .line 628
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const/16 v2, 0x271a

    const-string v3, "{}"

    invoke-direct {v1, v2, v3, p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(ILjava/lang/String;[B)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 630
    :cond_f
    aget-byte v1, p1, v0

    const/16 v2, 0x22

    if-ne v1, v2, :cond_11

    .line 631
    aget-byte v0, p1, v4

    if-nez v0, :cond_10

    .line 633
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const/16 v1, 0x2720

    invoke-direct {v0, v1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 634
    :cond_10
    aget-byte p1, p1, v4

    if-ne p1, v3, :cond_15

    .line 636
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const/16 v1, 0x2721

    invoke-direct {v0, v1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 638
    :cond_11
    aget-byte v1, p1, v0

    const/16 v2, 0x23

    if-ne v1, v2, :cond_13

    .line 639
    aget-byte v0, p1, v4

    if-nez v0, :cond_12

    .line 641
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const/16 v1, 0x2722

    invoke-direct {v0, v1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 642
    :cond_12
    aget-byte p1, p1, v4

    if-ne p1, v3, :cond_15

    .line 644
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const/16 v1, 0x2723

    invoke-direct {v0, v1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 646
    :cond_13
    aget-byte v0, p1, v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_15

    .line 648
    aget-byte v0, p1, v4

    if-nez v0, :cond_14

    .line 650
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const/16 v1, 0x2725

    invoke-direct {v0, v1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 651
    :cond_14
    aget-byte p1, p1, v4

    if-ne p1, v3, :cond_15

    .line 653
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const/16 v1, 0x2726

    invoke-direct {v0, v1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_15
    :goto_0
    return-void

    .line 661
    :cond_16
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;

    if-nez v0, :cond_17

    return-void

    .line 667
    :cond_17
    aget-byte v5, p1, v2

    const/16 v6, -0x23

    if-eq v5, v6, :cond_18

    aget-byte v5, p1, v2

    if-ne v5, v1, :cond_19

    :cond_18
    iget-char v5, v0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->readState:C

    if-ne v5, v3, :cond_19

    .line 669
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->startRead()V

    .line 670
    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->readContent:[B

    goto :goto_1

    .line 671
    :cond_19
    iget-char v5, v0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->readState:C

    if-ne v5, v3, :cond_1a

    return-void

    .line 673
    :cond_1a
    iget-object v3, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->readContent:[B

    if-nez v3, :cond_1b

    return-void

    .line 678
    :cond_1b
    array-length v5, v3

    .line 679
    array-length v7, p1

    add-int/2addr v7, v5

    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->readContent:[B

    .line 680
    array-length v7, p1

    invoke-static {p1, v2, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 684
    :goto_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->readContent:[B

    array-length v3, p1

    if-ge v3, v4, :cond_1c

    return-void

    :cond_1c
    const/4 v3, 0x3

    .line 689
    aget-byte v4, p1, v3

    const/4 v5, 0x7

    .line 691
    aget-byte v7, p1, v2

    if-ne v7, v6, :cond_1d

    .line 692
    aget-byte v4, p1, v3

    goto :goto_2

    .line 694
    :cond_1d
    aget-byte v6, p1, v2

    if-ne v6, v1, :cond_1e

    .line 695
    aget-byte v4, p1, v3

    const/4 v5, 0x5

    .line 698
    :cond_1e
    :goto_2
    array-length p1, p1

    add-int/2addr v5, v4

    if-ne p1, v5, :cond_20

    const-string p1, "BluetoothUtil"

    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bfb& \u5199 send:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->getCmdApiStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   read:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->readContent:[B

    array-length v4, v3

    invoke-static {v3, v4}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/jiabaida/little_elephant/util/IdsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->readContent:[B

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->checkSum([B)Z

    move-result p1

    .line 703
    iget-object v1, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v1

    .line 704
    :try_start_0
    iget-object v3, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdWaitingList:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->getCmdApiStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz p1, :cond_1f

    .line 706
    invoke-virtual {v0, v2}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->setResonseStatus(I)V

    .line 707
    new-instance p1, Lcom/jiabaida/little_elephant/util/ResponseAsyncTask;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->readContent:[B

    array-length v4, v0

    .line 708
    invoke-static {v0, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {p1, v0, v3, p0}, Lcom/jiabaida/little_elephant/util/ResponseAsyncTask;-><init>([BLjava/util/ArrayList;Lcom/jiabaida/little_elephant/util/BluetoothUtil;)V

    .line 711
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->responseExecutor:Ljava/util/concurrent/ExecutorService;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v2}, Lcom/jiabaida/little_elephant/util/ResponseAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 713
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->readComplete()Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;

    goto :goto_3

    :cond_1f
    const-string p1, "BluetoothUtil"

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6821\u9a8c\u5931\u8d25:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->readContent:[B

    array-length v5, v4

    invoke-static {v4, v5}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/util/IdsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    new-instance p1, Lcom/jiabaida/little_elephant/util/ResponseAsyncTask;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v3, p0}, Lcom/jiabaida/little_elephant/util/ResponseAsyncTask;-><init>([BLjava/util/ArrayList;Lcom/jiabaida/little_elephant/util/BluetoothUtil;)V

    .line 719
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->responseExecutor:Ljava/util/concurrent/ExecutorService;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v2}, Lcom/jiabaida/little_elephant/util/ResponseAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 720
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->readFailed()Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;

    .line 722
    :goto_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 723
    monitor-exit v1

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_20
    :goto_4
    return-void
.end method

.method public readFailed()Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
    .locals 3

    const/4 v0, 0x0

    .line 741
    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->readContent:[B

    .line 744
    iget-object v1, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 745
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;

    .line 746
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->readComplete()V

    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->getCmdApiStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothUtil"

    invoke-static {v2, v1}, Lcom/jiabaida/little_elephant/util/IdsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z
    .locals 1

    const/4 v0, 0x0

    .line 426
    invoke-virtual {p0, p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;Lcom/jiabaida/little_elephant/entity/ICMDResponse;)Z

    move-result p1

    return p1
.end method

.method public send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;Lcom/jiabaida/little_elephant/entity/ICMDResponse;)Z
    .locals 4

    .line 436
    iget-object p2, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter p2

    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdWaitingList:Ljava/util/HashMap;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->getCmdApiStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 440
    :try_start_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdWaitingList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->getCmdApiStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdWaitingList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->getCmdApiStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    :catch_0
    :cond_0
    :try_start_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 448
    monitor-exit p2

    return v1

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->mCommandRunThread:Ljava/lang/Thread;

    if-nez v0, :cond_2

    .line 452
    new-instance v0, Lcom/jiabaida/little_elephant/util/CommandRunThread;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/util/CommandRunThread;-><init>(Lcom/jiabaida/little_elephant/util/BluetoothUtil;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->mCommandRunThread:Ljava/lang/Thread;

    .line 453
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 456
    :cond_2
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->getCmdApi()[B

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 458
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v2, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdWaitingList:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    .line 460
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->getCmdApiStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    :cond_3
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 464
    monitor-exit p2

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setBaseInfoCMDEntity(Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    return-void
.end method

.method public setBleDevice(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/data/BleDevice;
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdWaitingList:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdWaitingList:Ljava/util/HashMap;

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->responseExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    .line 122
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->responseExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_2
    const/4 v0, 0x0

    .line 124
    sput-boolean v0, Lcom/jiabaida/little_elephant/util/BleUtils;->isCheckRootPsw:Z

    .line 125
    iget-object v1, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 126
    iget-object v1, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdWaitingList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 127
    sput-object p1, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->mbleDevice:Lcom/clj/fastble/data/BleDevice;

    if-nez p1, :cond_3

    .line 129
    sput-boolean v0, Lcom/jiabaida/little_elephant/util/BleUtils;->secondPswStatus:Z

    .line 130
    sput-boolean v0, Lcom/jiabaida/little_elephant/util/BleUtils;->isHaveAppKey:Z

    .line 132
    :cond_3
    sget-object p1, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->mbleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object p1
.end method

.method public setMtu(I)V
    .locals 3

    .line 409
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    new-instance v2, Lcom/jiabaida/little_elephant/util/BluetoothUtil$5;

    invoke-direct {v2, p0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil$5;-><init>(Lcom/jiabaida/little_elephant/util/BluetoothUtil;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/clj/fastble/BleManager;->setMtu(Lcom/clj/fastble/data/BleDevice;ILcom/clj/fastble/callback/BleMtuChangedCallback;)V

    return-void
.end method

.method public setVoltageCMDEntity(Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->voltageCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    return-void
.end method

.method public writeData(Lcom/clj/fastble/data/BleDevice;[B)V
    .locals 1

    const-string v0, ""

    .line 470
    invoke-virtual {p0, v0, p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->writeData(Ljava/lang/String;Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method

.method public writeData(Ljava/lang/String;Lcom/clj/fastble/data/BleDevice;[B)V
    .locals 9

    .line 476
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "-->"

    :goto_0
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 480
    array-length v0, p3

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 487
    sput-boolean v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->penetrateData:Z

    new-array v0, v0, [B

    .line 488
    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->readContent:[B

    .line 489
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 490
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss:SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 491
    sget-object v2, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->TestLine:Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u53d1\u9001--writeData\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 492
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v3

    new-instance v8, Lcom/jiabaida/little_elephant/util/BluetoothUtil$6;

    invoke-direct {v8, p0, p3}, Lcom/jiabaida/little_elephant/util/BluetoothUtil$6;-><init>(Lcom/jiabaida/little_elephant/util/BluetoothUtil;[B)V

    const-string v5, "0000ff00-0000-1000-8000-00805f9b34fb"

    const-string v6, "0000ff02-0000-1000-8000-00805f9b34fb"

    move-object v4, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Lcom/clj/fastble/BleManager;->write(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;[BLcom/clj/fastble/callback/BleWriteCallback;)V

    return-void

    :cond_2
    :goto_1
    const-string p1, "--BleActivity"

    const-string p2, "\u6307\u4ee4\u672a\u53d1\u9001\u88ab\u8fd4\u56de--: "

    .line 481
    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    sget-object p1, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->TestLine:Ljava/lang/StringBuffer;

    const-string p2, "\u6307\u4ee4\u672a\u53d1\u9001\u88ab\u8fd4\u56de--: \n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 483
    sget-object p1, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->mDataQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    return-void
.end method

.method public writeDataToDevice([B)V
    .locals 8

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53d1\u9001\u6570\u636e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-static {p1, v1}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xzx"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v2

    .line 331
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v3

    new-instance v7, Lcom/jiabaida/little_elephant/util/BluetoothUtil$3;

    invoke-direct {v7, p0, p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil$3;-><init>(Lcom/jiabaida/little_elephant/util/BluetoothUtil;[B)V

    const-string v4, "0000ff00-0000-1000-8000-00805f9b34fb"

    const-string v5, "0000ff02-0000-1000-8000-00805f9b34fb"

    move-object v6, p1

    .line 330
    invoke-virtual/range {v2 .. v7}, Lcom/clj/fastble/BleManager;->write(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;[BLcom/clj/fastble/callback/BleWriteCallback;)V

    return-void
.end method

.method public writeDataToDevice2([B)V
    .locals 7

    .line 385
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    new-instance v6, Lcom/jiabaida/little_elephant/util/BluetoothUtil$4;

    invoke-direct {v6, p0, p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil$4;-><init>(Lcom/jiabaida/little_elephant/util/BluetoothUtil;[B)V

    const-string v2, "0000ff00-0000-1000-8000-00805f9b34fb"

    const-string v3, "0000ff02-0000-1000-8000-00805f9b34fb"

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/clj/fastble/BleManager;->write(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;[BZLcom/clj/fastble/callback/BleWriteCallback;)V

    return-void
.end method
