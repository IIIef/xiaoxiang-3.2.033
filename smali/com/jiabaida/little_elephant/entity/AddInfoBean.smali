.class public Lcom/jiabaida/little_elephant/entity/AddInfoBean;
.super Ljava/lang/Object;
.source "AddInfoBean.java"


# instance fields
.field private code:I

.field private command:I

.field private message:Ljava/lang/String;

.field private status:I

.field private txnNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/AddInfoBean;->code:I

    return v0
.end method

.method public getCommand()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/AddInfoBean;->command:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/AddInfoBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/AddInfoBean;->status:I

    return v0
.end method

.method public getTxnNo()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/AddInfoBean;->txnNo:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/AddInfoBean;->code:I

    return-void
.end method

.method public setCommand(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/AddInfoBean;->command:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/AddInfoBean;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/AddInfoBean;->status:I

    return-void
.end method

.method public setTxnNo(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/AddInfoBean;->txnNo:Ljava/lang/String;

    return-void
.end method
