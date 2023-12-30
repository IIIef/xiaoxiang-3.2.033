.class public Lcom/jiabaida/little_elephant/eventbus/EventBusBMSMsg;
.super Ljava/lang/Object;
.source "EventBusBMSMsg.java"


# instance fields
.field private msg:Ljava/lang/String;

.field private msgCode:I

.field private msgbyte:[B


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[B)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/jiabaida/little_elephant/eventbus/EventBusBMSMsg;->msgCode:I

    .line 33
    iput-object p2, p0, Lcom/jiabaida/little_elephant/eventbus/EventBusBMSMsg;->msg:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/jiabaida/little_elephant/eventbus/EventBusBMSMsg;->msgbyte:[B

    return-void
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/jiabaida/little_elephant/eventbus/EventBusBMSMsg;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgCode()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/jiabaida/little_elephant/eventbus/EventBusBMSMsg;->msgCode:I

    return v0
.end method

.method public getMsgbyte()[B
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/jiabaida/little_elephant/eventbus/EventBusBMSMsg;->msgbyte:[B

    return-object v0
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/jiabaida/little_elephant/eventbus/EventBusBMSMsg;->msg:Ljava/lang/String;

    return-void
.end method

.method public setMsgCode(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/jiabaida/little_elephant/eventbus/EventBusBMSMsg;->msgCode:I

    return-void
.end method

.method public setMsgbyte([B)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/jiabaida/little_elephant/eventbus/EventBusBMSMsg;->msgbyte:[B

    return-void
.end method
