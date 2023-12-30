.class public Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;
.super Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
.source "BMSAdjustCMDEntity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.entity.BMSAdjustCMDEntity"

.field private static final cmdContent:[B

.field private static final rwMode:I = 0x5a


# instance fields
.field public cmd:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 26
    sput-object v0, Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;->cmdContent:[B

    return-void
.end method

.method public constructor <init>(C)V
    .locals 2

    .line 31
    sget-object v0, Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;->cmdContent:[B

    const/16 v1, 0x5a

    invoke-direct {p0, p1, v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>(C[BI)V

    .line 32
    iput-char p1, p0, Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;->cmd:C

    return-void
.end method


# virtual methods
.method public formatParams([B)Z
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;->getContent([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;->returnContent:[B

    const/4 p1, 0x1

    return p1
.end method

.method public setTempContent(I)V
    .locals 0

    mul-int/lit8 p1, p1, 0xa

    add-int/lit16 p1, p1, 0xaab

    .line 45
    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;->setContent([B)V

    return-void
.end method
