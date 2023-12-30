.class Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;
.super Lcom/clj/fastble/callback/BleScanCallback;
.source "ScanBleDevicesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->startScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Lcom/clj/fastble/data/BleDevice;)V
    .locals 0

    .line 612
    invoke-super {p0, p1}, Lcom/clj/fastble/callback/BleScanCallback;->onLeScan(Lcom/clj/fastble/data/BleDevice;)V

    return-void
.end method

.method public onScanFinished(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/clj/fastble/data/BleDevice;",
            ">;)V"
        }
    .end annotation

    .line 661
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 662
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    const v1, 0x7f0d0054

    invoke-virtual {p1, v0, v1}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;I)V

    .line 664
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$902(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "xzx"

    const-string v0, "\u67e5\u8be2\u84dd\u7259\u5b8c\u6210"

    .line 665
    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$1202(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Z)Z

    .line 667
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$1600(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 668
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->hideLoading()V

    .line 669
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 670
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->isBleConnected()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 672
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    move-result-object p1

    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->addDevice(Lcom/clj/fastble/data/BleDevice;)V

    .line 673
    sget-object p1, Lcom/jiabaida/little_elephant/util/BleUtils;->bleList:Ljava/util/Map;

    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 676
    :cond_2
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p1

    const-string v0, "BluetoothMac"

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-boolean p1, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->isCanAutoConnect:Z

    if-eqz p1, :cond_3

    .line 678
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 679
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->bleList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 680
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;)V

    .line 684
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method public onScanStarted(Z)V
    .locals 3

    const-string p1, "xzx"

    const-string v0, "\u5f00\u59cb\u67e5\u8be2\u84dd\u7259"

    .line 587
    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$1202(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Z)Z

    .line 589
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 590
    sget-object p1, Lcom/jiabaida/little_elephant/util/BleUtils;->bleList:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 591
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->clear()V

    .line 592
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->notifyLocalDevice()V

    .line 593
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->notifyDataSetChanged()V

    .line 594
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->isBleConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 596
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/clj/fastble/BleManager;->getAllConnectedDevice()Ljava/util/List;

    move-result-object p1

    .line 597
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clj/fastble/data/BleDevice;

    .line 598
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->addDevice(Lcom/clj/fastble/data/BleDevice;)V

    .line 599
    sget-object v1, Lcom/jiabaida/little_elephant/util/BleUtils;->bleList:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 603
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->showLoading()V

    .line 604
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 605
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x65

    const-wide/16 v1, 0x9c4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public onScanning(Lcom/clj/fastble/data/BleDevice;)V
    .locals 3

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xzx"

    invoke-static {v1, v0}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 619
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 620
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 621
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 622
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->addDevice(Lcom/clj/fastble/data/BleDevice;)V

    .line 624
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->bleList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 625
    :cond_0
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 626
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->addDevice(Lcom/clj/fastble/data/BleDevice;)V

    .line 628
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->bleList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$1500(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)[Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$1500(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)[Ljava/util/UUID;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 630
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$1500(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)[Ljava/util/UUID;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 631
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->addDevice(Lcom/clj/fastble/data/BleDevice;)V

    .line 632
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->bleList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 635
    :cond_2
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->addDevice(Lcom/clj/fastble/data/BleDevice;)V

    .line 636
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->bleList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->notifyDataSetChanged()V

    .line 641
    :cond_4
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    .line 642
    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 643
    :cond_6
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->hideLoading()V

    .line 644
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;)V

    .line 645
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$902(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 649
    :cond_7
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p1

    const-string v0, "BluetoothMac"

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    sget-boolean p1, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->isCanAutoConnect:Z

    if-eqz p1, :cond_8

    .line 651
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 652
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->bleList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 653
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {v0, v1, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;)V

    :cond_8
    return-void
.end method
