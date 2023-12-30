.class public Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;
.super Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
.source "BMSBaseInfoCMDEntity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.entity.BMSBaseInfoCMDEntity"

.field private static final cmd:C = '\u0003'

.field private static final cmdContent:[B

.field public static protectionTypes:[I = null

.field private static final rwMode:I = 0xa5


# instance fields
.field public RSOC:I

.field public alter:I

.field public balanceCurrent:F

.field public balanceState:I

.field public balanceStates:[Z

.field public chargeSwithOnOff:Z

.field public current:F

.field public cycleTimes:I

.field public fetState:B

.field public humidity:I

.field public isOldVersion:Z

.field public learnCapacity:F

.field public nominalPower:F

.field public ntcNum:I

.field public outputSwitchOnOff:Z

.field private params:[Ljava/lang/String;

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

.field public remaindPower:F

.field private sb:Ljava/lang/StringBuffer;

.field public serial:I

.field public tempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jiabaida/little_elephant/entity/KeyValEntity;",
            ">;"
        }
    .end annotation
.end field

.field private tempTitle:Ljava/lang/String;

.field public totalVoltage:F

.field public version:Ljava/lang/String;

.field public versionInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 23
    sput-object v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->cmdContent:[B

    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 34
    fill-array-data v0, :array_0

    sput-object v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->protectionTypes:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0d0041
        0x7f0d0044
        0x7f0d0099
        0x7f0d009b
        0x7f0d004d
        0x7f0d004b
        0x7f0d0095
        0x7f0d0094
        0x7f0d004c
        0x7f0d0093
        0x7f0d0000
        0x7f0d0002
        0x7f0d00b9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 15

    .line 92
    sget-object v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->cmdContent:[B

    const/4 v1, 0x3

    const/16 v2, 0xa5

    invoke-direct {p0, v1, v0, v2}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>(C[BI)V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->protectionStateIndex:I

    const-string v1, "totalVoltage"

    const-string v2, "totalCurrent"

    const-string v3, "remaindPower"

    const-string v4, "nominalPower"

    const-string v5, "cycleTimes"

    const-string v6, "productDate"

    const-string v7, "balanceState"

    const-string v8, "balanceState_h"

    const-string v9, "protectionState"

    const-string v10, "version"

    const-string v11, "RSOC"

    const-string v12, "FETState"

    const-string v13, "batterySerial"

    const-string v14, "NTCNum"

    .line 27
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->params:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->balanceState:I

    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 57
    iput-object v1, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->protectionState:[B

    .line 63
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->chargeSwithOnOff:Z

    .line 64
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->outputSwitchOnOff:Z

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->isOldVersion:Z

    const-string v0, "temp"

    .line 89
    iput-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->tempTitle:Ljava/lang/String;

    .line 201
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->sb:Ljava/lang/StringBuffer;

    return-void
.end method

.method private formatBalanceStates([B)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 269
    :goto_0
    iget-object v2, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->balanceStates:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_4

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-ge v1, v3, :cond_0

    .line 272
    aget-byte v3, p1, v4

    goto :goto_1

    :cond_0
    const/16 v5, 0x10

    if-lt v1, v3, :cond_1

    if-ge v1, v5, :cond_1

    .line 274
    aget-byte v3, p1, v0

    goto :goto_1

    :cond_1
    if-lt v1, v5, :cond_2

    const/16 v3, 0x18

    if-ge v1, v3, :cond_2

    const/4 v3, 0x3

    .line 276
    aget-byte v3, p1, v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    .line 278
    aget-byte v3, p1, v3

    .line 281
    :goto_1
    rem-int/lit8 v5, v1, 0x8

    ushr-int/2addr v3, v5

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 284
    :goto_2
    aput-boolean v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private formatFetState(B)V
    .locals 3

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 226
    iput-boolean v2, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->chargeSwithOnOff:Z

    goto :goto_0

    .line 228
    :cond_0
    iput-boolean v1, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->chargeSwithOnOff:Z

    :goto_0
    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    .line 232
    iput-boolean v2, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->outputSwitchOnOff:Z

    goto :goto_1

    .line 234
    :cond_1
    iput-boolean v1, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->outputSwitchOnOff:Z

    :goto_1
    return-void
.end method

.method private formatProductDate(I)V
    .locals 3

    and-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0xf

    shr-int/lit8 p1, p1, 0x9

    add-int/lit16 p1, p1, 0x7d0

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->productDate:Ljava/lang/String;

    return-void
.end method

.method private formatProtectionState([B)V
    .locals 5

    .line 240
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->protectionStateList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->protectionStateList:Ljava/util/ArrayList;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->protectionStateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    .line 247
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->protectionStateIndex:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 248
    :goto_0
    sget-object v2, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->protectionTypes:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 252
    aget-byte v2, p1, v3

    move v4, v1

    goto :goto_1

    .line 255
    :cond_1
    aget-byte v2, p1, v0

    add-int/lit8 v4, v1, -0x8

    :goto_1
    and-int/lit16 v2, v2, 0xff

    shr-int/2addr v2, v4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2

    .line 260
    iput v1, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->protectionStateIndex:I

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 262
    :goto_2
    new-instance v2, Lcom/jiabaida/little_elephant/entity/KeyValEntity;

    sget-object v4, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->protectionTypes:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/jiabaida/little_elephant/entity/KeyValEntity;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 263
    iget-object v3, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->protectionStateList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private formatTemp(ILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 290
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 291
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    .line 292
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    mul-int/lit16 v0, v0, 0x100

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, -0xaab

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    .line 294
    new-instance v1, Lcom/jiabaida/little_elephant/entity/KeyValEntity;

    iget-object v2, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/jiabaida/little_elephant/entity/KeyValEntity;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private formatVersion(B)V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->sb:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v0, 0x1

    new-array v2, v0, [B

    aput-byte p1, v2, v1

    .line 205
    invoke-static {v2, v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->version:Ljava/lang/String;

    and-int/lit16 p1, p1, 0xff

    .line 211
    :try_start_0
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->versionInt:I

    .line 212
    sput p1, Lcom/jiabaida/little_elephant/util/BleUtils;->softwareVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u7248\u672cversionInt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "xzx"

    invoke-static {v1, p1}, Lcom/jiabaida/little_elephant/util/IdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->version:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v0, :cond_0

    .line 217
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->sb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->version:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->version:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public formatParams([B)Z
    .locals 18

    move-object/from16 v0, p0

    .line 101
    invoke-virtual/range {p0 .. p1}, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->getContent([B)[B

    move-result-object v1

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->tempList:Ljava/util/ArrayList;

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-byte v4, v1, v3

    invoke-static {v4}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-byte v5, v1, v4

    invoke-static {v5}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x10

    .line 107
    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v2, v6

    iput v2, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->totalVoltage:F

    const/4 v2, 0x2

    .line 108
    aget-byte v7, v1, v2

    const/16 v8, 0x8

    shl-int/2addr v7, v8

    const/4 v9, 0x3

    aget-byte v10, v1, v9

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v7, v10

    int-to-float v7, v7

    div-float/2addr v7, v6

    iput v7, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->current:F

    const/4 v7, 0x4

    .line 109
    aget-byte v10, v1, v7

    shl-int/2addr v10, v8

    const/4 v11, 0x5

    aget-byte v12, v1, v11

    and-int/lit16 v12, v12, 0xff

    add-int/2addr v10, v12

    int-to-float v10, v10

    div-float/2addr v10, v6

    iput v10, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->remaindPower:F

    const/4 v12, 0x6

    .line 110
    aget-byte v12, v1, v12

    shl-int/2addr v12, v8

    const/4 v13, 0x7

    aget-byte v14, v1, v13

    and-int/lit16 v14, v14, 0xff

    add-int/2addr v12, v14

    int-to-float v12, v12

    div-float/2addr v12, v6

    iput v12, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->nominalPower:F

    const v14, 0x4423d70a

    const/4 v15, 0x0

    cmpg-float v16, v12, v15

    if-gez v16, :cond_0

    add-float/2addr v12, v14

    .line 112
    iput v12, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->nominalPower:F

    :cond_0
    cmpg-float v12, v10, v15

    if-gez v12, :cond_1

    add-float/2addr v10, v14

    .line 115
    iput v10, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->remaindPower:F

    .line 117
    :cond_1
    aget-byte v10, v1, v8

    shl-int/2addr v10, v8

    const/16 v12, 0x9

    aget-byte v12, v1, v12

    and-int/lit16 v12, v12, 0xff

    add-int/2addr v10, v12

    iput v10, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->cycleTimes:I

    const/16 v10, 0xa

    .line 121
    aget-byte v10, v1, v10

    shl-int/2addr v10, v8

    const/16 v12, 0xb

    aget-byte v12, v1, v12

    and-int/lit16 v12, v12, 0xff

    add-int/2addr v10, v12

    invoke-direct {v0, v10}, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->formatProductDate(I)V

    new-array v10, v7, [B

    const/16 v12, 0xc

    .line 123
    aget-byte v14, v1, v12

    aput-byte v14, v10, v3

    const/16 v14, 0xd

    .line 124
    aget-byte v15, v1, v14

    aput-byte v15, v10, v4

    const/16 v15, 0xe

    .line 125
    aget-byte v16, v1, v15

    aput-byte v16, v10, v2

    const/16 v16, 0xf

    .line 126
    aget-byte v17, v1, v16

    aput-byte v17, v10, v9

    .line 128
    aget-byte v12, v1, v12

    and-int/lit16 v12, v12, 0xff

    aget-byte v14, v1, v14

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v12, v14

    aget-byte v14, v1, v15

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v12, v14

    aget-byte v14, v1, v16

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v12, v14

    iput v12, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->balanceState:I

    .line 130
    iget-object v12, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->protectionState:[B

    aget-byte v5, v1, v5

    aput-byte v5, v12, v3

    const/16 v5, 0x11

    .line 131
    aget-byte v5, v1, v5

    aput-byte v5, v12, v4

    .line 132
    invoke-direct {v0, v12}, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->formatProtectionState([B)V

    const/16 v5, 0x12

    .line 134
    aget-byte v5, v1, v5

    invoke-direct {v0, v5}, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->formatVersion(B)V

    const/16 v5, 0x13

    .line 136
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->RSOC:I

    const/16 v5, 0x14

    .line 137
    aget-byte v5, v1, v5

    iput-byte v5, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->fetState:B

    const/16 v5, 0x15

    .line 138
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->serial:I

    const/16 v5, 0x16

    .line 139
    aget-byte v12, v1, v5

    and-int/lit16 v12, v12, 0xff

    iput v12, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->ntcNum:I

    .line 140
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 141
    :goto_0
    iget v15, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->ntcNum:I

    if-ge v14, v15, :cond_3

    .line 142
    array-length v15, v1

    sub-int/2addr v15, v4

    mul-int/lit8 v16, v14, 0x2

    add-int/lit8 v16, v16, 0x16

    add-int/lit8 v13, v16, 0x2

    if-lt v15, v13, :cond_2

    add-int/lit8 v16, v16, 0x1

    .line 143
    aget-byte v15, v1, v16

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    aget-byte v13, v1, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x7

    goto :goto_0

    .line 148
    :cond_3
    iget-byte v13, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->fetState:B

    invoke-direct {v0, v13}, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->formatFetState(B)V

    .line 150
    iget v13, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->serial:I

    new-array v13, v13, [Z

    iput-object v13, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->balanceStates:[Z

    .line 151
    invoke-direct {v0, v10}, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->formatBalanceStates([B)V

    .line 152
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/high16 v13, 0x41200000    # 10.0f

    if-le v10, v4, :cond_5

    .line 153
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Byte;

    invoke-virtual {v10}, Ljava/lang/Byte;->byteValue()B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    .line 154
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Byte;

    invoke-virtual {v14}, Ljava/lang/Byte;->byteValue()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    mul-int/lit16 v10, v10, 0x100

    add-int/2addr v10, v14

    add-int/lit16 v10, v10, -0xaab

    int-to-float v10, v10

    div-float/2addr v10, v13

    const/high16 v14, 0x43480000    # 200.0f

    cmpl-float v10, v10, v14

    if-gez v10, :cond_4

    goto :goto_1

    .line 157
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u6570\u636e\u4e0d\u5bf9,\u4e0d\u663e\u793aui"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_5
    :goto_1
    iget v10, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->ntcNum:I

    invoke-direct {v0, v10, v12}, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->formatTemp(ILjava/util/ArrayList;)V

    .line 163
    array-length v10, v1

    iget v12, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->ntcNum:I

    mul-int/lit8 v14, v12, 0x2

    add-int/2addr v14, v5

    add-int/2addr v14, v11

    if-le v10, v14, :cond_7

    .line 164
    iput-boolean v3, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->isOldVersion:Z

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v5

    add-int/lit8 v3, v12, 0x1

    .line 167
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->humidity:I

    add-int/lit8 v5, v12, 0x2

    .line 169
    aget-byte v5, v1, v5

    shl-int/2addr v5, v8

    add-int/lit8 v10, v12, 0x3

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v5, v10

    iput v5, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->alter:I

    add-int/lit8 v5, v12, 0x4

    .line 171
    aget-byte v5, v1, v5

    shl-int/2addr v5, v8

    add-int/lit8 v10, v12, 0x5

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v5, v10

    int-to-float v5, v5

    div-float/2addr v5, v6

    iput v5, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->learnCapacity:F

    const/16 v5, 0x88

    if-ne v3, v5, :cond_6

    .line 173
    aget-byte v2, v1, v2

    shl-int/2addr v2, v8

    aget-byte v3, v1, v9

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v13

    iput v2, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->current:F

    .line 174
    aget-byte v2, v1, v7

    shl-int/2addr v2, v8

    aget-byte v3, v1, v11

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v13

    iput v2, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->remaindPower:F

    :cond_6
    add-int/lit8 v2, v12, 0x6

    .line 179
    aget-byte v2, v1, v2

    shl-int/2addr v2, v8

    const/4 v3, 0x7

    add-int/2addr v12, v3

    aget-byte v1, v1, v12

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr v1, v6

    iput v1, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->balanceCurrent:F

    goto :goto_2

    .line 183
    :cond_7
    iput-boolean v4, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->isOldVersion:Z

    .line 185
    :goto_2
    iput-boolean v4, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->isOldVersion:Z

    return v4
.end method

.method public setTempText(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->tempTitle:Ljava/lang/String;

    return-void
.end method
