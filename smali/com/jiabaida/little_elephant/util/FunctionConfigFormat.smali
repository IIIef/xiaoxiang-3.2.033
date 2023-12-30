.class public Lcom/jiabaida/little_elephant/util/FunctionConfigFormat;
.super Ljava/lang/Object;
.source "FunctionConfigFormat.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mOpenBalanceCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;


# direct methods
.method public constructor <init>(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-class v0, Lcom/jiabaida/little_elephant/util/FunctionConfigFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/FunctionConfigFormat;->TAG:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/FunctionConfigFormat;->mOpenBalanceCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-void
.end method


# virtual methods
.method public format([B)Ljava/lang/Integer;
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/FunctionConfigFormat;->mOpenBalanceCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0x4

    shr-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V

    .line 25
    aget-byte p1, p1, v1

    and-int/lit8 p1, p1, 0x8

    shr-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic format([B)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/util/FunctionConfigFormat;->format([B)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public format2ByteArray(Ljava/lang/Object;)[B
    .locals 5

    .line 31
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/FunctionConfigFormat;->mOpenBalanceCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->getResponseSrcDatas()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->getContent([B)[B

    move-result-object v0

    const/4 v1, 0x1

    .line 32
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    .line 34
    iget-object v3, p0, Lcom/jiabaida/little_elephant/util/FunctionConfigFormat;->mOpenBalanceCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget v3, v3, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    or-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_0
    not-int v2, v2

    or-int/lit8 v2, v2, 0x4

    not-int v2, v2

    .line 41
    :goto_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_1

    or-int/lit8 p1, v2, 0x8

    goto :goto_1

    :cond_1
    not-int p1, v2

    or-int/lit8 p1, p1, 0x8

    not-int p1, p1

    .line 47
    :goto_1
    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/CommonUtil;->charToByteArray(I)[B

    move-result-object p1

    aget-byte p1, p1, v1

    aput-byte p1, v0, v1

    return-object v0
.end method
