.class final Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;
.super Lio/netty/util/DefaultAttributeMap;
.source "Http2MultiplexCodec.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2StreamChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2MultiplexCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultHttp2StreamChannel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2StreamChannelConfig;,
        Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final channelId:Lio/netty/channel/ChannelId;

.field private final closePromise:Lio/netty/channel/ChannelPromise;

.field private final config:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2StreamChannelConfig;

.field private firstFrameWritten:Z

.field private inboundBuffer:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field next:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

.field private final outbound:Z

.field private outboundClosed:Z

.field private final pipeline:Lio/netty/channel/ChannelPipeline;

.field previous:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

.field private readStatus:Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

.field private volatile registered:Z

.field private final stream:Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

.field final synthetic this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

.field private final unsafe:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;

.field private volatile writable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 454
    const-class v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    return-void
.end method

.method constructor <init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;Z)V
    .locals 2

    .line 489
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    invoke-direct {p0}, Lio/netty/util/DefaultAttributeMap;-><init>()V

    .line 455
    new-instance v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2StreamChannelConfig;

    invoke-direct {v0, p0, p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2StreamChannelConfig;-><init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;Lio/netty/channel/Channel;)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->config:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2StreamChannelConfig;

    .line 456
    new-instance v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;-><init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;Lio/netty/handler/codec/http2/Http2MultiplexCodec$1;)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->unsafe:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;

    .line 475
    sget-object v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;->IDLE:Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->readStatus:Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    .line 490
    iput-object p2, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->stream:Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    .line 491
    iput-boolean p3, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->outbound:Z

    .line 492
    invoke-static {p1, p2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->access$300(Lio/netty/handler/codec/http2/Http2MultiplexCodec;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;)Z

    move-result p3

    iput-boolean p3, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->writable:Z

    .line 493
    check-cast p2, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStream;

    iput-object p0, p2, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStream;->channel:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    .line 494
    new-instance p2, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$1;

    invoke-direct {p2, p0, p0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$1;-><init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;Lio/netty/channel/Channel;Lio/netty/handler/codec/http2/Http2MultiplexCodec;)V

    iput-object p2, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline:Lio/netty/channel/ChannelPipeline;

    .line 505
    invoke-interface {p2}, Lio/netty/channel/ChannelPipeline;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object p2

    iput-object p2, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->closePromise:Lio/netty/channel/ChannelPromise;

    .line 506
    new-instance p2, Lio/netty/handler/codec/http2/Http2StreamChannelId;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->parent()Lio/netty/channel/Channel;

    move-result-object p3

    invoke-interface {p3}, Lio/netty/channel/Channel;->id()Lio/netty/channel/ChannelId;

    move-result-object p3

    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->access$404(Lio/netty/handler/codec/http2/Http2MultiplexCodec;)I

    move-result p1

    invoke-direct {p2, p3, p1}, Lio/netty/handler/codec/http2/Http2StreamChannelId;-><init>(Lio/netty/channel/ChannelId;I)V

    iput-object p2, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->channelId:Lio/netty/channel/ChannelId;

    return-void
.end method

.method static synthetic access$100(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Z
    .locals 0

    .line 454
    iget-boolean p0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->outboundClosed:Z

    return p0
.end method

.method static synthetic access$1000(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Lio/netty/channel/ChannelPromise;
    .locals 0

    .line 454
    iget-object p0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->closePromise:Lio/netty/channel/ChannelPromise;

    return-object p0
.end method

.method static synthetic access$102(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;Z)Z
    .locals 0

    .line 454
    iput-boolean p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->outboundClosed:Z

    return p1
.end method

.method static synthetic access$1100(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Ljava/util/Queue;
    .locals 0

    .line 454
    iget-object p0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->inboundBuffer:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$1200(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Lio/netty/channel/ChannelPipeline;
    .locals 0

    .line 454
    iget-object p0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline:Lio/netty/channel/ChannelPipeline;

    return-object p0
.end method

.method static synthetic access$1500(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;
    .locals 0

    .line 454
    iget-object p0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->readStatus:Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    return-object p0
.end method

.method static synthetic access$1502(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;)Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;
    .locals 0

    .line 454
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->readStatus:Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    return-object p1
.end method

.method static synthetic access$1600(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;
    .locals 0

    .line 454
    iget-object p0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->unsafe:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;

    return-object p0
.end method

.method static synthetic access$1900(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;
    .locals 0

    .line 454
    iget-object p0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->stream:Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    return-object p0
.end method

.method static synthetic access$2100(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Z
    .locals 0

    .line 454
    iget-boolean p0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->firstFrameWritten:Z

    return p0
.end method

.method static synthetic access$2102(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;Z)Z
    .locals 0

    .line 454
    iput-boolean p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->firstFrameWritten:Z

    return p1
.end method

.method static synthetic access$2400(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2StreamChannelConfig;
    .locals 0

    .line 454
    iget-object p0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->config:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2StreamChannelConfig;

    return-object p0
.end method

.method static synthetic access$700(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Z
    .locals 0

    .line 454
    iget-boolean p0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->registered:Z

    return p0
.end method

.method static synthetic access$702(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;Z)Z
    .locals 0

    .line 454
    iput-boolean p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->registered:Z

    return p1
.end method

.method static synthetic access$800(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Z
    .locals 0

    .line 454
    iget-boolean p0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->outbound:Z

    return p0
.end method


# virtual methods
.method public alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .line 605
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    return-object v0
.end method

.method public bind(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 622
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPipeline;->bind(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 652
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/netty/channel/ChannelPipeline;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public bytesBeforeUnwritable()J
    .locals 2

    .line 584
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public bytesBeforeWritable()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public close()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 642
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelPipeline;->close()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 672
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPipeline;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public closeFuture()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 578
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->closePromise:Lio/netty/channel/ChannelPromise;

    return-object v0
.end method

.method public compareTo(Lio/netty/channel/Channel;)I
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 741
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->id()Lio/netty/channel/ChannelId;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/Channel;->id()Lio/netty/channel/ChannelId;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelId;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 454
    check-cast p1, Lio/netty/channel/Channel;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->compareTo(Lio/netty/channel/Channel;)I

    move-result p1

    return p1
.end method

.method public config()Lio/netty/channel/ChannelConfig;
    .locals 1

    .line 528
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->config:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2StreamChannelConfig;

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 627
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPipeline;->connect(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 657
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/netty/channel/ChannelPipeline;->connect(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 632
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/netty/channel/ChannelPipeline;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 662
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/netty/channel/ChannelPipeline;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public deregister()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 647
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelPipeline;->deregister()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 677
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPipeline;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public disconnect()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelPipeline;->disconnect()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 667
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPipeline;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public eventLoop()Lio/netty/channel/EventLoop;
    .locals 1

    .line 553
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->parent()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    return-object v0
.end method

.method fireChildRead(Lio/netty/handler/codec/http2/Http2Frame;)V
    .locals 2

    .line 764
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 765
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    goto :goto_0

    .line 766
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->readStatus:Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    sget-object v1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;->IDLE:Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    if-eq v0, v1, :cond_2

    .line 770
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->unsafe:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v0

    .line 771
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->unsafe:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;

    invoke-virtual {v1, p1, v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->doRead0(Lio/netty/handler/codec/http2/Http2Frame;Lio/netty/channel/RecvByteBufAllocator$Handle;)V

    .line 776
    invoke-interface {v0}, Lio/netty/channel/RecvByteBufAllocator$Handle;->continueReading()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 777
    iget-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    invoke-virtual {p1, p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->tryAddChildChannelToReadPendingQueue(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)V

    goto :goto_0

    .line 779
    :cond_1
    iget-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    invoke-static {p1, p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->access$600(Lio/netty/handler/codec/http2/Http2MultiplexCodec;Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)V

    .line 780
    iget-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->unsafe:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;

    invoke-virtual {p1, v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->notifyReadComplete(Lio/netty/channel/RecvByteBufAllocator$Handle;)V

    goto :goto_0

    .line 783
    :cond_2
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->inboundBuffer:Ljava/util/Queue;

    if-nez v0, :cond_3

    .line 784
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->inboundBuffer:Ljava/util/Queue;

    .line 786
    :cond_3
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->inboundBuffer:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method fireChildReadComplete()V
    .locals 2

    .line 793
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->unsafe:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->notifyReadComplete(Lio/netty/channel/RecvByteBufAllocator$Handle;)V

    return-void
.end method

.method public flush()Lio/netty/channel/Channel;
    .locals 1

    .line 616
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelPipeline;->flush()Lio/netty/channel/ChannelPipeline;

    return-object p0
.end method

.method public bridge synthetic flush()Lio/netty/channel/ChannelOutboundInvoker;
    .locals 1

    .line 454
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->flush()Lio/netty/channel/Channel;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 727
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->id()Lio/netty/channel/ChannelId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public id()Lio/netty/channel/ChannelId;
    .locals 1

    .line 548
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->channelId:Lio/netty/channel/ChannelId;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 538
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 533
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->closePromise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->isDone()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isRegistered()Z
    .locals 1

    .line 563
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->registered:Z

    return v0
.end method

.method public isWritable()Z
    .locals 1

    .line 543
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->writable:Z

    return v0
.end method

.method public localAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 568
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->parent()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public metadata()Lio/netty/channel/ChannelMetadata;
    .locals 1

    .line 523
    invoke-static {}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->access$500()Lio/netty/channel/ChannelMetadata;

    move-result-object v0

    return-object v0
.end method

.method public newFailedFuture(Ljava/lang/Throwable;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 717
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPipeline;->newFailedFuture(Ljava/lang/Throwable;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public newProgressivePromise()Lio/netty/channel/ChannelProgressivePromise;
    .locals 1

    .line 707
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelPipeline;->newProgressivePromise()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public newPromise()Lio/netty/channel/ChannelPromise;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelPipeline;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public newSucceededFuture()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 712
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelPipeline;->newSucceededFuture()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public parent()Lio/netty/channel/Channel;
    .locals 1

    .line 558
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    iget-object v0, v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    return-object v0
.end method

.method public pipeline()Lio/netty/channel/ChannelPipeline;
    .locals 1

    .line 600
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline:Lio/netty/channel/ChannelPipeline;

    return-object v0
.end method

.method public read()Lio/netty/channel/Channel;
    .locals 1

    .line 610
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelPipeline;->read()Lio/netty/channel/ChannelOutboundInvoker;

    return-object p0
.end method

.method public bridge synthetic read()Lio/netty/channel/ChannelOutboundInvoker;
    .locals 1

    .line 454
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->read()Lio/netty/channel/Channel;

    move-result-object v0

    return-object v0
.end method

.method public remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 573
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->parent()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public stream()Lio/netty/handler/codec/http2/Http2FrameStream;
    .locals 1

    .line 511
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->stream:Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    return-object v0
.end method

.method streamClosed()V
    .locals 1

    .line 515
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->unsafe:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->readEOS()V

    .line 518
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->unsafe:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->doBeginRead()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->parent()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(H2 - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->stream:Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsafe()Lio/netty/channel/Channel$Unsafe;
    .locals 1

    .line 595
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->unsafe:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;

    return-object v0
.end method

.method public voidPromise()Lio/netty/channel/ChannelPromise;
    .locals 1

    .line 722
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelPipeline;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method writabilityChanged(Z)V
    .locals 1

    .line 751
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->writable:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    iput-boolean p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->writable:Z

    .line 754
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/ChannelPipeline;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelPipeline;

    :cond_0
    return-void
.end method

.method public write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 682
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPipeline;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 687
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/netty/channel/ChannelPipeline;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 697
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPipeline;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 692
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/netty/channel/ChannelPipeline;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method
