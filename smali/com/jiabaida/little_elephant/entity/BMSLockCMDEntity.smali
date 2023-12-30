.class public Lcom/jiabaida/little_elephant/entity/BMSLockCMDEntity;
.super Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
.source "BMSLockCMDEntity.java"


# static fields
.field public static CHARGE:B = 0x1t

.field public static DISCHARGE:B = 0x0t

.field public static OPEN:B = 0x0t

.field public static PREDISCHARGE:B = 0x2t

.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.entity.BMSLockCMDEntity"

.field public static cmd:C = '\u00fb'

.field public static cmdContent:[B = null

.field public static final lockFlag:C = '\u0002'

.field public static rwMode:I = 0x5a

.field public static final unlockFlag:C


# instance fields
.field public lockCmd:C

.field public supportVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 27
    sput-object v0, Lcom/jiabaida/little_elephant/entity/BMSLockCMDEntity;->cmdContent:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 33
    sget-char v0, Lcom/jiabaida/little_elephant/entity/BMSLockCMDEntity;->cmd:C

    sget-object v1, Lcom/jiabaida/little_elephant/entity/BMSLockCMDEntity;->cmdContent:[B

    sget v2, Lcom/jiabaida/little_elephant/entity/BMSLockCMDEntity;->rwMode:I

    invoke-direct {p0, v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>(C[BI)V

    const/16 v0, 0x14

    .line 16
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSLockCMDEntity;->supportVersion:I

    return-void
.end method

.method public constructor <init>(C[BI)V
    .locals 1

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>(C[BI)V

    const/16 v0, 0x14

    .line 16
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSLockCMDEntity;->supportVersion:I

    .line 39
    sput-char p1, Lcom/jiabaida/little_elephant/entity/BMSLockCMDEntity;->cmd:C

    .line 40
    sput p3, Lcom/jiabaida/little_elephant/entity/BMSLockCMDEntity;->rwMode:I

    .line 41
    sput-object p2, Lcom/jiabaida/little_elephant/entity/BMSLockCMDEntity;->cmdContent:[B

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

    .line 78
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/entity/BMSLockCMDEntity;->getCmdBaseApiString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLockCmd()C
    .locals 1

    .line 82
    iget-char v0, p0, Lcom/jiabaida/little_elephant/entity/BMSLockCMDEntity;->lockCmd:C

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSLockCMDEntity;->supportVersion:I

    return v0
.end method

.method public setLock(Ljava/lang/String;)V
    .locals 3

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->intStrToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 48
    sget-object v1, Lcom/jiabaida/little_elephant/entity/BMSLockCMDEntity;->TAG:Ljava/lang/String;

    array-length v2, v0

    invoke-static {v0, v2}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/entity/BMSLockCMDEntity;->setContent([B)V

    .line 50
    iput-char p1, p0, Lcom/jiabaida/little_elephant/entity/BMSLockCMDEntity;->lockCmd:C

    return-void
.end method

.method public setLockState(Ljava/lang/String;ZZ)V
    .locals 1

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 p3, p3, 0x1

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p2, p3

    .line 67
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    sget-object p2, Lcom/jiabaida/little_elephant/entity/BMSLockCMDEntity;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->str2HexStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intStrToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 71
    array-length p3, p1

    invoke-static {p1, p3}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSLockCMDEntity;->setContent([B)V

    const/4 p1, 0x0

    .line 73
    iput-char p1, p0, Lcom/jiabaida/little_elephant/entity/BMSLockCMDEntity;->lockCmd:C

    return-void
.end method

.method public setUnlock(Ljava/lang/String;)V
    .locals 4

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/jiabaida/little_elephant/entity/BMSLockCMDEntity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->str2HexStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->intStrToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 59
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/entity/BMSLockCMDEntity;->setContent([B)V

    .line 61
    iput-char p1, p0, Lcom/jiabaida/little_elephant/entity/BMSLockCMDEntity;->lockCmd:C

    return-void
.end method
