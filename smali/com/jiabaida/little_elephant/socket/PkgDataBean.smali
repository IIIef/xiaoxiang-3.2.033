.class public Lcom/jiabaida/little_elephant/socket/PkgDataBean;
.super Ljava/lang/Object;
.source "PkgDataBean.java"


# instance fields
.field private cmd:I

.field private data:Ljava/lang/String;

.field private dataLength:B

.field private isAnonymous:I

.field private msgType:I

.field private response:Lorg/json/JSONObject;

.field private txnNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCmd()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->cmd:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDataLength()B
    .locals 1

    .line 68
    iget-byte v0, p0, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->dataLength:B

    return v0
.end method

.method public getIsAnonymous()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->isAnonymous:I

    return v0
.end method

.method public getMsgType()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->msgType:I

    return v0
.end method

.method public getResponse()Lorg/json/JSONObject;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->response:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getTxnNo()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->txnNo:Ljava/lang/String;

    return-object v0
.end method

.method public setCmd(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->cmd:I

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->data:Ljava/lang/String;

    return-void
.end method

.method public setDataLength(B)V
    .locals 0

    .line 64
    iput-byte p1, p0, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->dataLength:B

    return-void
.end method

.method public setIsAnonymous(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->isAnonymous:I

    return-void
.end method

.method public setMsgType(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->msgType:I

    return-void
.end method

.method public setResponse(Lorg/json/JSONObject;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->response:Lorg/json/JSONObject;

    return-void
.end method

.method public setTxnNo(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->txnNo:Ljava/lang/String;

    return-void
.end method
