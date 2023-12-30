.class Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$6;
.super Ljava/lang/Object;
.source "OtaActivity.java"

# interfaces
.implements Lcom/telink/ota/ble/Device$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStateChange(Lcom/telink/ota/ble/Device;I)V
    .locals 5

    .line 436
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p1, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->isConnected:Z

    .line 437
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    iget-boolean p1, p1, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->isConnected:Z

    if-eqz p1, :cond_1

    .line 439
    :try_start_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Lcom/telink/ota/ble/Device;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telink/ota/ble/Device;->getServices()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 441
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    .line 442
    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-static {v3, v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->access$902(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 443
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothGattService;

    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->access$802(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattService;

    .line 444
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 449
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 454
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xd

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onOtaProgressUpdate(I)V
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onOtaStateChanged(Lcom/telink/ota/ble/Device;Lcom/telink/ota/fundation/StatusCode;)V
    .locals 1

    .line 459
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 460
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 461
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
