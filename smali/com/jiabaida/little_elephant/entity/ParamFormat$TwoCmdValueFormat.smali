.class public Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoCmdValueFormat;
.super Ljava/lang/Object;
.source "ParamFormat.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/entity/ParamFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TwoCmdValueFormat"
.end annotation


# instance fields
.field highCmdEntity:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;


# direct methods
.method public constructor <init>(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoCmdValueFormat;->highCmdEntity:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-void
.end method


# virtual methods
.method public format([B)Ljava/lang/Integer;
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoCmdValueFormat;->highCmdEntity:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V

    const/4 v0, 0x0

    .line 274
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic format([B)Ljava/lang/Object;
    .locals 0

    .line 264
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoCmdValueFormat;->format([B)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public format2ByteArray(Ljava/lang/Object;)[B
    .locals 1

    .line 280
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x8

    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoCmdValueFormat;->highCmdEntity:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->getMillVal()I

    move-result v0

    or-int/2addr p1, v0

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/CommonUtil;->charToByteArray(I)[B

    move-result-object p1

    return-object p1
.end method
