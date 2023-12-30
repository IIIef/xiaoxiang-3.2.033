.class Lcom/inuker/bluetooth/library/BluetoothClientImpl$13;
.super Lcom/inuker/bluetooth/library/receiver/listener/BluetoothStateChangeListener;
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

    .line 589
    iput-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$13;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    invoke-direct {p0}, Lcom/inuker/bluetooth/library/receiver/listener/BluetoothStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBluetoothStateChanged(II)V
    .locals 1

    .line 592
    iget-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$13;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->access$200(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Z)V

    .line 593
    iget-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$13;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    invoke-static {p1, p2}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->access$500(Lcom/inuker/bluetooth/library/BluetoothClientImpl;I)V

    return-void
.end method
