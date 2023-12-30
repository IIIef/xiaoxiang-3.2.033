.class public Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;
.super Ljava/lang/Object;
.source "EventBusMsg.java"


# instance fields
.field private msg:Ljava/lang/String;

.field private msgCode:I

.field private msgbyte:[B


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->msgCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[B)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->msgCode:I

    .line 29
    iput-object p2, p0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->msg:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->msgbyte:[B

    return-void
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgCode()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->msgCode:I

    return v0
.end method

.method public getMsgbyte()[B
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->msgbyte:[B

    return-object v0
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->msg:Ljava/lang/String;

    return-void
.end method

.method public setMsgCode(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->msgCode:I

    return-void
.end method

.method public setMsgbyte([B)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->msgbyte:[B

    return-void
.end method
