.class Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean$1;
.super Ljava/lang/Object;
.source "ScanBleDevicesBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;
    .locals 1

    .line 83
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;

    invoke-direct {v0, p1}, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;
    .locals 0

    .line 88
    new-array p1, p1, [Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean$1;->newArray(I)[Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;

    move-result-object p1

    return-object p1
.end method
