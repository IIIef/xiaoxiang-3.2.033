.class public Lcom/jiabaida/little_elephant/entity/BMSBalanceCMDEntity;
.super Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
.source "BMSBalanceCMDEntity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.entity.BMSBalanceCMDEntity"

.field public static cmd:C = '\u00f4'

.field public static cmdContent:[B = null

.field public static rwMode:I = 0x5a


# instance fields
.field public lockCmd:C

.field public supportVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 20
    sput-object v0, Lcom/jiabaida/little_elephant/entity/BMSBalanceCMDEntity;->cmdContent:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 24
    sget-char v0, Lcom/jiabaida/little_elephant/entity/BMSBalanceCMDEntity;->cmd:C

    sget-object v1, Lcom/jiabaida/little_elephant/entity/BMSBalanceCMDEntity;->cmdContent:[B

    sget v2, Lcom/jiabaida/little_elephant/entity/BMSBalanceCMDEntity;->rwMode:I

    invoke-direct {p0, v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>(C[BI)V

    const/16 v0, 0x1b

    .line 16
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBalanceCMDEntity;->supportVersion:I

    return-void
.end method

.method public constructor <init>(C[BI)V
    .locals 1

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>(C[BI)V

    const/16 v0, 0x1b

    .line 16
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBalanceCMDEntity;->supportVersion:I

    .line 30
    sput-char p1, Lcom/jiabaida/little_elephant/entity/BMSBalanceCMDEntity;->cmd:C

    .line 31
    sput p3, Lcom/jiabaida/little_elephant/entity/BMSBalanceCMDEntity;->rwMode:I

    .line 32
    sput-object p2, Lcom/jiabaida/little_elephant/entity/BMSBalanceCMDEntity;->cmdContent:[B

    return-void
.end method


# virtual methods
.method public closeBalance()V
    .locals 3

    const-string v0, "00"

    .line 44
    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->intStrToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 45
    sget-object v1, Lcom/jiabaida/little_elephant/entity/BMSBalanceCMDEntity;->TAG:Ljava/lang/String;

    array-length v2, v0

    invoke-static {v0, v2}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/entity/BMSBalanceCMDEntity;->setContent([B)V

    return-void
.end method

.method public formatParams([B)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getCmdApiString()Ljava/lang/String;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/entity/BMSBalanceCMDEntity;->getCmdBaseApiString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLockCmd()C
    .locals 1

    .line 55
    iget-char v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBalanceCMDEntity;->lockCmd:C

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBalanceCMDEntity;->supportVersion:I

    return v0
.end method

.method public openBalance()V
    .locals 3

    const-string v0, "01"

    .line 37
    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->intStrToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 38
    sget-object v1, Lcom/jiabaida/little_elephant/entity/BMSBalanceCMDEntity;->TAG:Ljava/lang/String;

    array-length v2, v0

    invoke-static {v0, v2}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/entity/BMSBalanceCMDEntity;->setContent([B)V

    return-void
.end method
