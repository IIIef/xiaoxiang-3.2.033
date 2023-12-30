.class public Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;
.super Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
.source "BMSParamsCMDEntity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.entity.BMSParamsCMDEntity"

.field private static final cmd:C = '\u00fa'

.field private static final cmdContent:[B

.field private static final rwMode:I = 0xa5


# instance fields
.field public cmdStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 18
    sput-object v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->cmdContent:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 27
    sget-object v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->cmdContent:[B

    const/16 v1, 0xfa

    const/16 v2, 0xa5

    invoke-direct {p0, v1, v0, v2}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>(C[BI)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 21
    sget-object v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->cmdContent:[B

    const/16 v1, 0xfa

    const/16 v2, 0xa5

    invoke-direct {p0, v1, v0, v2}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>(C[BI)V

    .line 22
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->cmdStart:I

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II)V

    return-void
.end method


# virtual methods
.method public formatHex([BII)Ljava/lang/String;
    .locals 2

    .line 87
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 88
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    invoke-static {v0, p3}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatParams([B)Z
    .locals 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->getContent([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    .line 32
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    array-length p1, p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    return v0

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    aget-byte p1, p1, v0

    shl-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p1, v0

    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->cmdStart:I

    return v1
.end method

.method public formatProductDate(I)Ljava/lang/String;
    .locals 3

    and-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0xf

    shr-int/lit8 p1, p1, 0x9

    add-int/lit16 p1, p1, 0x7d0

    .line 64
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

    return-object p1
.end method

.method public formatString([BII)Ljava/lang/String;
    .locals 2

    .line 75
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 76
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    :try_start_0
    new-instance p1, Ljava/lang/String;

    const-string p2, "utf-8"

    invoke-direct {p1, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method public setParams(II)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 44
    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-byte p1, p2

    aput-byte p1, v0, v2

    .line 47
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setContent([B)V

    return-void
.end method

.method public setParams(II[B)V
    .locals 4

    .line 51
    array-length v0, p3

    const/4 v1, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 53
    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-byte p1, p2

    .line 54
    aput-byte p1, v0, v3

    .line 55
    array-length p1, p3

    invoke-static {p3, v2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setContent([B)V

    return-void
.end method
