.class public Lcom/inuker/bluetooth/library/model/BleGattDescriptor;
.super Ljava/lang/Object;
.source "BleGattDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/inuker/bluetooth/library/model/BleGattDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPermissions:I

.field private mUuid:Landroid/os/ParcelUuid;

.field private mValue:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/inuker/bluetooth/library/model/BleGattDescriptor$1;

    invoke-direct {v0}, Lcom/inuker/bluetooth/library/model/BleGattDescriptor$1;-><init>()V

    sput-object v0, Lcom/inuker/bluetooth/library/model/BleGattDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/os/ParcelUuid;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/inuker/bluetooth/library/model/BleGattDescriptor;->mUuid:Landroid/os/ParcelUuid;

    .line 32
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getPermissions()I

    move-result v0

    iput v0, p0, Lcom/inuker/bluetooth/library/model/BleGattDescriptor;->mPermissions:I

    .line 33
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object p1

    iput-object p1, p0, Lcom/inuker/bluetooth/library/model/BleGattDescriptor;->mValue:[B

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-class v0, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    iput-object v0, p0, Lcom/inuker/bluetooth/library/model/BleGattDescriptor;->mUuid:Landroid/os/ParcelUuid;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inuker/bluetooth/library/model/BleGattDescriptor;->mPermissions:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/inuker/bluetooth/library/model/BleGattDescriptor;->mValue:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getmPermissions()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/inuker/bluetooth/library/model/BleGattDescriptor;->mPermissions:I

    return v0
.end method

.method public getmUuid()Landroid/os/ParcelUuid;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/inuker/bluetooth/library/model/BleGattDescriptor;->mUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public getmValue()[B
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/inuker/bluetooth/library/model/BleGattDescriptor;->mValue:[B

    return-object v0
.end method

.method public setmPermissions(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/inuker/bluetooth/library/model/BleGattDescriptor;->mPermissions:I

    return-void
.end method

.method public setmUuid(Landroid/os/ParcelUuid;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/inuker/bluetooth/library/model/BleGattDescriptor;->mUuid:Landroid/os/ParcelUuid;

    return-void
.end method

.method public setmValue([B)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/inuker/bluetooth/library/model/BleGattDescriptor;->mValue:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BleGattDescriptor{mUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/inuker/bluetooth/library/model/BleGattDescriptor;->mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPermissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/inuker/bluetooth/library/model/BleGattDescriptor;->mPermissions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/inuker/bluetooth/library/model/BleGattDescriptor;->mValue:[B

    .line 89
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/inuker/bluetooth/library/model/BleGattDescriptor;->mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 56
    iget p2, p0, Lcom/inuker/bluetooth/library/model/BleGattDescriptor;->mPermissions:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object p2, p0, Lcom/inuker/bluetooth/library/model/BleGattDescriptor;->mValue:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
