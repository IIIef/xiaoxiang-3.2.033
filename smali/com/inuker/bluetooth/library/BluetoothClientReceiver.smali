.class public Lcom/inuker/bluetooth/library/BluetoothClientReceiver;
.super Ljava/lang/Object;
.source "BluetoothClientReceiver.java"


# instance fields
.field private mBluetoothBondListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/inuker/bluetooth/library/receiver/listener/BluetoothBondListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/inuker/bluetooth/library/connect/listener/BluetoothStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectStatusListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/inuker/bluetooth/library/connect/listener/BleConnectStatusListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNotifyResponses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
