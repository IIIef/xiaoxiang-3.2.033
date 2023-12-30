.class public Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;
.super Ljava/lang/Object;
.source "BleInfoUpdateHelper.java"


# static fields
.field private static instance:Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;


# instance fields
.field private txnNoService:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 49
    iput-object v0, p0, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->txnNoService:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;
    .locals 2

    .line 37
    sget-object v0, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->instance:Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    if-nez v0, :cond_1

    .line 38
    const-class v0, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->instance:Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    invoke-direct {v1}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;-><init>()V

    sput-object v1, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->instance:Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    .line 41
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 43
    :cond_1
    :goto_0
    sget-object v0, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->instance:Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    return-object v0
.end method


# virtual methods
.method public bindDevice(Ljava/lang/String;Lcom/jiabaida/little_elephant/socket/SocketClineListener;)V
    .locals 5

    const-string v0, ""

    .line 132
    :try_start_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v1

    const-string v2, "sp_key_user_token"

    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 140
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "command"

    const/16 v4, 0x76

    .line 141
    invoke-virtual {p2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "token"

    .line 142
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "macAddr"

    .line 143
    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "data"

    .line 144
    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "txnNo"

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 149
    new-instance v0, Lcom/jiabaida/little_elephant/socket/PkgDataBean;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;-><init>()V

    .line 150
    invoke-virtual {v0, p2}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setData(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setTxnNo(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, v4}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setMsgType(I)V

    .line 153
    invoke-virtual {v0, v4}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setCmd(I)V

    .line 154
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/NettyClient;->getInstance()Lcom/jiabaida/little_elephant/socket/NettyClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/socket/NettyClient;->sendDatas(Lcom/jiabaida/little_elephant/socket/PkgDataBean;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "---socket-tc:"

    const-string v0, "\u84dd\u7259\u5730\u5740\u4e3a\u7a7a\uff0c\u6216\u672a\u767b\u5f55"

    .line 134
    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    const-string v0, "Info can not null\uff0cPlease try again\uff01"

    .line 135
    invoke-interface {p2, p1, v0}, Lcom/jiabaida/little_elephant/socket/SocketClineListener;->clineFaile(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 157
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public checkCanBindDevicePermissions(Ljava/lang/String;Lcom/jiabaida/little_elephant/socket/SocketClineListener;)V
    .locals 5

    const-string v0, ""

    .line 166
    :try_start_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v1

    const-string v2, "sp_key_user_token"

    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 174
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "command"

    const/16 v4, 0x82

    .line 175
    invoke-virtual {p2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "token"

    .line 176
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "macAddr"

    .line 177
    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "data"

    .line 178
    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "txnNo"

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 183
    new-instance v0, Lcom/jiabaida/little_elephant/socket/PkgDataBean;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;-><init>()V

    .line 184
    invoke-virtual {v0, p2}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setData(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setTxnNo(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0, v4}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setMsgType(I)V

    .line 187
    invoke-virtual {v0, v4}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setCmd(I)V

    .line 188
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/NettyClient;->getInstance()Lcom/jiabaida/little_elephant/socket/NettyClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/socket/NettyClient;->sendDatas(Lcom/jiabaida/little_elephant/socket/PkgDataBean;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "---socket-tc:"

    const-string v0, "\u84dd\u7259\u5730\u5740\u4e3a\u7a7a\uff0c\u6216\u672a\u767b\u5f55"

    .line 168
    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    const-string v0, "Info can not null\uff0cPlease try again\uff01"

    .line 169
    invoke-interface {p2, p1, v0}, Lcom/jiabaida/little_elephant/socket/SocketClineListener;->clineFaile(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 191
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public checkUpdate()V
    .locals 6

    .line 304
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "command"

    const/16 v2, 0x8c

    .line 305
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 306
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "type"

    const/4 v4, 0x1

    .line 307
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "version"

    .line 308
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiabaida/little_elephant/app/XXApplication;->getVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "txnNo"

    .line 310
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "data"

    .line 311
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    new-instance v1, Lcom/jiabaida/little_elephant/socket/PkgDataBean;

    invoke-direct {v1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;-><init>()V

    .line 313
    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setCmd(I)V

    .line 314
    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setMsgType(I)V

    .line 315
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setData(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v1, v3}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setTxnNo(Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/NettyClient;->getInstance()Lcom/jiabaida/little_elephant/socket/NettyClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/socket/NettyClient;->sendDatas(Lcom/jiabaida/little_elephant/socket/PkgDataBean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 320
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getPenetrateBack(Ljava/lang/String;)V
    .locals 5

    const-string v0, "txnNo"

    const-string v1, "content"

    const-string v2, "data"

    const-string v3, ""

    .line 57
    iput-object v3, p0, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->txnNoService:Ljava/lang/String;

    .line 59
    :try_start_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v3

    const-string v4, "BluetoothMac"

    invoke-virtual {v3, v4}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 60
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->isBleConnected()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 68
    :cond_1
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 69
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 72
    :cond_2
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 75
    :cond_3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->txnNoService:Ljava/lang/String;

    .line 79
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(ILjava/lang/String;[B)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    :goto_0
    const-string p1, "---socket-tc:"

    const-string v0, "\u900f\u4f20===\u84dd\u7259\u8fd8\u672a\u8fde\u63a5"

    .line 61
    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public getRootPsw(Ljava/lang/String;)V
    .locals 5

    .line 380
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 381
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "command"

    const/16 v3, 0x8e

    .line 382
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 383
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "macAddr"

    .line 384
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v2, "randNum"

    .line 386
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "data"

    .line 387
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "txnNo"

    .line 389
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    new-instance v1, Lcom/jiabaida/little_elephant/socket/PkgDataBean;

    invoke-direct {v1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;-><init>()V

    .line 393
    invoke-virtual {v1, v3}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setCmd(I)V

    .line 394
    invoke-virtual {v1, v3}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setMsgType(I)V

    .line 395
    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setData(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v1, p1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setTxnNo(Ljava/lang/String;)V

    .line 398
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/NettyClient;->getInstance()Lcom/jiabaida/little_elephant/socket/NettyClient;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/jiabaida/little_elephant/socket/NettyClient;->sendDatas(Lcom/jiabaida/little_elephant/socket/PkgDataBean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 400
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public postPenetrateBackService(Ljava/lang/String;)V
    .locals 6

    const-string v0, ""

    .line 94
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "---socket-tc:"

    if-eqz v1, :cond_0

    :try_start_1
    const-string p1, "\u900f\u4f20===\u84dd\u7259\u56de\u4f20\u4fe1\u606f\u4e0d\u80fd\u4e3a\u7a7a"

    .line 95
    invoke-static {v2, p1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->txnNoService:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 102
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 103
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "command"

    const/16 v5, 0x79

    .line 104
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "content"

    .line 105
    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "message"

    const-string v4, "\u4fee\u6539\u6210\u529f"

    .line 106
    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "data"

    .line 107
    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "status"

    const/4 v3, 0x1

    .line 108
    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "txnNo"

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    new-instance v3, Lcom/jiabaida/little_elephant/socket/PkgDataBean;

    invoke-direct {v3}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;-><init>()V

    .line 114
    invoke-virtual {v3, v1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setData(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v3, p1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setTxnNo(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v3, v5}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setMsgType(I)V

    .line 117
    invoke-virtual {v3, v5}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setCmd(I)V

    .line 118
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/NettyClient;->getInstance()Lcom/jiabaida/little_elephant/socket/NettyClient;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/jiabaida/little_elephant/socket/NettyClient;->sendDatas(Lcom/jiabaida/little_elephant/socket/PkgDataBean;)V

    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u900f\u4f20===\u5ba2\u6237\u7aef\u53d1\u9001\u5230\u670d\u52a1\u7aef\u7684\u900f\u4f20\u4fe1\u606f\uff1a"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 122
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 124
    :goto_0
    iput-object v0, p0, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->txnNoService:Ljava/lang/String;

    return-void
.end method

.method public queryDevicePermissions(Ljava/lang/String;)V
    .locals 6

    const-string v0, ""

    .line 200
    :try_start_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v1

    const-string v2, "sp_key_user_token"

    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 205
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 206
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "command"

    const/16 v5, 0x7a

    .line 207
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "token"

    .line 208
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "macAddr"

    .line 209
    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "data"

    .line 210
    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "txnNo"

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v1, Lcom/jiabaida/little_elephant/socket/PkgDataBean;

    invoke-direct {v1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;-><init>()V

    .line 216
    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setData(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1, p1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setTxnNo(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v1, v5}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setMsgType(I)V

    .line 219
    invoke-virtual {v1, v5}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setCmd(I)V

    .line 220
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/NettyClient;->getInstance()Lcom/jiabaida/little_elephant/socket/NettyClient;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/jiabaida/little_elephant/socket/NettyClient;->sendDatas(Lcom/jiabaida/little_elephant/socket/PkgDataBean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 223
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public queryMacPermissions(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public sendHeartPkg()V
    .locals 9

    const-string v0, ""

    .line 329
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 330
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "command"

    const/16 v4, 0x60

    .line 331
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 335
    :try_start_1
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v3

    const-string v5, "sp_key_user_token"

    invoke-virtual {v3, v5}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 336
    :try_start_2
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v5

    const-string v6, "BluetoothMac"

    invoke-virtual {v5, v6}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v5

    move-object v3, v0

    .line 338
    :goto_0
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v0

    .line 341
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v3, v0

    :cond_0
    const-string v6, "token"

    .line 345
    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "appVersion"

    .line 346
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jiabaida/little_elephant/app/XXApplication;->getVersionName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v6, "macAddr"

    .line 349
    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v5, "data"

    .line 351
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "txnNo"

    .line 353
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "isAnonymous"

    if-eqz v2, :cond_2

    .line 355
    :try_start_4
    invoke-virtual {v1, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    .line 357
    :cond_2
    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 359
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    new-instance v2, Lcom/jiabaida/little_elephant/socket/PkgDataBean;

    invoke-direct {v2}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;-><init>()V

    .line 361
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 362
    invoke-virtual {v2, v5}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setIsAnonymous(I)V

    goto :goto_3

    .line 364
    :cond_3
    invoke-virtual {v2, v6}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setIsAnonymous(I)V

    .line 366
    :goto_3
    invoke-virtual {v2, v4}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setCmd(I)V

    .line 367
    invoke-virtual {v2, v1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setData(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v2, v0}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setTxnNo(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v2, v4}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setMsgType(I)V

    .line 370
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/NettyClient;->getInstance()Lcom/jiabaida/little_elephant/socket/NettyClient;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jiabaida/little_elephant/socket/NettyClient;->sendDatas(Lcom/jiabaida/little_elephant/socket/PkgDataBean;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 372
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public syncBatteryInformation(Lorg/json/JSONObject;)V
    .locals 6

    .line 266
    :try_start_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    const-string v1, "BluetoothMac"

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 273
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "command"

    const/16 v3, 0x6a

    .line 275
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "macAddr"

    .line 277
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "data"

    .line 280
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "txnNo"

    .line 282
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    new-instance v1, Lcom/jiabaida/little_elephant/socket/PkgDataBean;

    invoke-direct {v1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;-><init>()V

    .line 287
    invoke-virtual {v1, v3}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setCmd(I)V

    .line 288
    invoke-virtual {v1, v3}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setMsgType(I)V

    .line 289
    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setData(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v1, p1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setTxnNo(Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/NettyClient;->getInstance()Lcom/jiabaida/little_elephant/socket/NettyClient;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/jiabaida/little_elephant/socket/NettyClient;->sendDatas(Lcom/jiabaida/little_elephant/socket/PkgDataBean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 295
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
