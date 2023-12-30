.class Lcom/inuker/bluetooth/library/BluetoothClientImpl$16;
.super Lcom/inuker/bluetooth/library/receiver/listener/BleCharacterChangeListener;
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

    .line 613
    iput-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$16;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    invoke-direct {p0}, Lcom/inuker/bluetooth/library/receiver/listener/BleCharacterChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacterChanged(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[B)V
    .locals 2

    .line 616
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$16;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->access$200(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Z)V

    .line 617
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$16;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->access$900(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[B)V

    return-void
.end method
