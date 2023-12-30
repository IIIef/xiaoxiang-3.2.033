.class Lcom/jiabaida/little_elephant/socket/ClientHandler;
.super Lio/netty/channel/SimpleChannelInboundHandler;
.source "NettyClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/channel/SimpleChannelInboundHandler<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClientHandler"


# instance fields
.field private returnDatas:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 177
    invoke-direct {p0}, Lio/netty/channel/SimpleChannelInboundHandler;-><init>()V

    const-string v0, ""

    .line 180
    iput-object v0, p0, Lcom/jiabaida/little_elephant/socket/ClientHandler;->returnDatas:Ljava/lang/String;

    return-void
.end method

.method private getMessage(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;
    .locals 2

    .line 281
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    new-array v0, v0, [B

    .line 282
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->readBytes([B)Lio/netty/buffer/ByteBuf;

    .line 284
    :try_start_0
    new-instance p1, Ljava/lang/String;

    const-string v1, "UTF8"

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 286
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getReadState(Ljava/lang/String;)I
    .locals 2

    const-string v0, "{"

    .line 258
    invoke-direct {p0, p1, v0}, Lcom/jiabaida/little_elephant/socket/ClientHandler;->getStringCharCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "}"

    .line 259
    invoke-direct {p0, p1, v1}, Lcom/jiabaida/little_elephant/socket/ClientHandler;->getStringCharCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private getStringCharCount(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 265
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 271
    :goto_0
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 272
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_1
    return v0
.end method

.method private sendHeartPkg(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string p1, ""

    .line 346
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 347
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "command"

    const/16 v3, 0x60

    .line 348
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 352
    :try_start_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v2

    const-string v4, "sp_key_user_token"

    invoke-virtual {v2, v4}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 353
    :try_start_1
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v4

    const-string v5, "BluetoothMac"

    invoke-virtual {v4, v5}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v2, p1

    .line 355
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, p1

    .line 358
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v2, p1

    :cond_0
    const-string v5, "token"

    .line 362
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiabaida/little_elephant/app/XXApplication;->getVersionName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "appVersion"

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v5, "macAddr"

    .line 365
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v4, "data"

    .line 367
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "txnNo"

    .line 369
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "isAnonymous"

    if-eqz v1, :cond_2

    .line 371
    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    .line 373
    :cond_2
    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 375
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    new-instance v1, Lcom/jiabaida/little_elephant/socket/PkgDataBean;

    invoke-direct {v1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;-><init>()V

    .line 377
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 378
    invoke-virtual {v1, v4}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setIsAnonymous(I)V

    goto :goto_3

    .line 380
    :cond_3
    invoke-virtual {v1, v5}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setIsAnonymous(I)V

    .line 382
    :goto_3
    invoke-virtual {v1, v3}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setCmd(I)V

    .line 383
    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setData(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v1, p1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setTxnNo(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v1, v3}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setMsgType(I)V

    .line 386
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/NettyClient;->getInstance()Lcom/jiabaida/little_elephant/socket/NettyClient;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/jiabaida/little_elephant/socket/NettyClient;->sendDatas(Lcom/jiabaida/little_elephant/socket/PkgDataBean;)V

    const-string p1, "ClientHandler"

    const-string v0, "\u5ba2\u6237\u7aef\u53d1\u9001\u5fc3\u8df3\u6210\u529f"

    .line 387
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 299
    invoke-super {p0, p1}, Lio/netty/channel/SimpleChannelInboundHandler;->channelActive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0e\u670d\u52a1\u7aef\u8fde\u63a5\u6210\u529f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClientHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/socket/ClientHandler;->sendHeartPkg(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 313
    invoke-super {p0, p1}, Lio/netty/channel/SimpleChannelInboundHandler;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0e\u670d\u52a1\u7aef\u65ad\u5f00\u8fde\u63a5\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ClientHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/NettyClient;->getInstance()Lcom/jiabaida/little_elephant/socket/NettyClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/socket/NettyClient;->doConnect()V

    return-void
.end method

.method protected channelRead0(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 7

    const-string p1, "txnNo"

    .line 191
    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-direct {p0, p2}, Lcom/jiabaida/little_elephant/socket/ClientHandler;->getMessage(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object p2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resonse read start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClientHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jiabaida/little_elephant/socket/ClientHandler;->returnDatas:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/socket/ClientHandler;->returnDatas:Ljava/lang/String;

    .line 195
    invoke-direct {p0, v0}, Lcom/jiabaida/little_elephant/socket/ClientHandler;->getReadState(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    if-gez v0, :cond_1

    .line 200
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "resonse data error::"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/socket/ClientHandler;->returnDatas:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 205
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/jiabaida/little_elephant/socket/ClientHandler;->returnDatas:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    .line 206
    iput-object v2, p0, Lcom/jiabaida/little_elephant/socket/ClientHandler;->returnDatas:Ljava/lang/String;

    .line 207
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/NettyClient;->getInstance()Lcom/jiabaida/little_elephant/socket/NettyClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/socket/NettyClient;->getRequestMap()Ljava/util/HashMap;

    move-result-object v2

    .line 208
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "command"

    const/16 v5, 0x7b

    const/4 v6, 0x0

    if-nez v3, :cond_3

    :try_start_1
    const-string p1, "txnNo is null"

    .line 209
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v5, :cond_2

    .line 211
    new-instance p1, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    invoke-direct {p1, v5, p2, v6}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(ILjava/lang/String;[B)V

    .line 212
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 216
    :cond_3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 217
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiabaida/little_elephant/socket/PkgDataBean;

    .line 218
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "code"

    .line 221
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v2, 0x3e9

    if-ne p1, v2, :cond_4

    .line 222
    new-instance p1, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    invoke-direct {p1, v2, p2, v6}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(ILjava/lang/String;[B)V

    .line 223
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :cond_4
    if-eqz v3, :cond_5

    .line 228
    new-instance p1, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    invoke-virtual {v3}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->getMsgType()I

    move-result v2

    invoke-direct {p1, v2, p2, v6}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(ILjava/lang/String;[B)V

    .line 230
    invoke-virtual {v3, v0}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setResponse(Lorg/json/JSONObject;)V

    .line 231
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 234
    :cond_5
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x78

    if-eq p1, v0, :cond_6

    if-eq p1, v5, :cond_6

    const/16 v0, 0x98

    if-ne p1, v0, :cond_7

    .line 237
    :cond_6
    new-instance v0, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    invoke-direct {v0, p1, p2, v6}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(ILjava/lang/String;[B)V

    .line 240
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 246
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "resonse parse data error::"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/socket/ClientHandler;->returnDatas:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 335
    invoke-super {p0, p1, p2}, Lio/netty/channel/SimpleChannelInboundHandler;->exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    const-string v0, "ClientHandler"

    const-string v1, "exceptionCaught"

    .line 336
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 338
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 321
    invoke-super {p0, p1, p2}, Lio/netty/channel/SimpleChannelInboundHandler;->userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 322
    instance-of v0, p2, Lio/netty/handler/timeout/IdleStateEvent;

    if-eqz v0, :cond_0

    .line 323
    check-cast p2, Lio/netty/handler/timeout/IdleStateEvent;

    invoke-virtual {p2}, Lio/netty/handler/timeout/IdleStateEvent;->state()Lio/netty/handler/timeout/IdleState;

    move-result-object p2

    sget-object v0, Lio/netty/handler/timeout/IdleState;->READER_IDLE:Lio/netty/handler/timeout/IdleState;

    if-ne p2, v0, :cond_1

    .line 324
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/socket/ClientHandler;->sendHeartPkg(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 328
    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/channel/SimpleChannelInboundHandler;->userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
