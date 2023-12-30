.class public Lcom/inuker/bluetooth/library/model/BleGattCharacter;
.super Ljava/lang/Object;
.source "BleGattCharacter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/inuker/bluetooth/library/model/BleGattCharacter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private descriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/inuker/bluetooth/library/model/BleGattDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private permissions:I

.field private property:I

.field private uuid:Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/inuker/bluetooth/library/model/BleGattCharacter$1;

    invoke-direct {v0}, Lcom/inuker/bluetooth/library/model/BleGattCharacter$1;-><init>()V

    sput-object v0, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/os/ParcelUuid;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->uuid:Landroid/os/ParcelUuid;

    .line 36
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    iput v0, p0, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->property:I

    .line 37
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getPermissions()I

    move-result v0

    iput v0, p0, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->permissions:I

    .line 39
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 40
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->getDescriptors()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/inuker/bluetooth/library/model/BleGattDescriptor;

    invoke-direct {v2, v0}, Lcom/inuker/bluetooth/library/model/BleGattDescriptor;-><init>(Landroid/bluetooth/BluetoothGattDescriptor;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-class v0, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    iput-object v0, p0, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->uuid:Landroid/os/ParcelUuid;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->property:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->permissions:I

    .line 31
    sget-object v0, Lcom/inuker/bluetooth/library/model/BleGattDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->descriptors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDescriptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/inuker/bluetooth/library/model/BleGattDescriptor;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->descriptors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->descriptors:Ljava/util/List;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->descriptors:Ljava/util/List;

    return-object v0
.end method

.method public getPermissions()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->permissions:I

    return v0
.end method

.method public getProperty()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->property:I

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public setDescriptors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/inuker/bluetooth/library/model/BleGattDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->descriptors:Ljava/util/List;

    return-void
.end method

.method public setPermissions(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->permissions:I

    return-void
.end method

.method public setProperty(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->property:I

    return-void
.end method

.method public setUuid(Landroid/os/ParcelUuid;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->uuid:Landroid/os/ParcelUuid;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BleGattCharacter{uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", property="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->property:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", permissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->permissions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", descriptors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->descriptors:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 64
    iget p2, p0, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->property:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget p2, p0, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->permissions:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object p2, p0, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->descriptors:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
