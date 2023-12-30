.class public Lcom/jiabaida/little_elephant/socket/NettyClient;
.super Ljava/lang/Object;
.source "NettyClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NettyClient"

.field private static nettyClient:Lcom/jiabaida/little_elephant/socket/NettyClient;


# instance fields
.field private channel:Lio/netty/channel/Channel;

.field private requestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/jiabaida/little_elephant/socket/PkgDataBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/socket/NettyClient;->requestMap:Ljava/util/HashMap;

    return-void
.end method

.method public static getChannel()Lio/netty/channel/Channel;
    .locals 1

    .line 76
    sget-object v0, Lcom/jiabaida/little_elephant/socket/NettyClient;->nettyClient:Lcom/jiabaida/little_elephant/socket/NettyClient;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_0
    iget-object v0, v0, Lcom/jiabaida/little_elephant/socket/NettyClient;->channel:Lio/netty/channel/Channel;

    return-object v0
.end method

.method public static getInstance()Lcom/jiabaida/little_elephant/socket/NettyClient;
    .locals 1

    .line 48
    sget-object v0, Lcom/jiabaida/little_elephant/socket/NettyClient;->nettyClient:Lcom/jiabaida/little_elephant/socket/NettyClient;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/jiabaida/little_elephant/socket/NettyClient;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/socket/NettyClient;-><init>()V

    sput-object v0, Lcom/jiabaida/little_elephant/socket/NettyClient;->nettyClient:Lcom/jiabaida/little_elephant/socket/NettyClient;

    .line 51
    :cond_0
    sget-object v0, Lcom/jiabaida/little_elephant/socket/NettyClient;->nettyClient:Lcom/jiabaida/little_elephant/socket/NettyClient;

    return-object v0
.end method

.method static synthetic lambda$connect$0(Lio/netty/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    invoke-interface {p0}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result p0

    const-string v0, "NettyClient"

    if-eqz p0, :cond_0

    const-string p0, "\u8fde\u63a5\u6210\u529f!"

    .line 144
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "\u8fde\u63a5\u5931\u8d25!"

    .line 146
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 5

    const-string v0, "NettyClient"

    .line 118
    :try_start_0
    new-instance v1, Lio/netty/channel/nio/NioEventLoopGroup;

    invoke-direct {v1}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>()V

    .line 119
    new-instance v2, Lio/netty/bootstrap/Bootstrap;

    invoke-direct {v2}, Lio/netty/bootstrap/Bootstrap;-><init>()V

    const-class v3, Lio/netty/channel/socket/nio/NioSocketChannel;

    .line 121
    invoke-virtual {v2, v3}, Lio/netty/bootstrap/Bootstrap;->channel(Ljava/lang/Class;)Lio/netty/bootstrap/AbstractBootstrap;

    move-result-object v2

    check-cast v2, Lio/netty/bootstrap/Bootstrap;

    .line 123
    invoke-virtual {v2, v1}, Lio/netty/bootstrap/Bootstrap;->group(Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/AbstractBootstrap;

    move-result-object v1

    check-cast v1, Lio/netty/bootstrap/Bootstrap;

    new-instance v2, Lcom/jiabaida/little_elephant/socket/NettyClient$3;

    invoke-direct {v2, p0}, Lcom/jiabaida/little_elephant/socket/NettyClient$3;-><init>(Lcom/jiabaida/little_elephant/socket/NettyClient;)V

    .line 125
    invoke-virtual {v1, v2}, Lio/netty/bootstrap/Bootstrap;->handler(Lio/netty/channel/ChannelHandler;)Lio/netty/bootstrap/AbstractBootstrap;

    move-result-object v1

    check-cast v1, Lio/netty/bootstrap/Bootstrap;

    .line 140
    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v3, "cloud.jiabaida.com"

    const/16 v4, 0x2801

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inetSocketAddress"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v1, v2}, Lio/netty/bootstrap/Bootstrap;->connect(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    sget-object v2, Lcom/jiabaida/little_elephant/socket/NettyClient$$ExternalSyntheticLambda0;->INSTANCE:Lcom/jiabaida/little_elephant/socket/NettyClient$$ExternalSyntheticLambda0;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    .line 153
    invoke-interface {v1}, Lio/netty/channel/ChannelFuture;->sync()Lio/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/jiabaida/little_elephant/socket/NettyClient;->channel:Lio/netty/channel/Channel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8fde\u63a5\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public doConnect()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/jiabaida/little_elephant/socket/NettyClient;->channel:Lio/netty/channel/Channel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jiabaida/little_elephant/socket/NettyClient$1;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/socket/NettyClient$1;-><init>(Lcom/jiabaida/little_elephant/socket/NettyClient;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 69
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getRequestMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/jiabaida/little_elephant/socket/PkgDataBean;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/jiabaida/little_elephant/socket/NettyClient;->requestMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public sendDatas(Lcom/jiabaida/little_elephant/socket/PkgDataBean;)V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/jiabaida/little_elephant/socket/NettyClient;->requestMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->getTxnNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/jiabaida/little_elephant/socket/NettyClient;->nettyClient:Lcom/jiabaida/little_elephant/socket/NettyClient;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/socket/NettyClient;->channel:Lio/netty/channel/Channel;

    const-string v1, "NettyClient"

    if-nez v0, :cond_0

    const-string p1, "\u8fde\u63a5\u65ad\u5f00\uff0c\u8fdb\u884c\u91cd\u8fde"

    .line 90
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/socket/NettyClient;->doConnect()V

    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send datas:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v0, Lcom/jiabaida/little_elephant/socket/NettyClient;->nettyClient:Lcom/jiabaida/little_elephant/socket/NettyClient;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/socket/NettyClient;->channel:Lio/netty/channel/Channel;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/netty/channel/Channel;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    .line 96
    new-instance v0, Lcom/jiabaida/little_elephant/socket/NettyClient$2;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/socket/NettyClient$2;-><init>(Lcom/jiabaida/little_elephant/socket/NettyClient;)V

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    return-void
.end method
