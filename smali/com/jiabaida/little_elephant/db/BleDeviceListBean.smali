.class public Lcom/jiabaida/little_elephant/db/BleDeviceListBean;
.super Ljava/lang/Object;
.source "BleDeviceListBean.java"


# instance fields
.field private bleMacAddress:Ljava/lang/String;

.field private bleName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;->bleMacAddress:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;->bleName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;->bleMacAddress:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;->bleName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBleMacAddress()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;->bleMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBleName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;->bleName:Ljava/lang/String;

    return-object v0
.end method

.method public setBleMacAddress(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;->bleMacAddress:Ljava/lang/String;

    return-void
.end method

.method public setBleName(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;->bleName:Ljava/lang/String;

    return-void
.end method
