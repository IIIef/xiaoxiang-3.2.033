.class public Lcom/inuker/bluetooth/library/receiver/BluetoothStateReceiver;
.super Lcom/inuker/bluetooth/library/receiver/AbsBluetoothReceiver;
.source "BluetoothStateReceiver.java"


# static fields
.field private static final ACTIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 20
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inuker/bluetooth/library/receiver/BluetoothStateReceiver;->ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/inuker/bluetooth/library/receiver/IReceiverDispatcher;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/inuker/bluetooth/library/receiver/AbsBluetoothReceiver;-><init>(Lcom/inuker/bluetooth/library/receiver/IReceiverDispatcher;)V

    return-void
.end method

.method private getStateString(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "unknown"

    return-object p1

    :pswitch_0
    const-string p1, "state_turning_off"

    return-object p1

    :pswitch_1
    const-string p1, "state_on"

    return-object p1

    :pswitch_2
    const-string p1, "state_turning_on"

    return-object p1

    :pswitch_3
    const-string p1, "state_off"

    return-object p1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static newInstance(Lcom/inuker/bluetooth/library/receiver/IReceiverDispatcher;)Lcom/inuker/bluetooth/library/receiver/BluetoothStateReceiver;
    .locals 1

    .line 34
    new-instance v0, Lcom/inuker/bluetooth/library/receiver/BluetoothStateReceiver;

    invoke-direct {v0, p0}, Lcom/inuker/bluetooth/library/receiver/BluetoothStateReceiver;-><init>(Lcom/inuker/bluetooth/library/receiver/IReceiverDispatcher;)V

    return-object v0
.end method

.method private onBluetoothStateChanged(II)V
    .locals 5

    .line 50
    const-class v0, Lcom/inuker/bluetooth/library/receiver/listener/BluetoothStateChangeListener;

    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/receiver/BluetoothStateReceiver;->getListeners(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 51
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

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

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

    .line 30
    sget-object v0, Lcom/inuker/bluetooth/library/receiver/BluetoothStateReceiver;->ACTIONS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    .line 40
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 43
    invoke-direct {p0, p2}, Lcom/inuker/bluetooth/library/receiver/BluetoothStateReceiver;->getStateString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-direct {p0, p1}, Lcom/inuker/bluetooth/library/receiver/BluetoothStateReceiver;->getStateString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "state changed: %s -> %s"

    .line 42
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p2, p1}, Lcom/inuker/bluetooth/library/receiver/BluetoothStateReceiver;->onBluetoothStateChanged(II)V

    return v2
.end method
