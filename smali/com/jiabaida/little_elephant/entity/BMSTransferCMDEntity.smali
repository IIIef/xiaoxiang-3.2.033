.class public Lcom/jiabaida/little_elephant/entity/BMSTransferCMDEntity;
.super Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
.source "BMSTransferCMDEntity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.entity.BMSTransferCMDEntity"


# instance fields
.field public cmdStr:Ljava/lang/String;

.field private responseStr:Ljava/lang/String;

.field private txnNo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 41
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->hexStr2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/entity/BMSTransferCMDEntity;->getContent([B)[B

    move-result-object v1

    const/4 v2, 0x2

    .line 44
    aget-byte v0, v0, v2

    int-to-char v0, v0

    iput-char v0, p0, Lcom/jiabaida/little_elephant/entity/BMSTransferCMDEntity;->cmd:C

    .line 45
    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/entity/BMSTransferCMDEntity;->setContent([B)V

    const/16 v0, 0xa5

    .line 46
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/entity/BMSTransferCMDEntity;->setMode(I)V

    const/4 v0, 0x4

    .line 48
    :try_start_0
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    .line 49
    invoke-static {p1, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSTransferCMDEntity;->setMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "xiezhixian"

    const-string v0, "\u957f\u5ea6\u89e3\u6790\u9519\u8bef"

    .line 51
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public formatParams([B)Z
    .locals 2

    .line 58
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSTransferCMDEntity;->responseStr:Ljava/lang/String;

    const/4 p1, 0x0

    return p1
.end method

.method public getCmdAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.jiabaida.xiaoxiang.ble.batchCMD"

    return-object v0
.end method

.method public getResponseStr()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSTransferCMDEntity;->responseStr:Ljava/lang/String;

    return-object v0
.end method

.method public getTxnNo()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSTransferCMDEntity;->txnNo:Ljava/lang/String;

    return-object v0
.end method

.method public setResponseStr(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSTransferCMDEntity;->responseStr:Ljava/lang/String;

    return-void
.end method

.method public setTxnNo(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSTransferCMDEntity;->txnNo:Ljava/lang/String;

    return-void
.end method
