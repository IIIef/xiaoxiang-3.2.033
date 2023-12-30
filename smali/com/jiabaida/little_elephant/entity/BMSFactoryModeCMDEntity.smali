.class public Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;
.super Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
.source "BMSFactoryModeCMDEntity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.entity.BMSFactoryModeCMDEntity"

.field private static final cmd:C = '\u0000'

.field private static final content:Ljava/lang/String; = "56 78"

.field private static final rwMode:I = 0x5a


# instance fields
.field private nextMsg:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "56 78"

    .line 23
    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->hexStr2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

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

.method public getNextMsg()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->nextMsg:I

    return v0
.end method

.method public setNextMsg(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->nextMsg:I

    return-void
.end method
