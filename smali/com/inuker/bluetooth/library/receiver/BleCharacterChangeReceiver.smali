.class public Lcom/inuker/bluetooth/library/receiver/BleCharacterChangeReceiver;
.super Lcom/inuker/bluetooth/library/receiver/AbsBluetoothReceiver;
.source "BleCharacterChangeReceiver.java"


# static fields
.field private static final ACTIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "action.character_changed"

    .line 20
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inuker/bluetooth/library/receiver/BleCharacterChangeReceiver;->ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/inuker/bluetooth/library/receiver/IReceiverDispatcher;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/inuker/bluetooth/library/receiver/AbsBluetoothReceiver;-><init>(Lcom/inuker/bluetooth/library/receiver/IReceiverDispatcher;)V

    return-void
.end method

.method public static newInstance(Lcom/inuker/bluetooth/library/receiver/IReceiverDispatcher;)Lcom/inuker/bluetooth/library/receiver/BleCharacterChangeReceiver;
    .locals 1

    .line 29
    new-instance v0, Lcom/inuker/bluetooth/library/receiver/BleCharacterChangeReceiver;

    invoke-direct {v0, p0}, Lcom/inuker/bluetooth/library/receiver/BleCharacterChangeReceiver;-><init>(Lcom/inuker/bluetooth/library/receiver/IReceiverDispatcher;)V

    return-object v0
.end method

.method private onCharacterChanged(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[B)V
    .locals 4

    .line 48
    const-class v0, Lcom/inuker/bluetooth/library/receiver/listener/BleCharacterChangeListener;

    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/receiver/BleCharacterChangeReceiver;->getListeners(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inuker/bluetooth/library/receiver/listener/BluetoothReceiverListener;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    .line 50
    invoke-virtual {v1, v2}, Lcom/inuker/bluetooth/library/receiver/listener/BluetoothReceiverListener;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    sget-object v0, Lcom/inuker/bluetooth/library/receiver/BleCharacterChangeReceiver;->ACTIONS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method onReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    const-string p1, "extra.mac"

    .line 39
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "extra.service.uuid"

    .line 40
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    const-string v1, "extra.character.uuid"

    .line 41
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    const-string v2, "extra.byte.value"

    .line 42
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p2

    .line 43
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/inuker/bluetooth/library/receiver/BleCharacterChangeReceiver;->onCharacterChanged(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[B)V

    const/4 p1, 0x1

    return p1
.end method
