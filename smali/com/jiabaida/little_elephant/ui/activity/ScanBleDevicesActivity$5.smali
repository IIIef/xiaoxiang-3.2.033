.class Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;
.super Lcom/clj/fastble/callback/BleGattCallback;
.source "ScanBleDevicesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;
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

    .line 721
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onConnectSuccess$0$com-jiabaida-little_elephant-ui-activity-ScanBleDevicesActivity$5()V
    .locals 4

    const-wide/16 v0, 0x1f4

    .line 779
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 782
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 784
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 787
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->sendAppKey()V

    .line 788
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 789
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 792
    :cond_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/BleUtils;->sendBaseAppKey(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onConnectFail(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/exception/BleException;)V
    .locals 3

    .line 729
    invoke-static {}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$1700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ble connect failed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/clj/fastble/exception/BleException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$1602(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Z)Z

    .line 731
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->hideLoading()V

    .line 732
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    const v0, 0x7f0d0055

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 733
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->isBleConnected()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 734
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p2

    invoke-virtual {p2}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 735
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->setBleDevice(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/data/BleDevice;

    :cond_0
    return-void
.end method

.method public onConnectSuccess(Lcom/clj/fastble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 2

    .line 745
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->setBleDevice(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/data/BleDevice;

    .line 746
    sget-object p2, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->TestLine:Ljava/lang/StringBuffer;

    const-string p3, "\u5f53\u524d\u961f\u5217\u957f\u5ea6--"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object p3, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->mDataQueue:Ljava/util/Queue;

    invoke-interface {p3}, Ljava/util/Queue;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p2, 0x0

    .line 747
    sput-boolean p2, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->isCanAutoConnect:Z

    const/4 p3, 0x1

    .line 748
    sput-boolean p3, Lcom/jiabaida/little_elephant/util/BleUtils;->isCheckOta:Z

    .line 749
    new-instance p3, Lcom/google/gson/Gson;

    invoke-direct {p3}, Lcom/google/gson/Gson;-><init>()V

    .line 750
    invoke-virtual {p3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 751
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    const-string v1, "Bluetoothdevice"

    invoke-virtual {v0, v1, p3}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p3

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothName"

    invoke-virtual {p3, v1, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p3

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMac"

    invoke-virtual {p3, v1, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p3}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 755
    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p3}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 756
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 757
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p3}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->addDevice(Lcom/clj/fastble/data/BleDevice;)V

    .line 759
    sget-object p3, Lcom/jiabaida/little_elephant/util/BleUtils;->bleList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 760
    :cond_0
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 761
    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p3}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->addDevice(Lcom/clj/fastble/data/BleDevice;)V

    .line 762
    sget-object p3, Lcom/jiabaida/little_elephant/util/BleUtils;->bleList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 763
    :cond_1
    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p3}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p3}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$1500(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)[Ljava/util/UUID;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p3}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$1500(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)[Ljava/util/UUID;

    move-result-object p3

    array-length p3, p3

    if-lez p3, :cond_3

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p3

    aget-object p3, p3, p2

    invoke-virtual {p3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$1500(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)[Ljava/util/UUID;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 764
    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p3}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->addDevice(Lcom/clj/fastble/data/BleDevice;)V

    .line 765
    sget-object p3, Lcom/jiabaida/little_elephant/util/BleUtils;->bleList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 768
    :cond_2
    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p3}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->addDevice(Lcom/clj/fastble/data/BleDevice;)V

    .line 769
    sget-object p3, Lcom/jiabaida/little_elephant/util/BleUtils;->bleList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    :cond_3
    :goto_0
    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p3}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->notifyDataSetChanged()V

    .line 774
    :cond_4
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->openNotify(Lcom/clj/fastble/data/BleDevice;)V

    const-string p1, "xzx"

    const-string p3, "\u5f00\u542f\u84dd\u7259\u6d88\u606f\u76d1\u542c openNotify"

    .line 775
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-virtual {p3}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->isLogin()Z

    move-result p3

    sput-boolean p3, Lcom/jiabaida/little_elephant/util/BleUtils;->displayVoltage:Z

    .line 777
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->sendHeartPkg()V

    .line 778
    new-instance p3, Ljava/lang/Thread;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5$$ExternalSyntheticLambda0;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;)V

    invoke-direct {p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 797
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 799
    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p3, p2}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$1602(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Z)Z

    const-string p2, "ble connected!"

    .line 800
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDisConnected(ZLcom/clj/fastble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    .line 810
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$1602(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Z)Z

    .line 811
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p2

    const-string p4, "sp_key_ble_auth"

    invoke-virtual {p2, p4, p3}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Z)V

    .line 812
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->hideLoading()V

    .line 813
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->setBleDevice(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/data/BleDevice;

    .line 814
    invoke-static {}, Lcom/jiabaida/little_elephant/util/DialogUtils;->getInstances()Lcom/jiabaida/little_elephant/util/DialogUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/util/DialogUtils;->dismiss()V

    .line 815
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 816
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->notifyDataSetChanged()V

    :cond_0
    const-string p2, "{}"

    if-eqz p1, :cond_1

    .line 821
    invoke-static {}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$1700()Ljava/lang/String;

    move-result-object p1

    const-string p4, "ble disconnect"

    invoke-static {p1, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    new-instance p1, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const/16 p4, 0x2328

    invoke-direct {p1, p4, p2, p3}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(ILjava/lang/String;[B)V

    .line 823
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 827
    :cond_1
    invoke-static {}, Lcom/jiabaida/little_elephant/app/CustomActivityManager;->currentActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    .line 828
    instance-of p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    if-eqz p1, :cond_2

    .line 830
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$1800(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)V

    .line 832
    :cond_2
    new-instance p1, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const/16 p4, 0x2711

    invoke-direct {p1, p4, p2, p3}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(ILjava/lang/String;[B)V

    .line 833
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 834
    invoke-static {}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$1700()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ble disconnect-2 send msg"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onStartConnect()V
    .locals 0

    return-void
.end method
