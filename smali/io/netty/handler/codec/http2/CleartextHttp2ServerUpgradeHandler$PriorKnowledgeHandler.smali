.class final Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler$PriorKnowledgeHandler;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "CleartextHttp2ServerUpgradeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PriorKnowledgeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;


# direct methods
.method private constructor <init>(Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler$PriorKnowledgeHandler;->this$0:Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;

    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler$1;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler$PriorKnowledgeHandler;-><init>(Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;)V

    return-void
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    invoke-static {}, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->access$100()Lio/netty/buffer/ByteBuf;

    move-result-object p3

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p3

    .line 82
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 84
    invoke-static {}, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->access$100()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-static {}, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->access$100()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    .line 85
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    .line 84
    invoke-static {v1, v2, p2, v3, v0}, Lio/netty/buffer/ByteBufUtil;->equals(Lio/netty/buffer/ByteBuf;ILio/netty/buffer/ByteBuf;II)Z

    move-result p2

    if-nez p2, :cond_0

    .line 86
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    goto :goto_0

    :cond_0
    if-ne v0, p3, :cond_1

    .line 90
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p2

    iget-object p3, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler$PriorKnowledgeHandler;->this$0:Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;

    .line 91
    invoke-static {p3}, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->access$300(Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;)Lio/netty/handler/codec/http/HttpServerCodec;

    move-result-object p3

    invoke-interface {p2, p3}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object p2

    iget-object p3, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler$PriorKnowledgeHandler;->this$0:Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;

    .line 92
    invoke-static {p3}, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->access$200(Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;)Lio/netty/handler/codec/http/HttpServerUpgradeHandler;

    move-result-object p3

    invoke-interface {p2, p3}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 94
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    iget-object v1, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler$PriorKnowledgeHandler;->this$0:Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;

    invoke-static {v1}, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->access$400(Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;)Lio/netty/channel/ChannelHandler;

    move-result-object v1

    invoke-interface {p2, p3, v0, v1}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 95
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p2

    invoke-interface {p2, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 97
    invoke-static {}, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler$PriorKnowledgeUpgradeEvent;->access$500()Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler$PriorKnowledgeUpgradeEvent;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :cond_1
    :goto_0
    return-void
.end method
