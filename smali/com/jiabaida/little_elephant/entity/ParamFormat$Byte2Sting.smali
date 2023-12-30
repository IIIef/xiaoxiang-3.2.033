.class public Lcom/jiabaida/little_elephant/entity/ParamFormat$Byte2Sting;
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
    name = "Byte2Sting"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic format([B)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/ParamFormat$Byte2Sting;->format([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format([B)Ljava/lang/String;
    .locals 2

    .line 95
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "gb2312"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method public format2ByteArray(Ljava/lang/Object;)[B
    .locals 4

    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [B

    :try_start_0
    const-string v2, "gb2312"

    .line 106
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 110
    :goto_0
    array-length p1, v1

    add-int/lit8 v2, p1, 0x1

    .line 111
    new-array v2, v2, [B

    int-to-byte v3, p1

    .line 112
    aput-byte v3, v2, v0

    const/4 v3, 0x1

    .line 113
    invoke-static {v1, v0, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
