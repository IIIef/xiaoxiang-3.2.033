.class public Lcom/jiabaida/little_elephant/entity/BleCommand;
.super Ljava/lang/Object;
.source "BleCommand.java"


# static fields
.field public static BLeBatteryVoltage:[B = null

.field public static BLeInformation:[B = null

.field public static BMSBarCode:[B = null

.field public static BMSId:[B = null

.field public static BMSModel:[B = null

.field public static BMSdate:[B = null

.field public static BatteryManufacturer:[B = null

.field public static Batterymodel:[B = null

.field public static BleAutomaticEqualization:[B = null

.field public static BleBatteryNum:[B = null

.field public static BleBatteryTemperature:[B = null

.field public static BleBatteryTemperatureDelayed:[B = null

.field public static BleCapacityVoltage:[B = null

.field public static BleCapacityVoltageMore:[B = null

.field public static BleChargingoff:[B = null

.field public static BleChargingon:[B = null

.field public static BleClearAlarm:[B = null

.field public static BleClosefactory:[B = null

.field public static BleConfigure:[B = null

.field public static BleDetection:[B = null

.field public static BleDiscerncurrent:[B = null

.field public static BleDischarge0ff:[B = null

.field public static BleDischargeon:[B = null

.field public static BleEquilibrium:[B = null

.field public static BleEquilibriumSet:[B = null

.field public static BleFullCharge:[B = null

.field public static BleFullVoltage:[B = null

.field public static BleHardwareversion:[B = null

.field public static BleInterval:[B = null

.field public static BleNominalCapacity:[B = null

.field public static BleOpenfactory:[B = null

.field public static BleOvercurrentDelayed:[B = null

.field public static BleOvercurrentProtection:[B = null

.field public static BleResetCapacity:[B = null

.field public static BleResistance:[B = null

.field public static BleShortDelayed:[B = null

.field public static BleTotalDelayed:[B = null

.field public static BleTotalProtection:[B = null

.field public static BleTwocurrentProtection:[B = null

.field public static final CMD_END:I = 0x77

.field public static final CMD_START:I = 0xdd

.field public static Chargingvoltage:[B = null

.field public static final READ_MODE:I = 0xa5

.field public static Serialnumber:[B = null

.field public static final WRITE_MODE:I = 0x5a

.field private static final mChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "0123456789ABCDEF"

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/jiabaida/little_elephant/entity/BleCommand;->mChars:[C

    const/4 v0, 0x5

    new-array v1, v0, [B

    .line 24
    fill-array-data v1, :array_0

    sput-object v1, Lcom/jiabaida/little_elephant/entity/BleCommand;->BMSId:[B

    new-array v1, v0, [B

    .line 25
    fill-array-data v1, :array_1

    sput-object v1, Lcom/jiabaida/little_elephant/entity/BleCommand;->Batterymodel:[B

    new-array v1, v0, [B

    .line 26
    fill-array-data v1, :array_2

    sput-object v1, Lcom/jiabaida/little_elephant/entity/BleCommand;->BMSBarCode:[B

    new-array v1, v0, [B

    .line 27
    fill-array-data v1, :array_3

    sput-object v1, Lcom/jiabaida/little_elephant/entity/BleCommand;->BatteryManufacturer:[B

    new-array v1, v0, [B

    .line 29
    fill-array-data v1, :array_4

    sput-object v1, Lcom/jiabaida/little_elephant/entity/BleCommand;->BMSModel:[B

    new-array v1, v0, [B

    .line 30
    fill-array-data v1, :array_5

    sput-object v1, Lcom/jiabaida/little_elephant/entity/BleCommand;->BMSdate:[B

    new-array v1, v0, [B

    .line 31
    fill-array-data v1, :array_6

    sput-object v1, Lcom/jiabaida/little_elephant/entity/BleCommand;->Serialnumber:[B

    new-array v1, v0, [B

    .line 34
    fill-array-data v1, :array_7

    sput-object v1, Lcom/jiabaida/little_elephant/entity/BleCommand;->Chargingvoltage:[B

    const/4 v1, 0x7

    new-array v2, v1, [B

    .line 37
    fill-array-data v2, :array_8

    sput-object v2, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleHardwareversion:[B

    new-array v2, v1, [B

    .line 40
    fill-array-data v2, :array_9

    sput-object v2, Lcom/jiabaida/little_elephant/entity/BleCommand;->BLeInformation:[B

    new-array v2, v1, [B

    .line 42
    fill-array-data v2, :array_a

    sput-object v2, Lcom/jiabaida/little_elephant/entity/BleCommand;->BLeBatteryVoltage:[B

    const/16 v2, 0x9

    new-array v3, v2, [B

    .line 45
    fill-array-data v3, :array_b

    sput-object v3, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleOpenfactory:[B

    new-array v3, v2, [B

    .line 47
    fill-array-data v3, :array_c

    sput-object v3, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleClosefactory:[B

    new-array v3, v0, [B

    .line 52
    fill-array-data v3, :array_d

    sput-object v3, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleNominalCapacity:[B

    new-array v3, v0, [B

    .line 54
    fill-array-data v3, :array_e

    sput-object v3, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleFullCharge:[B

    new-array v3, v0, [B

    .line 58
    fill-array-data v3, :array_f

    sput-object v3, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleTotalProtection:[B

    new-array v3, v0, [B

    .line 60
    fill-array-data v3, :array_10

    sput-object v3, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleTotalDelayed:[B

    new-array v3, v0, [B

    .line 62
    fill-array-data v3, :array_11

    sput-object v3, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleFullVoltage:[B

    new-array v3, v0, [B

    .line 66
    fill-array-data v3, :array_12

    sput-object v3, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleOvercurrentProtection:[B

    new-array v3, v0, [B

    .line 68
    fill-array-data v3, :array_13

    sput-object v3, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleOvercurrentDelayed:[B

    new-array v3, v0, [B

    .line 71
    fill-array-data v3, :array_14

    sput-object v3, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleTwocurrentProtection:[B

    new-array v3, v0, [B

    .line 74
    fill-array-data v3, :array_15

    sput-object v3, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleShortDelayed:[B

    new-array v3, v0, [B

    .line 78
    fill-array-data v3, :array_16

    sput-object v3, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleBatteryTemperature:[B

    new-array v3, v0, [B

    .line 80
    fill-array-data v3, :array_17

    sput-object v3, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleBatteryTemperatureDelayed:[B

    new-array v3, v0, [B

    .line 85
    fill-array-data v3, :array_18

    sput-object v3, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleCapacityVoltage:[B

    new-array v3, v0, [B

    .line 87
    fill-array-data v3, :array_19

    sput-object v3, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleCapacityVoltageMore:[B

    new-array v3, v0, [B

    .line 91
    fill-array-data v3, :array_1a

    sput-object v3, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleEquilibrium:[B

    new-array v3, v0, [B

    .line 93
    fill-array-data v3, :array_1b

    sput-object v3, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleEquilibriumSet:[B

    new-array v3, v0, [B

    .line 98
    fill-array-data v3, :array_1c

    sput-object v3, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleConfigure:[B

    new-array v1, v1, [B

    .line 102
    fill-array-data v1, :array_1d

    sput-object v1, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleResistance:[B

    new-array v1, v0, [B

    .line 106
    fill-array-data v1, :array_1e

    sput-object v1, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleDiscerncurrent:[B

    new-array v1, v0, [B

    .line 108
    fill-array-data v1, :array_1f

    sput-object v1, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleInterval:[B

    new-array v1, v0, [B

    .line 110
    fill-array-data v1, :array_20

    sput-object v1, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleBatteryNum:[B

    new-array v0, v0, [B

    .line 112
    fill-array-data v0, :array_21

    sput-object v0, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleDetection:[B

    new-array v0, v2, [B

    .line 117
    fill-array-data v0, :array_22

    sput-object v0, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleChargingon:[B

    new-array v0, v2, [B

    .line 119
    fill-array-data v0, :array_23

    sput-object v0, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleChargingoff:[B

    new-array v0, v2, [B

    .line 121
    fill-array-data v0, :array_24

    sput-object v0, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleDischargeon:[B

    new-array v0, v2, [B

    .line 123
    fill-array-data v0, :array_25

    sput-object v0, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleDischarge0ff:[B

    new-array v0, v2, [B

    .line 125
    fill-array-data v0, :array_26

    sput-object v0, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleAutomaticEqualization:[B

    new-array v0, v2, [B

    .line 127
    fill-array-data v0, :array_27

    sput-object v0, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleClearAlarm:[B

    new-array v0, v2, [B

    .line 129
    fill-array-data v0, :array_28

    sput-object v0, Lcom/jiabaida/little_elephant/entity/BleCommand;->BleResetCapacity:[B

    return-void

    :array_0
    .array-data 1
        -0x6t
        0x3t
        0x0t
        -0x56t
        0x6t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x6t
        0x3t
        0x0t
        -0x62t
        0xct
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x6t
        0x3t
        0x0t
        0x58t
        0x10t
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x6t
        0x3t
        0x0t
        0x38t
        0x10t
    .end array-data

    nop

    :array_4
    .array-data 1
        -0x6t
        0x3t
        0x0t
        -0x50t
        0x8t
    .end array-data

    nop

    :array_5
    .array-data 1
        -0x6t
        0x3t
        0x0t
        0x5t
        0x0t
    .end array-data

    nop

    :array_6
    .array-data 1
        -0x6t
        0x3t
        0x0t
        0x6t
        0x1t
    .end array-data

    nop

    :array_7
    .array-data 1
        -0x6t
        0x3t
        0x0t
        0x75t
        0x4t
    .end array-data

    nop

    :array_8
    .array-data 1
        -0x23t
        -0x5bt
        0x5t
        0x0t
        -0x1t
        -0x5t
        0x77t
    .end array-data

    :array_9
    .array-data 1
        -0x23t
        -0x5bt
        0x3t
        0x0t
        -0x1t
        -0x3t
        0x77t
    .end array-data

    :array_a
    .array-data 1
        -0x23t
        -0x5bt
        0x4t
        0x0t
        -0x1t
        -0x4t
        0x77t
    .end array-data

    :array_b
    .array-data 1
        -0x23t
        0x5at
        0x0t
        0x2t
        0x56t
        0x78t
        -0x1t
        0x30t
        0x77t
    .end array-data

    nop

    :array_c
    .array-data 1
        -0x23t
        0x5at
        0x1t
        0x2t
        0x28t
        0x28t
        -0x1t
        -0x53t
        0x77t
    .end array-data

    nop

    :array_d
    .array-data 1
        -0x6t
        0x3t
        0x0t
        0x0t
        0x4t
    .end array-data

    nop

    :array_e
    .array-data 1
        -0x6t
        0x3t
        0x0t
        0x70t
        0x2t
    .end array-data

    nop

    :array_f
    .array-data 1
        -0x6t
        0x3t
        0x0t
        0x10t
        0x8t
    .end array-data

    nop

    :array_10
    .array-data 1
        -0x6t
        0x3t
        0x0t
        0x30t
        0x4t
    .end array-data

    nop

    :array_11
    .array-data 1
        -0x6t
        0x3t
        0x0t
        0x2t
        0x1t
    .end array-data

    nop

    :array_12
    .array-data 1
        -0x6t
        0x3t
        0x0t
        0x18t
        0x2t
    .end array-data

    nop

    :array_13
    .array-data 1
        -0x6t
        0x3t
        0x0t
        0x34t
        0x4t
    .end array-data

    nop

    :array_14
    .array-data 1
        -0x6t
        0x3t
        0x0t
        0x28t
        0x2t
    .end array-data

    nop

    :array_15
    .array-data 1
        -0x6t
        0x3t
        0x0t
        0x2bt
        0x1t
    .end array-data

    nop

    :array_16
    .array-data 1
        -0x6t
        0x3t
        0x0t
        0x8t
        0x8t
    .end array-data

    nop

    :array_17
    .array-data 1
        -0x6t
        0x3t
        0x0t
        0x2ct
        0x4t
    .end array-data

    nop

    :array_18
    .array-data 1
        -0x6t
        0x3t
        0x0t
        0x22t
        0x4t
    .end array-data

    nop

    :array_19
    .array-data 1
        -0x6t
        0x3t
        0x0t
        0x6at
        0x6t
    .end array-data

    nop

    :array_1a
    .array-data 1
        -0x6t
        0x3t
        0x0t
        0x1at
        0x2t
    .end array-data

    nop

    :array_1b
    .array-data 1
        -0x6t
        0x3t
        0x0t
        0x1dt
        0x1t
    .end array-data

    nop

    :array_1c
    .array-data 1
        -0x6t
        0x3t
        0x0t
        0x1dt
        0x2t
    .end array-data

    nop

    :array_1d
    .array-data 1
        -0x23t
        -0x5bt
        -0xat
        0x0t
        -0x1t
        0xat
        0x77t
    .end array-data

    :array_1e
    .array-data 1
        -0x6t
        0x3t
        0x0t
        0x79t
        0x2t
    .end array-data

    nop

    :array_1f
    .array-data 1
        -0x6t
        0x3t
        0x0t
        0x71t
        0x1t
    .end array-data

    nop

    :array_20
    .array-data 1
        -0x6t
        0x3t
        0x0t
        0x1ft
        0x1t
    .end array-data

    nop

    :array_21
    .array-data 1
        -0x6t
        0x3t
        0x0t
        0x1ct
        0x1t
    .end array-data

    nop

    :array_22
    .array-data 1
        -0x23t
        0x5at
        -0x5t
        0x2t
        0x1t
        0x0t
        -0x1t
        0x2t
        0x77t
    .end array-data

    nop

    :array_23
    .array-data 1
        -0x23t
        0x5at
        -0x5t
        0x2t
        0x1t
        0x1t
        -0x1t
        0x1t
        0x77t
    .end array-data

    nop

    :array_24
    .array-data 1
        -0x23t
        0x5at
        -0x5t
        0x2t
        0x0t
        0x0t
        -0x1t
        0x3t
        0x77t
    .end array-data

    nop

    :array_25
    .array-data 1
        -0x23t
        0x5at
        -0x5t
        0x2t
        0x0t
        0x1t
        -0x1t
        0x2t
        0x77t
    .end array-data

    nop

    :array_26
    .array-data 1
        -0x23t
        0x5at
        0xat
        0x2t
        0x7t
        0x0t
        -0x1t
        -0x13t
        0x77t
    .end array-data

    nop

    :array_27
    .array-data 1
        -0x23t
        0x5at
        0xat
        0x2t
        0x4t
        0x0t
        -0x1t
        -0x10t
        0x77t
    .end array-data

    nop

    :array_28
    .array-data 1
        -0x23t
        0x5at
        0xat
        0x2t
        0x1t
        0x0t
        -0x1t
        -0xdt
        0x77t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BmsIDbyte2HexStr([BI)Ljava/lang/String;
    .locals 4

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 373
    sget-object v2, Lcom/jiabaida/little_elephant/entity/BleCommand;->mChars:[C

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x4

    aget-char v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 374
    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static CheckSum([BI)[B
    .locals 4

    .line 417
    array-length p1, p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    not-int p0, v2

    const/4 p1, 0x1

    add-int/2addr p0, p1

    .line 423
    invoke-static {p0}, Lcom/jiabaida/little_elephant/util/CommonUtil;->intToByteArray(I)[B

    move-result-object p0

    .line 424
    array-length v1, p0

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    aget-byte v1, p0, v1

    .line 425
    array-length v3, p0

    sub-int/2addr v3, p1

    aget-byte p0, p0, v3

    new-array v2, v2, [B

    aput-byte v1, v2, v0

    aput-byte p0, v2, p1

    return-object v2
.end method

.method public static Getbytearray([B)[B
    .locals 4

    const/4 v0, 0x1

    .line 286
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 287
    new-array v1, v0, [B

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 289
    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static IsInputProtect(FII)Z
    .locals 0

    int-to-float p2, p2

    cmpl-float p2, p0, p2

    if-ltz p2, :cond_0

    int-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static IsInputProtect(III)Z
    .locals 0

    if-lt p0, p2, :cond_0

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static SendTemperatureConversion(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0xa

    add-int/lit16 p0, p0, 0xaab

    return p0
.end method

.method public static StrTransFloat(Ljava/lang/String;)F
    .locals 2

    const-string v0, "-"

    .line 560
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    .line 561
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 562
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    neg-float p0, p0

    return p0

    .line 564
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static StrTransInt(Ljava/lang/String;)I
    .locals 2

    const-string v0, "-"

    .line 553
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    .line 554
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 555
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    neg-int p0, p0

    return p0

    .line 557
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static TemperatureConversion(I)F
    .locals 1

    add-int/lit16 p0, p0, -0xaab

    int-to-float p0, p0

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public static addZeroForNum(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 512
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p1, :cond_0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 515
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "0"

    .line 516
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 518
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 519
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static bin2hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 588
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    .line 591
    :goto_0
    div-int/lit8 v3, v1, 0x4

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v4, v2, 0x4

    .line 593
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 594
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 595
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 596
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 599
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static byte2HexStr([BI)Ljava/lang/String;
    .locals 4

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 209
    sget-object v2, Lcom/jiabaida/little_elephant/entity/BleCommand;->mChars:[C

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x4

    aget-char v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 211
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static byte2int(B)I
    .locals 2

    and-int/lit16 p0, p0, 0xff

    .line 388
    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x8

    const/16 v1, 0x30

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    .line 390
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static byteHexStrNoSpaces([BI)Ljava/lang/String;
    .locals 4

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 230
    sget-object v2, Lcom/jiabaida/little_elephant/entity/BleCommand;->mChars:[C

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x4

    aget-char v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static byteToHex(B)Ljava/lang/String;
    .locals 2

    and-int/lit16 p0, p0, 0xff

    .line 401
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 402
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static checkBleNameSum(C[BI)[B
    .locals 5

    .line 438
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

    .line 443
    invoke-static {v3}, Lcom/jiabaida/little_elephant/util/CommonUtil;->intToByteArray(I)[B

    move-result-object p0

    .line 444
    array-length p1, p0

    add-int/lit8 p1, p1, -0x2

    aget-byte p1, p0, p1

    .line 445
    array-length p1, p0

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    aget-byte p0, p0, p1

    new-array p1, p2, [B

    aput-byte p0, p1, v1

    return-object p1
.end method

.method public static convertHexStringToBytes(Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 344
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "[a-fA-F0-9]*"

    .line 349
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    goto :goto_1

    .line 354
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 355
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    .line 357
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static convertHexToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 270
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x2

    .line 272
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    .line 274
    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBLECommand([B)[B
    .locals 9

    .line 141
    array-length v0, p0

    const/4 v1, 0x5

    add-int/2addr v0, v1

    new-array v2, v0, [B

    .line 142
    array-length v3, p0

    invoke-static {p0, v3}, Lcom/jiabaida/little_elephant/entity/BleCommand;->CheckSum([BI)[B

    move-result-object v3

    const/16 v4, -0x23

    const/4 v5, 0x0

    .line 143
    aput-byte v4, v2, v5

    const/16 v4, -0x5b

    const/4 v6, 0x1

    .line 144
    aput-byte v4, v2, v6

    .line 145
    aget-byte v4, p0, v5

    const/4 v7, 0x2

    aput-byte v4, v2, v7

    .line 146
    aget-byte v4, p0, v6

    const/4 v8, 0x3

    aput-byte v4, v2, v8

    .line 147
    aget-byte v4, p0, v7

    const/4 v7, 0x4

    aput-byte v4, v2, v7

    .line 148
    aget-byte v4, p0, v8

    aput-byte v4, v2, v1

    .line 149
    aget-byte p0, p0, v7

    const/4 v1, 0x6

    aput-byte p0, v2, v1

    add-int/lit8 p0, v0, -0x3

    .line 150
    array-length v1, v3

    invoke-static {v3, v5, v2, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v6

    const/16 p0, 0x77

    .line 151
    aput-byte p0, v2, v0

    return-object v2
.end method

.method public static getBooleanArray(B)[B
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x7

    :goto_0
    if-ltz v1, :cond_0

    and-int/lit8 v2, p0, 0x1

    int-to-byte v2, v2

    .line 312
    aput-byte v2, v0, v1

    shr-int/lit8 p0, p0, 0x1

    int-to-byte p0, p0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getWriteBLECommand(BI)[B
    .locals 10

    .line 160
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x4

    if-le v0, v1, :cond_0

    .line 162
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 165
    :cond_0
    invoke-static {p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->toBytes(Ljava/lang/String;)[B

    move-result-object p1

    new-array v0, v1, [B

    const/4 v3, -0x6

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    const/4 v3, 0x1

    const/4 v5, 0x5

    aput-byte v5, v0, v3

    const/4 v6, 0x2

    aput-byte v4, v0, v6

    const/4 v7, 0x3

    aput-byte p0, v0, v7

    aput-byte v3, v0, v2

    .line 167
    aget-byte p0, p1, v4

    aput-byte p0, v0, v5

    aget-byte p0, p1, v3

    const/4 p1, 0x6

    aput-byte p0, v0, p1

    const/16 p0, 0xc

    new-array p0, p0, [B

    .line 169
    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->CheckSum([BI)[B

    move-result-object v8

    const/16 v9, -0x23

    aput-byte v9, p0, v4

    const/16 v9, 0x5a

    aput-byte v9, p0, v3

    aget-byte v9, v0, v4

    aput-byte v9, p0, v6

    aget-byte v3, v0, v3

    aput-byte v3, p0, v7

    aget-byte v3, v0, v6

    aput-byte v3, p0, v2

    aget-byte v3, v0, v7

    aput-byte v3, p0, v5

    aget-byte v2, v0, v2

    aput-byte v2, p0, p1

    aget-byte v2, v0, v5

    aput-byte v2, p0, v1

    const/16 v1, 0x8

    aget-byte p1, v0, p1

    aput-byte p1, p0, v1

    const/16 p1, 0x9

    .line 179
    array-length v0, v8

    invoke-static {v8, v4, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0xb

    const/16 v0, 0x77

    aput-byte v0, p0, p1

    return-object p0
.end method

.method public static getWriteBLEName([BI)[B
    .locals 6

    const/4 v0, 0x7

    .line 187
    invoke-static {v0, p0, p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->checkBleNameSum(C[BI)[B

    move-result-object v1

    add-int/lit8 v2, p1, 0x5

    .line 188
    new-array v2, v2, [B

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 189
    aput-byte v3, v2, v4

    const/4 v3, 0x1

    const/16 v5, -0x56

    .line 190
    aput-byte v5, v2, v3

    const/4 v3, 0x2

    .line 191
    aput-byte v0, v2, v3

    int-to-byte v0, p1

    const/4 v3, 0x3

    .line 192
    aput-byte v0, v2, v3

    const/4 v0, 0x4

    .line 193
    invoke-static {p0, v4, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, v0

    .line 194
    array-length p0, v1

    invoke-static {v1, v4, v2, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static hex2decimal(Ljava/lang/String;)I
    .locals 1

    const/16 v0, 0x10

    .line 300
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static hexStrToBinaryStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_3

    const-string v0, ""

    .line 247
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 252
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 253
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    .line 254
    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 258
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v2

    goto :goto_0

    .line 261
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hexToByte(Ljava/lang/String;)B
    .locals 1

    const/16 v0, 0x10

    .line 483
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public static hexToByteArray(Ljava/lang/String;)[B
    .locals 6

    .line 455
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 457
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 460
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 464
    :cond_0
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    add-int/lit8 v5, v3, 0x2

    .line 468
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jiabaida/little_elephant/entity/BleCommand;->hexToByte(Ljava/lang/String;)B

    move-result v3

    aput-byte v3, v1, v4

    add-int/2addr v4, v2

    move v3, v5

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static parseByte2HexStr(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x2

    .line 577
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static pinJie2ByteToInt(BB)I
    .locals 0

    shl-int/lit8 p0, p0, 0x8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method public static toBytes(Ljava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 493
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    .line 496
    invoke-static {p0, v1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->addZeroForNum(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 497
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 498
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v3, v2, 0x2

    .line 499
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    .line 500
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    new-array p0, v0, [B

    return-object p0
.end method
