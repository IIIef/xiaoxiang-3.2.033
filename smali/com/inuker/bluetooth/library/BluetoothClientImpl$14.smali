.class Lcom/inuker/bluetooth/library/BluetoothClientImpl$14;
.super Lcom/inuker/bluetooth/library/receiver/listener/BluetoothBondStateChangeListener;
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

    .line 596
    iput-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$14;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    invoke-direct {p0}, Lcom/inuker/bluetooth/library/receiver/listener/BluetoothBondStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBondStateChanged(Ljava/lang/String;I)V
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$14;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->access$200(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Z)V

    .line 600
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$14;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    invoke-static {v0, p1, p2}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->access$600(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Ljava/lang/String;I)V

    return-void
.end method
