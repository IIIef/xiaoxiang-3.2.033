.class public Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;
.super Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
.source "BMSCloseFactoryModeCMDEntity.java"


# static fields
.field private static final CONTENT_INIT:Ljava/lang/String; = "28 28"

.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.entity.BMSCloseFactoryModeCMDEntity"

.field private static final cmd:C = '\u0001'

.field private static final content:Ljava/lang/String; = "00 00"

.field private static final rwMode:I = 0x5a


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "00 00"

    .line 24
    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->hexStr2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x5a

    invoke-direct {p0, v1, v0, v2}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>(C[BI)V

    return-void
.end method


# virtual methods
.method public formatParams([B)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setInit()V
    .locals 1

    const-string v0, "28 28"

    .line 32
    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->hexStr2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setContent([B)V

    return-void
.end method

.method public setUnInit()V
    .locals 1

    const-string v0, "00 00"

    .line 28
    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->hexStr2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setContent([B)V

    return-void
.end method
