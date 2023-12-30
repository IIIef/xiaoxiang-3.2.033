.class public Lcom/inuker/bluetooth/library/BluetoothServiceImpl;
.super Lcom/inuker/bluetooth/library/IBluetoothService$Stub;
.source "BluetoothServiceImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static sInstance:Lcom/inuker/bluetooth/library/BluetoothServiceImpl;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/IBluetoothService$Stub;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothServiceImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/inuker/bluetooth/library/BluetoothServiceImpl;
    .locals 2

    .line 55
    sget-object v0, Lcom/inuker/bluetooth/library/BluetoothServiceImpl;->sInstance:Lcom/inuker/bluetooth/library/BluetoothServiceImpl;

    if-nez v0, :cond_1

    .line 56
    const-class v0, Lcom/inuker/bluetooth/library/BluetoothServiceImpl;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/inuker/bluetooth/library/BluetoothServiceImpl;->sInstance:Lcom/inuker/bluetooth/library/BluetoothServiceImpl;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/inuker/bluetooth/library/BluetoothServiceImpl;

    invoke-direct {v1}, Lcom/inuker/bluetooth/library/BluetoothServiceImpl;-><init>()V

    sput-object v1, Lcom/inuker/bluetooth/library/BluetoothServiceImpl;->sInstance:Lcom/inuker/bluetooth/library/BluetoothServiceImpl;

    .line 60
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 62
    :cond_1
    :goto_0
    sget-object v0, Lcom/inuker/bluetooth/library/BluetoothServiceImpl;->sInstance:Lcom/inuker/bluetooth/library/BluetoothServiceImpl;

    return-object v0
.end method


# virtual methods
.method public callBluetoothApi(ILandroid/os/Bundle;Lcom/inuker/bluetooth/library/IResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/inuker/bluetooth/library/BluetoothServiceImpl$1;

    invoke-direct {v1, p0, p3}, Lcom/inuker/bluetooth/library/BluetoothServiceImpl$1;-><init>(Lcom/inuker/bluetooth/library/BluetoothServiceImpl;Lcom/inuker/bluetooth/library/IResponse;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 85
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    .line 91
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra.mac"

    .line 92
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "extra.service.uuid"

    .line 93
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/UUID;

    const-string v1, "extra.character.uuid"

    .line 94
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/UUID;

    const-string v1, "extra.descriptor.uuid"

    .line 95
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/util/UUID;

    const-string v1, "extra.byte.value"

    .line 96
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 97
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;

    .line 99
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 160
    :pswitch_1
    invoke-static {v2}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->refreshCache(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x0

    const-string v1, "extra.type"

    .line 155
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 156
    invoke-static {v2, p1}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->clearRequest(Ljava/lang/String;I)V

    goto :goto_0

    .line 126
    :pswitch_3
    invoke-static/range {v2 .. v7}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->writeDescriptor(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    goto :goto_0

    .line 122
    :pswitch_4
    invoke-static {v2, v3, v4, v5, v7}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->readDescriptor(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    goto :goto_0

    .line 147
    :pswitch_5
    invoke-static {}, Lcom/inuker/bluetooth/library/search/BluetoothSearchManager;->stopSearch()V

    goto :goto_0

    :pswitch_6
    const-string p1, "extra.request"

    .line 142
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/inuker/bluetooth/library/search/SearchRequest;

    .line 143
    invoke-static {p1, v7}, Lcom/inuker/bluetooth/library/search/BluetoothSearchManager;->search(Lcom/inuker/bluetooth/library/search/SearchRequest;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    goto :goto_0

    .line 151
    :pswitch_7
    invoke-static {v2, v3, v4, v7}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->indicate(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    goto :goto_0

    .line 138
    :pswitch_8
    invoke-static {v2, v7}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->readRssi(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    goto :goto_0

    .line 134
    :pswitch_9
    invoke-static {v2, v3, v4, v7}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->unnotify(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    goto :goto_0

    .line 130
    :pswitch_a
    invoke-static {v2, v3, v4, v7}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->notify(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    goto :goto_0

    .line 118
    :pswitch_b
    invoke-static {v2, v3, v4, v6, v7}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->writeNoRsp(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    goto :goto_0

    .line 114
    :pswitch_c
    invoke-static {v2, v3, v4, v6, v7}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->write(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    goto :goto_0

    .line 110
    :pswitch_d
    invoke-static {v2, v3, v4, v7}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->read(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    goto :goto_0

    .line 106
    :pswitch_e
    invoke-static {v2}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->disconnect(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_f
    const-string p1, "extra.options"

    .line 101
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;

    .line 102
    invoke-static {v2, p1, v7}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->connect(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
