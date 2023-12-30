.class Lcom/inuker/bluetooth/library/BluetoothClientImpl$10;
.super Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;
.source "BluetoothClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inuker/bluetooth/library/BluetoothClientImpl;->indicate(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

.field final synthetic val$character:Ljava/util/UUID;

.field final synthetic val$mac:Ljava/lang/String;

.field final synthetic val$response:Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;

.field final synthetic val$service:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$10;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    iput-object p2, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$10;->val$response:Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;

    iput-object p3, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$10;->val$mac:Ljava/lang/String;

    iput-object p4, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$10;->val$service:Ljava/util/UUID;

    iput-object p5, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$10;->val$character:Ljava/util/UUID;

    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;-><init>()V

    return-void
.end method


# virtual methods
.method protected onAsyncResponse(ILandroid/os/Bundle;)V
    .locals 4

    .line 404
    iget-object p2, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$10;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->access$200(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Z)V

    .line 405
    iget-object p2, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$10;->val$response:Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    .line 407
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$10;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    iget-object v1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$10;->val$mac:Ljava/lang/String;

    iget-object v2, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$10;->val$service:Ljava/util/UUID;

    iget-object v3, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$10;->val$character:Ljava/util/UUID;

    invoke-static {v0, v1, v2, v3, p2}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->access$300(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;)V

    .line 409
    :cond_0
    iget-object p2, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$10;->val$response:Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;

    invoke-interface {p2, p1}, Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;->onResponse(I)V

    :cond_1
    return-void
.end method
