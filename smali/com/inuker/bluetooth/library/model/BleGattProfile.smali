.class public Lcom/inuker/bluetooth/library/model/BleGattProfile;
.super Ljava/lang/Object;
.source "BleGattProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/inuker/bluetooth/library/model/BleGattProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/inuker/bluetooth/library/model/BleGattService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Lcom/inuker/bluetooth/library/model/BleGattProfile$1;

    invoke-direct {v0}, Lcom/inuker/bluetooth/library/model/BleGattProfile$1;-><init>()V

    sput-object v0, Lcom/inuker/bluetooth/library/model/BleGattProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/model/BleGattProfile;->getServices()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/inuker/bluetooth/library/model/BleGattService;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 33
    new-instance v3, Lcom/inuker/bluetooth/library/model/BleGattService;

    invoke-direct {v3, v2, v1}, Lcom/inuker/bluetooth/library/model/BleGattService;-><init>(Ljava/util/UUID;Ljava/util/Map;)V

    .line 34
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/model/BleGattProfile;->addServices(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public addServices(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/inuker/bluetooth/library/model/BleGattService;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 48
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/model/BleGattProfile;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public containsCharacter(Ljava/util/UUID;Ljava/util/UUID;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/model/BleGattProfile;->getService(Ljava/util/UUID;)Lcom/inuker/bluetooth/library/model/BleGattService;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 80
    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/model/BleGattService;->getCharacters()Ljava/util/List;

    move-result-object p1

    .line 81
    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 82
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inuker/bluetooth/library/model/BleGattCharacter;

    .line 83
    invoke-virtual {v1}, Lcom/inuker/bluetooth/library/model/BleGattCharacter;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getService(Ljava/util/UUID;)Lcom/inuker/bluetooth/library/model/BleGattService;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/model/BleGattProfile;->getServices()Ljava/util/List;

    move-result-object v1

    .line 64
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inuker/bluetooth/library/model/BleGattService;

    .line 65
    invoke-virtual {v2}, Lcom/inuker/bluetooth/library/model/BleGattService;->getUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method public getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/inuker/bluetooth/library/model/BleGattService;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/inuker/bluetooth/library/model/BleGattProfile;->services:Ljava/util/List;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inuker/bluetooth/library/model/BleGattProfile;->services:Ljava/util/List;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/inuker/bluetooth/library/model/BleGattProfile;->services:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    iget-object v1, p0, Lcom/inuker/bluetooth/library/model/BleGattProfile;->services:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inuker/bluetooth/library/model/BleGattService;

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 95
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/model/BleGattProfile;->getServices()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
