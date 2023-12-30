.class Lcom/inuker/bluetooth/library/BluetoothClientImpl$4;
.super Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;
.source "BluetoothClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inuker/bluetooth/library/BluetoothClientImpl;->write(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleWriteResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

.field final synthetic val$response:Lcom/inuker/bluetooth/library/connect/response/BleWriteResponse;


# direct methods
.method constructor <init>(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Lcom/inuker/bluetooth/library/connect/response/BleWriteResponse;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$4;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    iput-object p2, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$4;->val$response:Lcom/inuker/bluetooth/library/connect/response/BleWriteResponse;

    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;-><init>()V

    return-void
.end method


# virtual methods
.method protected onAsyncResponse(ILandroid/os/Bundle;)V
    .locals 1

    .line 256
    iget-object p2, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$4;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->access$200(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Z)V

    .line 257
    iget-object p2, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$4;->val$response:Lcom/inuker/bluetooth/library/connect/response/BleWriteResponse;

    if-eqz p2, :cond_0

    .line 258
    invoke-interface {p2, p1}, Lcom/inuker/bluetooth/library/connect/response/BleWriteResponse;->onResponse(I)V

    :cond_0
    return-void
.end method
