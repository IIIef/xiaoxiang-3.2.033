.class public Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;
.super Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
.source "BLENameCMDEntity.java"


# static fields
.field public static final BASE_BYTE_LEN:I = 0x5

.field public static final CMD_START:I = 0xff

.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.entity.BLENameCMDEntity"

.field private static final cmd:C = '\u0007'


# instance fields
.field private cmdContent:[B

.field public rwMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>()V

    const/16 v0, 0xaa

    .line 17
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;->rwMode:I

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 24
    iput-object v0, p0, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;->cmdContent:[B

    return-void
.end method

.method public static checkSum(C[BI)[B
    .locals 5

    .line 75
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

    .line 80
    invoke-static {v3}, Lcom/jiabaida/little_elephant/util/CommonUtil;->intToByteArray(I)[B

    move-result-object p0

    .line 81
    array-length p1, p0

    add-int/lit8 p1, p1, -0x2

    aget-byte p1, p0, p1

    .line 82
    array-length p1, p0

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    aget-byte p0, p0, p1

    new-array p1, p2, [B

    aput-byte p0, p1, v1

    return-object p1
.end method


# virtual methods
.method protected calCmdApi()[B
    .locals 6

    .line 54
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;->cmdContent:[B

    iget-char v1, p0, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;->contentLength:C

    const/4 v2, 0x7

    invoke-static {v2, v0, v1}, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;->checkSum(C[BI)[B

    move-result-object v0

    .line 55
    iget-char v1, p0, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;->contentLength:C

    add-int/lit8 v1, v1, 0x5

    new-array v1, v1, [B

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 56
    aput-byte v3, v1, v4

    .line 57
    iget v3, p0, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;->rwMode:I

    int-to-byte v3, v3

    const/4 v5, 0x1

    aput-byte v3, v1, v5

    const/4 v3, 0x2

    .line 58
    aput-byte v2, v1, v3

    .line 59
    iget-char v2, p0, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;->contentLength:C

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    .line 60
    iget-object v2, p0, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;->cmdContent:[B

    iget-char v3, p0, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;->contentLength:C

    const/4 v5, 0x4

    invoke-static {v2, v4, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iget-char v2, p0, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;->contentLength:C

    add-int/2addr v2, v5

    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public checkSum([B)Z
    .locals 9

    const/4 v0, 0x2

    .line 87
    aget-byte v1, p1, v0

    int-to-char v1, v1

    const/4 v2, 0x3

    .line 88
    aget-byte v2, p1, v2

    add-int/lit8 v3, v2, 0x4

    const/4 v4, 0x4

    .line 89
    invoke-static {p1, v4, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 91
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    aget-byte v8, v3, v6

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v2, v1

    and-int/lit16 v1, v2, 0xff

    add-int/2addr v7, v1

    .line 96
    invoke-static {v7}, Lcom/jiabaida/little_elephant/util/CommonUtil;->intToByteArray(I)[B

    move-result-object v1

    .line 97
    array-length v2, v1

    sub-int/2addr v2, v0

    aget-byte v0, v1, v2

    .line 98
    array-length v0, v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    aget-byte v0, v1, v0

    .line 99
    array-length v1, p1

    sub-int/2addr v1, v2

    aget-byte p1, p1, v1

    if-ne v0, p1, :cond_1

    const/4 v5, 0x1

    :cond_1
    return v5
.end method

.method public formatParams([B)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getCmdApiString()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;->cmdApiString:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseStatus()I
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;->getResponseSrcDatas()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, -0x2710

    return v0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;->getResponseSrcDatas()[B

    move-result-object v0

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public setContent([B)V
    .locals 1

    .line 43
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;->cmdContent:[B

    .line 44
    array-length p1, p1

    int-to-char p1, p1

    iput-char p1, p0, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;->contentLength:C

    .line 45
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;->calCmdApi()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;->cmdApi:[B

    .line 46
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;->cmdApi:[B

    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;->cmdApi:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;->cmdApiString:Ljava/lang/String;

    return-void
.end method
