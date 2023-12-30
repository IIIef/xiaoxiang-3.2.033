.class public abstract Lio/netty/handler/ssl/AbstractSniHandler;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "AbstractSniHandler.java"

# interfaces
.implements Lio/netty/channel/ChannelOutboundHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/handler/codec/ByteToMessageDecoder;",
        "Lio/netty/channel/ChannelOutboundHandler;"
    }
.end annotation


# static fields
.field private static final MAX_SSL_RECORDS:I = 0x4

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private handshakeFailed:Z

.field private readPending:Z

.field private suppressRead:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lio/netty/handler/ssl/AbstractSniHandler;

    .line 49
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/AbstractSniHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lio/netty/handler/ssl/AbstractSniHandler;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lio/netty/handler/ssl/AbstractSniHandler;->suppressRead:Z

    return p1
.end method

.method static synthetic access$100(Lio/netty/handler/ssl/AbstractSniHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/util/concurrent/Future;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/ssl/AbstractSniHandler;->fireSniCompletionEvent(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/util/concurrent/Future;)V

    return-void
.end method

.method static synthetic access$200(Lio/netty/handler/ssl/AbstractSniHandler;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lio/netty/handler/ssl/AbstractSniHandler;->readPending:Z

    return p0
.end method

.method static synthetic access$202(Lio/netty/handler/ssl/AbstractSniHandler;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lio/netty/handler/ssl/AbstractSniHandler;->readPending:Z

    return p1
.end method

.method private fireSniCompletionEvent(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    .line 259
    invoke-interface {p3}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p3

    if-nez p3, :cond_0

    .line 261
    new-instance p3, Lio/netty/handler/ssl/SniCompletionEvent;

    invoke-direct {p3, p2}, Lio/netty/handler/ssl/SniCompletionEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_0

    .line 263
    :cond_0
    new-instance v0, Lio/netty/handler/ssl/SniCompletionEvent;

    invoke-direct {v0, p2, p3}, Lio/netty/handler/ssl/SniCompletionEvent;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method private select(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 226
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/ssl/AbstractSniHandler;->lookup(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    .line 227
    invoke-interface {v0}, Lio/netty/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/ssl/AbstractSniHandler;->fireSniCompletionEvent(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/util/concurrent/Future;)V

    .line 229
    invoke-virtual {p0, p1, p2, v0}, Lio/netty/handler/ssl/AbstractSniHandler;->onLookupComplete(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/util/concurrent/Future;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 231
    iput-boolean v1, p0, Lio/netty/handler/ssl/AbstractSniHandler;->suppressRead:Z

    .line 232
    new-instance v1, Lio/netty/handler/ssl/AbstractSniHandler$1;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/handler/ssl/AbstractSniHandler$1;-><init>(Lio/netty/handler/ssl/AbstractSniHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    :goto_0
    return-void
.end method


# virtual methods
.method public bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 294
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 310
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 300
    invoke-interface {p1, p2, p3, p4}, Lio/netty/channel/ChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 7
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

    .line 57
    iget-boolean p3, p0, Lio/netty/handler/ssl/AbstractSniHandler;->suppressRead:Z

    if-nez p3, :cond_d

    iget-boolean p3, p0, Lio/netty/handler/ssl/AbstractSniHandler;->handshakeFailed:Z

    if-nez p3, :cond_d

    .line 58
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_c

    .line 62
    :try_start_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    sub-int v3, p3, v2

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {p2, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v5

    const/4 v6, 0x1

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    add-int/lit8 p3, v2, 0x1

    .line 96
    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result p3

    const/4 v0, 0x3

    if-ne p3, v0, :cond_c

    add-int/lit8 p3, v2, 0x3

    .line 100
    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result p3

    add-int/2addr p3, v4

    if-ge v3, p3, :cond_1

    return-void

    :cond_1
    add-int/2addr p3, v2

    add-int/lit8 v2, v2, 0x2b

    sub-int v3, p3, v2

    const/4 v4, 0x6

    if-ge v3, v4, :cond_2

    goto/16 :goto_4

    .line 135
    :cond_2
    invoke-virtual {p2, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v3

    add-int/2addr v3, v6

    add-int/2addr v2, v3

    .line 138
    invoke-virtual {p2, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 141
    invoke-virtual {p2, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v3

    add-int/2addr v3, v6

    add-int/2addr v2, v3

    .line 144
    invoke-virtual {p2, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result v3

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v2

    if-le v3, p3, :cond_3

    goto/16 :goto_4

    :cond_3
    :goto_1
    sub-int p3, v3, v2

    if-ge p3, v1, :cond_4

    goto/16 :goto_4

    .line 158
    :cond_4
    invoke-virtual {p2, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result p3

    add-int/lit8 v2, v2, 0x2

    .line 161
    invoke-virtual {p2, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result v4

    add-int/lit8 v2, v2, 0x2

    sub-int v5, v3, v2

    if-ge v5, v4, :cond_5

    goto/16 :goto_4

    :cond_5
    if-nez p3, :cond_8

    add-int/lit8 v2, v2, 0x2

    sub-int p3, v3, v2

    if-ge p3, v0, :cond_6

    goto/16 :goto_4

    .line 176
    :cond_6
    invoke-virtual {p2, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result p3

    add-int/2addr v2, v6

    if-nez p3, :cond_c

    .line 180
    invoke-virtual {p2, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result p3

    add-int/lit8 v2, v2, 0x2

    sub-int/2addr v3, v2

    if-ge v3, p3, :cond_7

    goto/16 :goto_4

    .line 187
    :cond_7
    sget-object v0, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2, p3, v0}, Lio/netty/buffer/ByteBuf;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Lio/netty/handler/ssl/NotSslRecordException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :try_start_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lio/netty/handler/ssl/AbstractSniHandler;->select(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p3

    .line 193
    :try_start_2
    invoke-static {p3}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :cond_8
    add-int/2addr v2, v4

    goto :goto_1

    .line 75
    :pswitch_1
    invoke-static {p2, v2}, Lio/netty/handler/ssl/SslUtils;->getEncryptedPacketLength(Lio/netty/buffer/ByteBuf;I)I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_b

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    add-int/lit8 v3, v3, -0x5

    if-ge v3, v1, :cond_9

    goto :goto_3

    .line 93
    :cond_9
    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    :goto_3
    return-void

    .line 79
    :cond_b
    iput-boolean v6, p0, Lio/netty/handler/ssl/AbstractSniHandler;->handshakeFailed:Z

    .line 80
    new-instance p3, Lio/netty/handler/ssl/NotSslRecordException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not an SSL/TLS record: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-static {p2}, Lio/netty/buffer/ByteBufUtil;->hexDump(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Lio/netty/handler/ssl/NotSslRecordException;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 83
    new-instance v0, Lio/netty/handler/ssl/SniCompletionEvent;

    invoke-direct {v0, p3}, Lio/netty/handler/ssl/SniCompletionEvent;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 84
    invoke-static {p1, p3, v6}, Lio/netty/handler/ssl/SslUtils;->handleHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;Z)V

    .line 85
    throw p3
    :try_end_2
    .catch Lio/netty/handler/ssl/NotSslRecordException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p3

    .line 216
    sget-object v0, Lio/netty/handler/ssl/AbstractSniHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected client hello packet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/netty/buffer/ByteBufUtil;->hexDump(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception p1

    .line 213
    throw p1

    :cond_c
    :goto_4
    const/4 p2, 0x0

    .line 221
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/AbstractSniHandler;->select(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 315
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 305
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 325
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method protected abstract lookup(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/String;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract onLookupComplete(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/util/concurrent/Future;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public read(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 285
    iget-boolean v0, p0, Lio/netty/handler/ssl/AbstractSniHandler;->suppressRead:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 286
    iput-boolean p1, p0, Lio/netty/handler/ssl/AbstractSniHandler;->readPending:Z

    goto :goto_0

    .line 288
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 320
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method
