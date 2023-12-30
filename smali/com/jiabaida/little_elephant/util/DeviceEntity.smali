.class public Lcom/jiabaida/little_elephant/util/DeviceEntity;
.super Ljava/lang/Object;
.source "DeviceEntity.java"


# static fields
.field public static final BMS_LOCKED:I = 0x1

.field public static final BMS_UNLOCK:I = 0x0

.field public static final VERSION_20:I = 0x14


# instance fields
.field private final TAG:Ljava/lang/String;

.field private address:Ljava/lang/String;

.field public device:Landroid/bluetooth/BluetoothDevice;

.field private lockState:I

.field private name:Ljava/lang/String;

.field private ntcNum:I

.field public rssi:I

.field private version:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-class v0, Lcom/jiabaida/little_elephant/util/DeviceEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/DeviceEntity;->TAG:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/DeviceEntity;->name:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/jiabaida/little_elephant/util/DeviceEntity;->address:Ljava/lang/String;

    .line 21
    iput p3, p0, Lcom/jiabaida/little_elephant/util/DeviceEntity;->rssi:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-class v0, Lcom/jiabaida/little_elephant/util/DeviceEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/DeviceEntity;->TAG:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/DeviceEntity;->name:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/jiabaida/little_elephant/util/DeviceEntity;->address:Ljava/lang/String;

    .line 27
    iput p3, p0, Lcom/jiabaida/little_elephant/util/DeviceEntity;->rssi:I

    .line 28
    iput p4, p0, Lcom/jiabaida/little_elephant/util/DeviceEntity;->version:I

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/DeviceEntity;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/DeviceEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNtcNum()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/jiabaida/little_elephant/util/DeviceEntity;->ntcNum:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/jiabaida/little_elephant/util/DeviceEntity;->rssi:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/jiabaida/little_elephant/util/DeviceEntity;->version:I

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .line 68
    iget v0, p0, Lcom/jiabaida/little_elephant/util/DeviceEntity;->lockState:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public lock()V
    .locals 1

    const/4 v0, 0x1

    .line 52
    iput v0, p0, Lcom/jiabaida/little_elephant/util/DeviceEntity;->lockState:I

    return-void
.end method

.method public setNtcNum(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/jiabaida/little_elephant/util/DeviceEntity;->ntcNum:I

    return-void
.end method

.method public unLock()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/jiabaida/little_elephant/util/DeviceEntity;->lockState:I

    return-void
.end method
