.class Lcom/inuker/bluetooth/library/BluetoothClientImpl$15;
.super Lcom/inuker/bluetooth/library/receiver/listener/BleConnectStatusChangeListener;
.source "BluetoothClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inuker/bluetooth/library/BluetoothClientImpl;->registerBluetoothReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;


# direct methods
.method constructor <init>(Lcom/inuker/bluetooth/library/BluetoothClientImpl;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$15;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    invoke-direct {p0}, Lcom/inuker/bluetooth/library/receiver/listener/BleConnectStatusChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onConnectStatusChanged(Ljava/lang/String;I)V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$15;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->access$200(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Z)V

    const/16 v0, 0x20

    if-ne p2, v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$15;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    invoke-static {v0, p1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->access$700(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Ljava/lang/String;)V

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$15;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    invoke-static {v0, p1, p2}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->access$800(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Ljava/lang/String;I)V

    return-void
.end method
