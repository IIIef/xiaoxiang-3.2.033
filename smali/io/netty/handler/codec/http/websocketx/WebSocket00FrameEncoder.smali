.class public Lio/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;
.super Lio/netty/handler/codec/MessageToMessageEncoder;
.source "WebSocket00FrameEncoder.java"

# interfaces
.implements Lio/netty/handler/codec/http/websocketx/WebSocketFrameEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToMessageEncoder<",
        "Lio/netty/handler/codec/http/websocketx/WebSocketFrame;",
        ">;",
        "Lio/netty/handler/codec/http/websocketx/WebSocketFrameEncoder;"
    }
.end annotation

.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# static fields
.field private static final _0X00:Lio/netty/buffer/ByteBuf;

.field private static final _0XFF:Lio/netty/buffer/ByteBuf;

.field private static final _0XFF_0X00:Lio/netty/buffer/ByteBuf;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 35
    invoke-static {v0, v0}, Lio/netty/buffer/Unpooled;->directBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 34
    invoke-static {v1}, Lio/netty/buffer/Unpooled;->unreleasableBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    sput-object v1, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;->_0X00:Lio/netty/buffer/ByteBuf;

    .line 37
    invoke-static {v0, v0}, Lio/netty/buffer/Unpooled;->directBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lio/netty/buffer/Unpooled;->unreleasableBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;->_0XFF:Lio/netty/buffer/ByteBuf;

    const/4 v0, 0x2

    .line 39
    invoke-static {v0, v0}, Lio/netty/buffer/Unpooled;->directBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lio/netty/buffer/Unpooled;->unreleasableBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;->_0XFF_0X00:Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/websocketx/WebSocketFrame;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/handler/codec/http/websocketx/WebSocketFrame;",
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

    .line 43
    instance-of v0, p2, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p2}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    .line 47
    sget-object p2, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;->_0X00:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object p1, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;->_0XFF:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 50
    :cond_0
    instance-of v0, p2, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    if-eqz v0, :cond_1

    .line 53
    sget-object p1, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;->_0XFF_0X00:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p2}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object p2

    .line 57
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 59
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    const/16 v1, -0x80

    .line 63
    :try_start_0
    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    ushr-int/lit8 v1, v0, 0x1c

    and-int/lit8 v1, v1, 0x7f

    ushr-int/lit8 v2, v0, 0xe

    and-int/lit8 v2, v2, 0x7f

    ushr-int/lit8 v3, v0, 0x7

    and-int/lit8 v3, v3, 0x7f

    and-int/lit8 v0, v0, 0x7f

    if-nez v1, :cond_4

    if-nez v2, :cond_3

    if-nez v3, :cond_2

    .line 73
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    :cond_2
    or-int/lit16 v1, v3, 0x80

    .line 75
    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 76
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    :cond_3
    or-int/lit16 v1, v2, 0x80

    .line 79
    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    or-int/lit16 v1, v3, 0x80

    .line 80
    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 81
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    :cond_4
    or-int/lit16 v1, v1, 0x80

    .line 84
    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    or-int/lit16 v1, v2, 0x80

    .line 85
    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    or-int/lit16 v1, v3, 0x80

    .line 86
    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 87
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 91
    :goto_0
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-void

    :catchall_0
    move-exception p2

    .line 96
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 98
    throw p2
.end method

.method protected bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    check-cast p2, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/websocketx/WebSocketFrame;Ljava/util/List;)V

    return-void
.end method
