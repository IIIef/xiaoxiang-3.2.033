.class public Lcom/jiabaida/little_elephant/entity/BMSLockOldCMDEntity;
.super Lcom/jiabaida/little_elephant/entity/BMSLockCMDEntity;
.source "BMSLockOldCMDEntity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.entity.BMSLockOldCMDEntity"

.field public static cmd:C = '\u00e1'

.field public static cmdContent:[B = null

.field public static rwMode:I = 0x5a


# instance fields
.field public supportVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 21
    sput-object v0, Lcom/jiabaida/little_elephant/entity/BMSLockOldCMDEntity;->cmdContent:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 24
    sget-char v0, Lcom/jiabaida/little_elephant/entity/BMSLockOldCMDEntity;->cmd:C

    sget-object v1, Lcom/jiabaida/little_elephant/entity/BMSLockOldCMDEntity;->cmdContent:[B

    sget v2, Lcom/jiabaida/little_elephant/entity/BMSLockOldCMDEntity;->rwMode:I

    invoke-direct {p0, v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSLockCMDEntity;-><init>(C[BI)V

    const/16 v0, 0xd

    .line 17
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSLockOldCMDEntity;->supportVersion:I

    return-void
.end method


# virtual methods
.method public formatParams([B)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getCmdApiString()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/entity/BMSLockOldCMDEntity;->getCmdBaseApiString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSLockOldCMDEntity;->supportVersion:I

    return v0
.end method

.method public setLock(Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x2

    .line 29
    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/CommonUtil;->charToByteArray(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/entity/BMSLockOldCMDEntity;->setContent([B)V

    .line 30
    iput-char p1, p0, Lcom/jiabaida/little_elephant/entity/BMSLockOldCMDEntity;->lockCmd:C

    return-void
.end method

.method public setLockState(Ljava/lang/String;ZZ)V
    .locals 2

    .line 40
    sget-object p1, Lcom/jiabaida/little_elephant/entity/BMSLockOldCMDEntity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DD 5A E1 discharge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   charge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    shl-int/lit8 p1, p2, 0x1

    and-int/lit16 p2, p3, 0xff

    or-int/2addr p1, p2

    .line 44
    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/CommonUtil;->charToByteArray(I)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSLockOldCMDEntity;->setContent([B)V

    const/4 p1, 0x0

    .line 45
    iput-char p1, p0, Lcom/jiabaida/little_elephant/entity/BMSLockOldCMDEntity;->lockCmd:C

    return-void
.end method

.method public setUnlock(Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x0

    .line 35
    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/CommonUtil;->charToByteArray(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/entity/BMSLockOldCMDEntity;->setContent([B)V

    .line 36
    iput-char p1, p0, Lcom/jiabaida/little_elephant/entity/BMSLockOldCMDEntity;->lockCmd:C

    return-void
.end method
