.class public Lcom/inuker/bluetooth/library/receiver/BluetoothBondReceiver;
.super Lcom/inuker/bluetooth/library/receiver/AbsBluetoothReceiver;
.source "BluetoothBondReceiver.java"


# static fields
.field private static final ACTIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 19
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inuker/bluetooth/library/receiver/BluetoothBondReceiver;->ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/inuker/bluetooth/library/receiver/IReceiverDispatcher;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/inuker/bluetooth/library/receiver/AbsBluetoothReceiver;-><init>(Lcom/inuker/bluetooth/library/receiver/IReceiverDispatcher;)V

    return-void
.end method

.method public static newInstance(Lcom/inuker/bluetooth/library/receiver/IReceiverDispatcher;)Lcom/inuker/bluetooth/library/receiver/BluetoothBondReceiver;
    .locals 1

    .line 28
    new-instance v0, Lcom/inuker/bluetooth/library/receiver/BluetoothBondReceiver;

    invoke-direct {v0, p0}, Lcom/inuker/bluetooth/library/receiver/BluetoothBondReceiver;-><init>(Lcom/inuker/bluetooth/library/receiver/IReceiverDispatcher;)V

    return-object v0
.end method

.method private onBondStateChanged(Ljava/lang/String;I)V
    .locals 5

    .line 47
    const-class v0, Lcom/inuker/bluetooth/library/receiver/listener/BluetoothBondStateChangeListener;

    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/receiver/BluetoothBondReceiver;->getListeners(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inuker/bluetooth/library/receiver/listener/BluetoothReceiverListener;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 49
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

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

    .line 33
    sget-object v0, Lcom/inuker/bluetooth/library/receiver/BluetoothBondReceiver;->ACTIONS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method onReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 38
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    const/4 v1, -0x1

    .line 39
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/inuker/bluetooth/library/receiver/BluetoothBondReceiver;->onBondStateChanged(Ljava/lang/String;I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
