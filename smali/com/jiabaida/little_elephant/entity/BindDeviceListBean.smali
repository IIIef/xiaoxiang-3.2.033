.class public Lcom/jiabaida/little_elephant/entity/BindDeviceListBean;
.super Ljava/lang/Object;
.source "BindDeviceListBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiabaida/little_elephant/entity/BindDeviceListBean$DataBean;
    }
.end annotation


# instance fields
.field private code:I

.field private command:I

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BindDeviceListBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BindDeviceListBean;->code:I

    return v0
.end method

.method public getCommand()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BindDeviceListBean;->command:I

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BindDeviceListBean$DataBean;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BindDeviceListBean;->data:Ljava/util/List;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BindDeviceListBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BindDeviceListBean;->status:I

    return v0
.end method

.method public setCode(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BindDeviceListBean;->code:I

    return-void
.end method

.method public setCommand(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BindDeviceListBean;->command:I

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BindDeviceListBean$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BindDeviceListBean;->data:Ljava/util/List;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BindDeviceListBean;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BindDeviceListBean;->status:I

    return-void
.end method
