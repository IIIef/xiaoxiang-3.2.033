.class public Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2SignedInt;
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
    name = "TwoByte2SignedInt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format([B)Ljava/lang/Integer;
    .locals 2

    .line 72
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const p1, -0x5f5e0ff

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 77
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v0, p1

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic format([B)Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2SignedInt;->format([B)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public format2ByteArray(Ljava/lang/Object;)[B
    .locals 0

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/CommonUtil;->charToByteArray(I)[B

    move-result-object p1

    return-object p1
.end method
