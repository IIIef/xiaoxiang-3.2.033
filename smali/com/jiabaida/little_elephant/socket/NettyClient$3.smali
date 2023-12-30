.class Lcom/jiabaida/little_elephant/socket/NettyClient$3;
.super Lio/netty/channel/ChannelInitializer;
.source "NettyClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/socket/NettyClient;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/channel/ChannelInitializer<",
        "Lio/netty/channel/socket/SocketChannel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/socket/NettyClient;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/socket/NettyClient;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/jiabaida/little_elephant/socket/NettyClient$3;->this$0:Lcom/jiabaida/little_elephant/socket/NettyClient;

    invoke-direct {p0}, Lio/netty/channel/ChannelInitializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initChannel(Lio/netty/channel/Channel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    check-cast p1, Lio/netty/channel/socket/SocketChannel;

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/socket/NettyClient$3;->initChannel(Lio/netty/channel/socket/SocketChannel;)V

    return-void
.end method

.method protected initChannel(Lio/netty/channel/socket/SocketChannel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 128
    invoke-interface {p1}, Lio/netty/channel/socket/SocketChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Lio/netty/channel/ChannelHandler;

    .line 130
    new-instance v2, Lio/netty/handler/timeout/IdleStateHandler;

    const/16 v3, 0x1e

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4, v4}, Lio/netty/handler/timeout/IdleStateHandler;-><init>(III)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    new-array v1, v0, [Lio/netty/channel/ChannelHandler;

    .line 132
    new-instance v2, Lcom/jiabaida/little_elephant/socket/ClientEncoder;

    invoke-direct {v2}, Lcom/jiabaida/little_elephant/socket/ClientEncoder;-><init>()V

    aput-object v2, v1, v3

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    new-array v0, v0, [Lio/netty/channel/ChannelHandler;

    .line 134
    new-instance v1, Lcom/jiabaida/little_elephant/socket/ClientHandler;

    invoke-direct {v1}, Lcom/jiabaida/little_elephant/socket/ClientHandler;-><init>()V

    aput-object v1, v0, v3

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    return-void
.end method
