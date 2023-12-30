.class Lcom/inuker/bluetooth/library/BluetoothClientImpl$9;
.super Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;
.source "BluetoothClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inuker/bluetooth/library/BluetoothClientImpl;->unnotify(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleUnnotifyResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

.field final synthetic val$character:Ljava/util/UUID;

.field final synthetic val$mac:Ljava/lang/String;

.field final synthetic val$response:Lcom/inuker/bluetooth/library/connect/response/BleUnnotifyResponse;

.field final synthetic val$service:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleUnnotifyResponse;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$9;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    iput-object p2, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$9;->val$mac:Ljava/lang/String;

    iput-object p3, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$9;->val$service:Ljava/util/UUID;

    iput-object p4, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$9;->val$character:Ljava/util/UUID;

    iput-object p5, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$9;->val$response:Lcom/inuker/bluetooth/library/connect/response/BleUnnotifyResponse;

    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;-><init>()V

    return-void
.end method


# virtual methods
.method protected onAsyncResponse(ILandroid/os/Bundle;)V
    .locals 3

    .line 384
    iget-object p2, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$9;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->access$200(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Z)V

    .line 386
    iget-object p2, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$9;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$9;->val$mac:Ljava/lang/String;

    iget-object v1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$9;->val$service:Ljava/util/UUID;

    iget-object v2, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$9;->val$character:Ljava/util/UUID;

    invoke-static {p2, v0, v1, v2}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->access$400(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;)V

    .line 388
    iget-object p2, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$9;->val$response:Lcom/inuker/bluetooth/library/connect/response/BleUnnotifyResponse;

    if-eqz p2, :cond_0

    .line 389
    invoke-interface {p2, p1}, Lcom/inuker/bluetooth/library/connect/response/BleUnnotifyResponse;->onResponse(I)V

    :cond_0
    return-void
.end method
