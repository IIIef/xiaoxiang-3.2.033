.class Lcom/inuker/bluetooth/library/BluetoothClientImpl$2;
.super Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;
.source "BluetoothClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inuker/bluetooth/library/BluetoothClientImpl;->connect(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;Lcom/inuker/bluetooth/library/connect/response/BleConnectResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

.field final synthetic val$response:Lcom/inuker/bluetooth/library/connect/response/BleConnectResponse;


# direct methods
.method constructor <init>(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Lcom/inuker/bluetooth/library/connect/response/BleConnectResponse;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$2;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    iput-object p2, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$2;->val$response:Lcom/inuker/bluetooth/library/connect/response/BleConnectResponse;

    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;-><init>()V

    return-void
.end method


# virtual methods
.method protected onAsyncResponse(ILandroid/os/Bundle;)V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$2;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->access$200(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Z)V

    .line 190
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$2;->val$response:Lcom/inuker/bluetooth/library/connect/response/BleConnectResponse;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "extra.gatt.profile"

    .line 192
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/inuker/bluetooth/library/model/BleGattProfile;

    .line 193
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$2;->val$response:Lcom/inuker/bluetooth/library/connect/response/BleConnectResponse;

    invoke-interface {v0, p1, p2}, Lcom/inuker/bluetooth/library/connect/response/BleConnectResponse;->onResponse(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
