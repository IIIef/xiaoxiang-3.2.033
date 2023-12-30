.class public Lcom/jiabaida/little_elephant/util/BleUtils;
.super Ljava/lang/Object;
.source "BleUtils.java"


# static fields
.field public static final APP_KEY_CHECK:B = 0x15t

.field public static final CLEAN_APP_KEY:Ljava/lang/String; = "FFAA1E010120"

.field public static final CLEAN_PSW:Ljava/lang/String; = "FFAA23010125"

.field public static final GET_RANDOM:B = 0x17t

.field public static final MODIFY_FIRST_LEVEL_PSW:B = 0x19t

.field public static final RESPONSE_FAILED:B = 0x1t

.field public static final RESPONSE_NO_PSW:B = 0x2t

.field public static final RESPONSE_SUCCESS:B = 0x0t

.field public static final RESTORE_SECOND_PSW:Ljava/lang/String; = "FFAA1F010121"

.field public static final RETURN_FACTORY:Ljava/lang/String; = "FFAA20010122"

.field public static final SET_FIRST_LEVEL_PSW:B = 0x16t

.field private static appKeyBytes:[B = null

.field private static baseAppKeyBytes:[B = null

.field public static bleList:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/clj/fastble/data/BleDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static blePswStatus:I = 0x0

.field public static final bluetoothPasswordCheck:Z = true

.field private static checkBytes:[B = null

.field private static cleanAppKeyBytes:[B = null

.field private static cleanFirstLevPswBytes:[B = null

.field private static cleanPswBytes:[B = null

.field public static final debugSwitch:Z = false

.field public static final displayCycles:Z = true

.field public static displayInit:Z

.field public static displayVoltage:Z

.field public static icType:I

.field private static icTypeCMD:Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

.field public static isCheckOta:Z

.field public static isCheckRootPsw:Z

.field public static isChinese:Z

.field public static isHaveAppKey:Z

.field public static isHaveFirstPsw:Z

.field private static lastClickTime:J

.field public static learnCapacity:F

.field public static macStart:Ljava/lang/String;

.field private static pswBytes:[B

.field private static randomBytes:[B

.field private static restoreSecondPswBytes:[B

.field private static returnFactoryBytes:[B

.field public static secondPswStatus:Z

.field public static softwareVersion:I

.field private static testBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 23
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->bleList:Ljava/util/Map;

    const/4 v0, 0x0

    .line 26
    sput-boolean v0, Lcom/jiabaida/little_elephant/util/BleUtils;->isChinese:Z

    .line 30
    sput v0, Lcom/jiabaida/little_elephant/util/BleUtils;->icType:I

    .line 34
    sput v0, Lcom/jiabaida/little_elephant/util/BleUtils;->softwareVersion:I

    const-string v1, "A5:C2:37"

    .line 38
    sput-object v1, Lcom/jiabaida/little_elephant/util/BleUtils;->macStart:Ljava/lang/String;

    const/4 v1, 0x1

    .line 44
    sput-boolean v1, Lcom/jiabaida/little_elephant/util/BleUtils;->displayVoltage:Z

    .line 48
    sput-boolean v1, Lcom/jiabaida/little_elephant/util/BleUtils;->displayInit:Z

    .line 60
    sput-boolean v0, Lcom/jiabaida/little_elephant/util/BleUtils;->isCheckRootPsw:Z

    .line 64
    sput-boolean v1, Lcom/jiabaida/little_elephant/util/BleUtils;->isHaveFirstPsw:Z

    const/16 v2, 0x2714

    .line 72
    sput v2, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    .line 73
    sput-boolean v0, Lcom/jiabaida/little_elephant/util/BleUtils;->secondPswStatus:Z

    .line 77
    sput-boolean v0, Lcom/jiabaida/little_elephant/util/BleUtils;->isHaveAppKey:Z

    const/16 v0, 0xe

    new-array v0, v0, [B

    .line 162
    fill-array-data v0, :array_0

    sput-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->cleanPswBytes:[B

    const/16 v0, 0xb

    new-array v2, v0, [B

    .line 217
    fill-array-data v2, :array_1

    sput-object v2, Lcom/jiabaida/little_elephant/util/BleUtils;->appKeyBytes:[B

    new-array v2, v0, [B

    .line 233
    fill-array-data v2, :array_2

    sput-object v2, Lcom/jiabaida/little_elephant/util/BleUtils;->pswBytes:[B

    const/4 v2, 0x5

    new-array v2, v2, [B

    .line 286
    fill-array-data v2, :array_3

    sput-object v2, Lcom/jiabaida/little_elephant/util/BleUtils;->randomBytes:[B

    new-array v2, v0, [B

    .line 300
    fill-array-data v2, :array_4

    sput-object v2, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    const/4 v2, 0x6

    new-array v3, v2, [B

    .line 383
    fill-array-data v3, :array_5

    sput-object v3, Lcom/jiabaida/little_elephant/util/BleUtils;->cleanAppKeyBytes:[B

    new-array v3, v2, [B

    .line 393
    fill-array-data v3, :array_6

    sput-object v3, Lcom/jiabaida/little_elephant/util/BleUtils;->restoreSecondPswBytes:[B

    new-array v3, v2, [B

    .line 404
    fill-array-data v3, :array_7

    sput-object v3, Lcom/jiabaida/little_elephant/util/BleUtils;->returnFactoryBytes:[B

    new-array v0, v0, [B

    .line 420
    fill-array-data v0, :array_8

    sput-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->baseAppKeyBytes:[B

    new-array v0, v2, [B

    .line 441
    fill-array-data v0, :array_9

    sput-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->cleanFirstLevPswBytes:[B

    const/16 v0, 0x47

    new-array v0, v0, [B

    .line 473
    fill-array-data v0, :array_a

    sput-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->testBytes:[B

    .line 502
    sput-boolean v1, Lcom/jiabaida/little_elephant/util/BleUtils;->isCheckOta:Z

    .line 503
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;-><init>()V

    sput-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->icTypeCMD:Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    return-void

    :array_0
    .array-data 1
        -0x23t
        0x5at
        0x9t
        0x7t
        0x6t
        0x4at
        0x31t
        0x42t
        0x32t
        0x44t
        0x34t
        -0x2t
        -0x7dt
        0x77t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x1t
        -0x56t
        0x15t
        0x6t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x50t
    .end array-data

    :array_2
    .array-data 1
        -0x1t
        -0x56t
        0x16t
        0x6t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x50t
    .end array-data

    :array_3
    .array-data 1
        -0x1t
        -0x56t
        0x17t
        0x0t
        0x17t
    .end array-data

    nop

    :array_4
    .array-data 1
        -0x1t
        -0x56t
        0x18t
        0x6t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x50t
    .end array-data

    :array_5
    .array-data 1
        -0x1t
        -0x56t
        0x1et
        0x1t
        0x1t
        0x20t
    .end array-data

    nop

    :array_6
    .array-data 1
        -0x1t
        -0x56t
        0x1ft
        0x1t
        0x1t
        0x21t
    .end array-data

    nop

    :array_7
    .array-data 1
        -0x1t
        -0x56t
        0x20t
        0x1t
        0x1t
        0x22t
    .end array-data

    nop

    :array_8
    .array-data 1
        -0x1t
        -0x56t
        0x22t
        0x6t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x50t
    .end array-data

    :array_9
    .array-data 1
        -0x1t
        -0x56t
        0x23t
        0x1t
        0x1t
        0x25t
    .end array-data

    nop

    :array_a
    .array-data 1
        -0x1t
        -0x56t
        0x1at
        0x42t
        0x31t
        0x35t
        0x31t
        0x36t
        0x33t
        0x38t
        0x31t
        0x32t
        0x33t
        0x33t
        0x35t
        0x34t
        0x31t
        0x32t
        0x33t
        0x33t
        0x35t
        0x34t
        0x31t
        0x32t
        0x33t
        0x33t
        0x35t
        0x34t
        0x31t
        0x32t
        0x33t
        0x33t
        0x35t
        0x34t
        0x31t
        0x32t
        0x33t
        0x33t
        0x35t
        0x34t
        0x31t
        0x32t
        0x33t
        0x33t
        0x35t
        0x34t
        0x31t
        0x32t
        0x33t
        0x33t
        0x35t
        0x34t
        0x31t
        0x32t
        0x33t
        0x33t
        0x35t
        0x34t
        0x31t
        0x32t
        0x33t
        0x33t
        0x35t
        0x34t
        0x31t
        0x32t
        0x33t
        0x33t
        0x35t
        0x34t
        -0x78t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;
    .locals 1

    .line 22
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->icTypeCMD:Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    return-object v0
.end method

.method private static addPsw(BLjava/lang/String;B)B
    .locals 1

    .line 187
    invoke-static {p0}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr(B)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    .line 188
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    int-to-byte p1, p1

    xor-int/2addr p1, p2

    add-int/2addr p1, p0

    and-int/lit16 p0, p1, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static changeBle(ILcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/data/BleDevice;
    .locals 8

    .line 109
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/db/BleDeviceController;->getInstance(Landroid/content/Context;)Lcom/jiabaida/little_elephant/db/BleDeviceController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/db/BleDeviceController;->searchAll()Ljava/util/List;

    move-result-object p1

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    sget-object v2, Lcom/jiabaida/little_elephant/util/BleUtils;->bleList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;

    .line 114
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/clj/fastble/data/BleDevice;

    .line 115
    invoke-virtual {v4}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;->getBleMacAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 116
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_2
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p1

    .line 121
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    const/4 v1, 0x0

    if-nez p1, :cond_4

    .line 125
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/clj/fastble/data/BleDevice;

    return-object p0

    :cond_4
    const/4 v3, -0x1

    .line 129
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    .line 130
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 131
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v6}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v3, v5

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    add-int/2addr v3, p0

    if-gez v3, :cond_7

    add-int/lit8 v3, v4, -0x1

    :cond_7
    sub-int/2addr v4, v2

    if-le v3, v4, :cond_8

    goto :goto_3

    :cond_8
    move v1, v3

    .line 142
    :goto_3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/clj/fastble/data/BleDevice;

    return-object p0
.end method

.method public static changeFirstLevPsw(Ljava/lang/String;)V
    .locals 6

    .line 268
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->pswBytes:[B

    const/16 v1, 0x19

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 269
    invoke-static {p0}, Lcom/jiabaida/little_elephant/util/HexConvert;->str2HexStr2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "#"

    .line 270
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 271
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->pswBytes:[B

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    const/4 v4, 0x4

    aput-byte v1, v0, v4

    .line 272
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->pswBytes:[B

    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    const/4 v5, 0x5

    aput-byte v1, v0, v5

    .line 273
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->pswBytes:[B

    aget-object v1, p0, v2

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    .line 274
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->pswBytes:[B

    const/4 v1, 0x3

    aget-object v1, p0, v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    .line 275
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->pswBytes:[B

    aget-object v1, p0, v4

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    const/16 v2, 0x8

    aput-byte v1, v0, v2

    .line 276
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->pswBytes:[B

    aget-object p0, p0, v5

    invoke-static {p0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    int-to-byte p0, p0

    const/16 v1, 0x9

    aput-byte p0, v0, v1

    .line 277
    sget-object p0, Lcom/jiabaida/little_elephant/util/BleUtils;->pswBytes:[B

    invoke-static {p0}, Lcom/jiabaida/little_elephant/util/BleUtils;->getCheckCode([B)B

    move-result v0

    const/16 v1, 0xa

    aput-byte v0, p0, v1

    .line 278
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p0

    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->pswBytes:[B

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->writeDataToDevice([B)V

    return-void
.end method

.method public static cleanAppKey()V
    .locals 2

    .line 390
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    sget-object v1, Lcom/jiabaida/little_elephant/util/BleUtils;->cleanAppKeyBytes:[B

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->writeDataToDevice([B)V

    return-void
.end method

.method public static cleanFirstLevPsw()V
    .locals 2

    .line 453
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    sget-object v1, Lcom/jiabaida/little_elephant/util/BleUtils;->cleanFirstLevPswBytes:[B

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->writeDataToDevice([B)V

    return-void
.end method

.method public static cleanPsw()V
    .locals 2

    .line 170
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    sget-object v1, Lcom/jiabaida/little_elephant/util/BleUtils;->cleanPswBytes:[B

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->writeDataToDevice([B)V

    return-void
.end method

.method private static getCheckCode([B)B
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 199
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 200
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 p0, v0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static getICType()V
    .locals 2

    .line 505
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->icTypeCMD:Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    new-instance v1, Lcom/jiabaida/little_elephant/util/BleUtils$1;

    invoke-direct {v1}, Lcom/jiabaida/little_elephant/util/BleUtils$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 517
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    sget-object v1, Lcom/jiabaida/little_elephant/util/BleUtils;->icTypeCMD:Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method

.method public static getRandom()V
    .locals 2

    .line 292
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    sget-object v1, Lcom/jiabaida/little_elephant/util/BleUtils;->randomBytes:[B

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->writeDataToDevice([B)V

    return-void
.end method

.method public static isFastDoubleClick()Z
    .locals 9

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 152
    sget-wide v2, Lcom/jiabaida/little_elephant/util/BleUtils;->lastClickTime:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x1f4

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u95f4\u9694\u65f6\u95f4:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/jiabaida/little_elephant/util/BleUtils;->lastClickTime:J

    sub-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xiezhixian"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    .line 156
    :cond_0
    sput-wide v0, Lcom/jiabaida/little_elephant/util/BleUtils;->lastClickTime:J

    const/4 v0, 0x0

    return v0
.end method

.method public static restoreSecondPsw()V
    .locals 2

    .line 401
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    sget-object v1, Lcom/jiabaida/little_elephant/util/BleUtils;->restoreSecondPswBytes:[B

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->writeDataToDevice([B)V

    return-void
.end method

.method public static returnFactory()V
    .locals 2

    .line 411
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    sget-object v1, Lcom/jiabaida/little_elephant/util/BleUtils;->returnFactoryBytes:[B

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->writeDataToDevice([B)V

    return-void
.end method

.method public static sendAppKey()V
    .locals 3

    .line 226
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->appKeyBytes:[B

    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/BleUtils;->getCheckCode([B)B

    move-result v1

    const/16 v2, 0xa

    aput-byte v1, v0, v2

    .line 228
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    sget-object v1, Lcom/jiabaida/little_elephant/util/BleUtils;->appKeyBytes:[B

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->writeDataToDevice([B)V

    return-void
.end method

.method public static sendBaseAppKey(Ljava/lang/String;)V
    .locals 6

    .line 428
    invoke-static {p0}, Lcom/jiabaida/little_elephant/util/HexConvert;->str2HexStr2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "#"

    .line 429
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 430
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->baseAppKeyBytes:[B

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    const/4 v3, 0x4

    aput-byte v1, v0, v3

    .line 431
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->baseAppKeyBytes:[B

    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    const/4 v4, 0x5

    aput-byte v1, v0, v4

    .line 432
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->baseAppKeyBytes:[B

    const/4 v1, 0x2

    aget-object v1, p0, v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    const/4 v5, 0x6

    aput-byte v1, v0, v5

    .line 433
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->baseAppKeyBytes:[B

    const/4 v1, 0x3

    aget-object v1, p0, v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    const/4 v5, 0x7

    aput-byte v1, v0, v5

    .line 434
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->baseAppKeyBytes:[B

    aget-object v1, p0, v3

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    const/16 v3, 0x8

    aput-byte v1, v0, v3

    .line 435
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->baseAppKeyBytes:[B

    aget-object p0, p0, v4

    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    int-to-byte p0, p0

    const/16 v1, 0x9

    aput-byte p0, v0, v1

    .line 436
    sget-object p0, Lcom/jiabaida/little_elephant/util/BleUtils;->baseAppKeyBytes:[B

    invoke-static {p0}, Lcom/jiabaida/little_elephant/util/BleUtils;->getCheckCode([B)B

    move-result v0

    const/16 v1, 0xa

    aput-byte v0, p0, v1

    .line 437
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p0

    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->baseAppKeyBytes:[B

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->writeDataToDevice([B)V

    return-void
.end method

.method public static sendFirstLevPsw(BLjava/lang/String;)V
    .locals 13

    .line 311
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    const/16 v1, 0x18

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 312
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->str2HexStr2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "#"

    .line 314
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 315
    sget-object v1, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    const/4 v3, 0x0

    aget-object v4, p1, v3

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    const/4 v6, 0x4

    aput-byte v4, v1, v6

    .line 316
    sget-object v1, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    const/4 v4, 0x1

    aget-object v7, p1, v4

    invoke-static {v7, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-byte v7, v7

    const/4 v8, 0x5

    aput-byte v7, v1, v8

    .line 317
    sget-object v1, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    aget-object v7, p1, v2

    invoke-static {v7, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-byte v7, v7

    const/4 v9, 0x6

    aput-byte v7, v1, v9

    .line 318
    sget-object v1, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    const/4 v7, 0x3

    aget-object v10, p1, v7

    invoke-static {v10, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    int-to-byte v10, v10

    const/4 v11, 0x7

    aput-byte v10, v1, v11

    .line 319
    sget-object v1, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    aget-object v10, p1, v6

    invoke-static {v10, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    int-to-byte v10, v10

    const/16 v12, 0x8

    aput-byte v10, v1, v12

    .line 320
    sget-object v1, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    aget-object p1, p1, v8

    invoke-static {p1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    int-to-byte p1, p1

    const/16 v5, 0x9

    aput-byte p1, v1, v5

    .line 322
    sget-object p1, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    aget-object v1, v0, v3

    aget-byte v3, p1, v6

    invoke-static {p0, v1, v3}, Lcom/jiabaida/little_elephant/util/BleUtils;->addPsw(BLjava/lang/String;B)B

    move-result v1

    aput-byte v1, p1, v6

    .line 323
    sget-object p1, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    aget-object v1, v0, v4

    aget-byte v3, p1, v8

    invoke-static {p0, v1, v3}, Lcom/jiabaida/little_elephant/util/BleUtils;->addPsw(BLjava/lang/String;B)B

    move-result v1

    aput-byte v1, p1, v8

    .line 324
    sget-object p1, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    aget-object v1, v0, v2

    aget-byte v2, p1, v9

    invoke-static {p0, v1, v2}, Lcom/jiabaida/little_elephant/util/BleUtils;->addPsw(BLjava/lang/String;B)B

    move-result v1

    aput-byte v1, p1, v9

    .line 325
    sget-object p1, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    aget-object v1, v0, v7

    aget-byte v2, p1, v11

    invoke-static {p0, v1, v2}, Lcom/jiabaida/little_elephant/util/BleUtils;->addPsw(BLjava/lang/String;B)B

    move-result v1

    aput-byte v1, p1, v11

    .line 326
    sget-object p1, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    aget-object v1, v0, v6

    aget-byte v2, p1, v12

    invoke-static {p0, v1, v2}, Lcom/jiabaida/little_elephant/util/BleUtils;->addPsw(BLjava/lang/String;B)B

    move-result v1

    aput-byte v1, p1, v12

    .line 327
    sget-object p1, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    aget-object v0, v0, v8

    aget-byte v1, p1, v5

    invoke-static {p0, v0, v1}, Lcom/jiabaida/little_elephant/util/BleUtils;->addPsw(BLjava/lang/String;B)B

    move-result p0

    aput-byte p0, p1, v5

    .line 328
    sget-object p0, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    invoke-static {p0}, Lcom/jiabaida/little_elephant/util/BleUtils;->getCheckCode([B)B

    move-result p1

    const/16 v0, 0xa

    aput-byte p1, p0, v0

    .line 330
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p0

    sget-object p1, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->writeDataToDevice([B)V

    return-void
.end method

.method public static sendRootPsw(Ljava/lang/String;)V
    .locals 6

    const/16 v0, 0x14

    new-array v0, v0, [B

    const/4 v1, -0x1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, -0x56

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    const/16 v1, 0x1d

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    const/4 v1, 0x3

    const/16 v3, 0xf

    aput-byte v3, v0, v1

    new-array v1, v3, [B

    .line 373
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 374
    div-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_1
    const/16 v2, 0x13

    if-ge p0, v2, :cond_1

    add-int/lit8 v2, p0, -0x4

    .line 377
    aget-byte v2, v1, v2

    aput-byte v2, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 379
    :cond_1
    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/BleUtils;->getCheckCode([B)B

    move-result p0

    aput-byte p0, v0, v2

    .line 380
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->writeDataToDevice([B)V

    return-void
.end method

.method public static sendSecondLevPsw(BLjava/lang/String;)V
    .locals 13

    .line 337
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 338
    sget-object v1, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    const/16 v2, 0x1b

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    .line 340
    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->str2HexStr2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "#"

    .line 341
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 342
    sget-object v1, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    const/4 v2, 0x0

    aget-object v4, p1, v2

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    const/4 v6, 0x4

    aput-byte v4, v1, v6

    .line 343
    sget-object v1, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    const/4 v4, 0x1

    aget-object v7, p1, v4

    invoke-static {v7, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-byte v7, v7

    const/4 v8, 0x5

    aput-byte v7, v1, v8

    .line 344
    sget-object v1, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    aget-object v7, p1, v3

    invoke-static {v7, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-byte v7, v7

    const/4 v9, 0x6

    aput-byte v7, v1, v9

    .line 345
    sget-object v1, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    const/4 v7, 0x3

    aget-object v10, p1, v7

    invoke-static {v10, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    int-to-byte v10, v10

    const/4 v11, 0x7

    aput-byte v10, v1, v11

    .line 346
    sget-object v1, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    aget-object v10, p1, v6

    invoke-static {v10, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    int-to-byte v10, v10

    const/16 v12, 0x8

    aput-byte v10, v1, v12

    .line 347
    sget-object v1, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    aget-object p1, p1, v8

    invoke-static {p1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    int-to-byte p1, p1

    const/16 v5, 0x9

    aput-byte p1, v1, v5

    .line 349
    sget-object p1, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    aget-object v1, v0, v2

    aget-byte v2, p1, v6

    invoke-static {p0, v1, v2}, Lcom/jiabaida/little_elephant/util/BleUtils;->addPsw(BLjava/lang/String;B)B

    move-result v1

    aput-byte v1, p1, v6

    .line 350
    sget-object p1, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    aget-object v1, v0, v4

    aget-byte v2, p1, v8

    invoke-static {p0, v1, v2}, Lcom/jiabaida/little_elephant/util/BleUtils;->addPsw(BLjava/lang/String;B)B

    move-result v1

    aput-byte v1, p1, v8

    .line 351
    sget-object p1, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    aget-object v1, v0, v3

    aget-byte v2, p1, v9

    invoke-static {p0, v1, v2}, Lcom/jiabaida/little_elephant/util/BleUtils;->addPsw(BLjava/lang/String;B)B

    move-result v1

    aput-byte v1, p1, v9

    .line 352
    sget-object p1, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    aget-object v1, v0, v7

    aget-byte v2, p1, v11

    invoke-static {p0, v1, v2}, Lcom/jiabaida/little_elephant/util/BleUtils;->addPsw(BLjava/lang/String;B)B

    move-result v1

    aput-byte v1, p1, v11

    .line 353
    sget-object p1, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    aget-object v1, v0, v6

    aget-byte v2, p1, v12

    invoke-static {p0, v1, v2}, Lcom/jiabaida/little_elephant/util/BleUtils;->addPsw(BLjava/lang/String;B)B

    move-result v1

    aput-byte v1, p1, v12

    .line 354
    sget-object p1, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    aget-object v0, v0, v8

    aget-byte v1, p1, v5

    invoke-static {p0, v0, v1}, Lcom/jiabaida/little_elephant/util/BleUtils;->addPsw(BLjava/lang/String;B)B

    move-result p0

    aput-byte p0, p1, v5

    .line 355
    sget-object p0, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    invoke-static {p0}, Lcom/jiabaida/little_elephant/util/BleUtils;->getCheckCode([B)B

    move-result p1

    const/16 v0, 0xa

    aput-byte p1, p0, v0

    .line 356
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p0

    sget-object p1, Lcom/jiabaida/little_elephant/util/BleUtils;->checkBytes:[B

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->writeDataToDevice([B)V

    return-void
.end method

.method public static setFirstLevPsw(Ljava/lang/String;)V
    .locals 6

    .line 246
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->pswBytes:[B

    const/16 v1, 0x16

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 247
    invoke-static {p0}, Lcom/jiabaida/little_elephant/util/HexConvert;->str2HexStr2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "#"

    .line 248
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 249
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->pswBytes:[B

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    const/4 v4, 0x4

    aput-byte v1, v0, v4

    .line 250
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->pswBytes:[B

    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    const/4 v5, 0x5

    aput-byte v1, v0, v5

    .line 251
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->pswBytes:[B

    aget-object v1, p0, v2

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    .line 252
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->pswBytes:[B

    const/4 v1, 0x3

    aget-object v1, p0, v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    .line 253
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->pswBytes:[B

    aget-object v1, p0, v4

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    const/16 v2, 0x8

    aput-byte v1, v0, v2

    .line 254
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->pswBytes:[B

    aget-object p0, p0, v5

    invoke-static {p0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    int-to-byte p0, p0

    const/16 v1, 0x9

    aput-byte p0, v0, v1

    .line 255
    sget-object p0, Lcom/jiabaida/little_elephant/util/BleUtils;->pswBytes:[B

    invoke-static {p0}, Lcom/jiabaida/little_elephant/util/BleUtils;->getCheckCode([B)B

    move-result v0

    const/16 v1, 0xa

    aput-byte v0, p0, v1

    .line 256
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p0

    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->pswBytes:[B

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->writeDataToDevice([B)V

    return-void
.end method

.method public static testBytes()V
    .locals 2

    .line 498
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    sget-object v1, Lcom/jiabaida/little_elephant/util/BleUtils;->testBytes:[B

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->writeDataToDevice([B)V

    return-void
.end method
