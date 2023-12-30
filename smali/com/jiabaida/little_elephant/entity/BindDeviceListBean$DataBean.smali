.class public Lcom/jiabaida/little_elephant/entity/BindDeviceListBean$DataBean;
.super Ljava/lang/Object;
.source "BindDeviceListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/entity/BindDeviceListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private deviceId:I

.field private macAddr:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceId()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BindDeviceListBean$DataBean;->deviceId:I

    return v0
.end method

.method public getMacAddr()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BindDeviceListBean$DataBean;->macAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BindDeviceListBean$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceId(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BindDeviceListBean$DataBean;->deviceId:I

    return-void
.end method

.method public setMacAddr(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BindDeviceListBean$DataBean;->macAddr:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BindDeviceListBean$DataBean;->name:Ljava/lang/String;

    return-void
.end method
