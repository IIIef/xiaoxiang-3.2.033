.class public Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;
.super Ljava/lang/Object;
.source "ScanBleDevicesBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private baseAppKey:Ljava/lang/String;

.field private bleDevice:Lcom/clj/fastble/data/BleDevice;

.field private checkState:Z

.field private showKeyState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean$1;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean$1;-><init>()V

    sput-object v0, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;->checkState:Z

    .line 77
    const-class v0, Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/clj/fastble/data/BleDevice;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;->bleDevice:Lcom/clj/fastble/data/BleDevice;

    return-void
.end method

.method public constructor <init>(ZLcom/clj/fastble/data/BleDevice;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;->checkState:Z

    .line 42
    iput-object p2, p0, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;->bleDevice:Lcom/clj/fastble/data/BleDevice;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBaseAppKey()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;->baseAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getBleDevice()Lcom/clj/fastble/data/BleDevice;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;->bleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object v0
.end method

.method public isCheckState()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;->checkState:Z

    return v0
.end method

.method public isShowKeyState()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;->showKeyState:Z

    return v0
.end method

.method public setBaseAppKey(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;->baseAppKey:Ljava/lang/String;

    return-void
.end method

.method public setBleDevice(Lcom/clj/fastble/data/BleDevice;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;->bleDevice:Lcom/clj/fastble/data/BleDevice;

    return-void
.end method

.method public setCheckState(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;->checkState:Z

    return-void
.end method

.method public setShowKeyState(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;->showKeyState:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;->checkState:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 69
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;->bleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
