.class Lcom/inuker/bluetooth/library/BluetoothClientImpl$5;
.super Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;
.source "BluetoothClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inuker/bluetooth/library/BluetoothClientImpl;->readDescriptor(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleReadResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

.field final synthetic val$response:Lcom/inuker/bluetooth/library/connect/response/BleReadResponse;


# direct methods
.method constructor <init>(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Lcom/inuker/bluetooth/library/connect/response/BleReadResponse;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$5;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    iput-object p2, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$5;->val$response:Lcom/inuker/bluetooth/library/connect/response/BleReadResponse;

    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;-><init>()V

    return-void
.end method


# virtual methods
.method protected onAsyncResponse(ILandroid/os/Bundle;)V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$5;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->access$200(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Z)V

    .line 275
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$5;->val$response:Lcom/inuker/bluetooth/library/connect/response/BleReadResponse;

    if-eqz v0, :cond_0

    const-string v1, "extra.byte.value"

    .line 276
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/inuker/bluetooth/library/connect/response/BleReadResponse;->onResponse(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
