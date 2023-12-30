.class public Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;
.super Ljava/lang/Object;
.source "BleConnectOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private connectRetry:I

.field private connectTimeout:I

.field private serviceDiscoverRetry:I

.field private serviceDiscoverTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$1;

    invoke-direct {v0}, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$1;-><init>()V

    sput-object v0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->connectRetry:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->serviceDiscoverRetry:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->connectTimeout:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->serviceDiscoverTimeout:I

    return-void
.end method

.method public constructor <init>(Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;->access$000(Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->connectRetry:I

    .line 61
    invoke-static {p1}, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;->access$100(Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->serviceDiscoverRetry:I

    .line 62
    invoke-static {p1}, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;->access$200(Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->connectTimeout:I

    .line 63
    invoke-static {p1}, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;->access$300(Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;)I

    move-result p1

    iput p1, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->serviceDiscoverTimeout:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConnectRetry()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->connectRetry:I

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->connectTimeout:I

    return v0
.end method

.method public getServiceDiscoverRetry()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->serviceDiscoverRetry:I

    return v0
.end method

.method public getServiceDiscoverTimeout()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->serviceDiscoverTimeout:I

    return v0
.end method

.method public setConnectRetry(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->connectRetry:I

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->connectTimeout:I

    return-void
.end method

.method public setServiceDiscoverRetry(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->serviceDiscoverRetry:I

    return-void
.end method

.method public setServiceDiscoverTimeout(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->serviceDiscoverTimeout:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BleConnectOptions{connectRetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->connectRetry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceDiscoverRetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->serviceDiscoverRetry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", connectTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->connectTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceDiscoverTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->serviceDiscoverTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 93
    iget p2, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->connectRetry:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget p2, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->serviceDiscoverRetry:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget p2, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->connectTimeout:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget p2, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->serviceDiscoverTimeout:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
