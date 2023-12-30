.class public final Lio/netty/channel/kqueue/KQueueDatagramChannel;
.super Lio/netty/channel/kqueue/AbstractKQueueChannel;
.source "KQueueDatagramChannel.java"

# interfaces
.implements Lio/netty/channel/socket/DatagramChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EXPECTED_TYPES:Ljava/lang/String;

.field private static final METADATA:Lio/netty/channel/ChannelMetadata;


# instance fields
.field private final config:Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

.field private volatile connected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Lio/netty/channel/ChannelMetadata;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/channel/ChannelMetadata;-><init>(Z)V

    sput-object v0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lio/netty/channel/socket/DatagramPacket;

    .line 54
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lio/netty/channel/AddressedEnvelope;

    .line 55
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-class v2, Lio/netty/buffer/ByteBuf;

    .line 56
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Ljava/net/InetSocketAddress;

    .line 57
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lio/netty/buffer/ByteBuf;

    .line 58
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->EXPECTED_TYPES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 64
    invoke-static {}, Lio/netty/channel/kqueue/BsdSocket;->newSocketDgram()Lio/netty/channel/kqueue/BsdSocket;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lio/netty/channel/kqueue/AbstractKQueueChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/kqueue/BsdSocket;Z)V

    .line 65
    new-instance v0, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;-><init>(Lio/netty/channel/kqueue/KQueueDatagramChannel;)V

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->config:Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 69
    new-instance v0, Lio/netty/channel/kqueue/BsdSocket;

    invoke-direct {v0, p1}, Lio/netty/channel/kqueue/BsdSocket;-><init>(I)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannel;-><init>(Lio/netty/channel/kqueue/BsdSocket;Z)V

    return-void
.end method

.method constructor <init>(Lio/netty/channel/kqueue/BsdSocket;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, v0, p1, p2}, Lio/netty/channel/kqueue/AbstractKQueueChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/kqueue/BsdSocket;Z)V

    .line 74
    new-instance p1, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    invoke-direct {p1, p0}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;-><init>(Lio/netty/channel/kqueue/KQueueDatagramChannel;)V

    iput-object p1, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->config:Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    return-void
.end method

.method private doWriteMessage(Ljava/lang/Object;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 301
    instance-of v0, p1, Lio/netty/channel/AddressedEnvelope;

    if-eqz v0, :cond_0

    .line 303
    check-cast p1, Lio/netty/channel/AddressedEnvelope;

    .line 305
    invoke-interface {p1}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 306
    invoke-interface {p1}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    goto :goto_0

    .line 308
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/netty/buffer/ByteBuf;

    const/4 p1, 0x0

    .line 312
    :goto_0
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    .line 318
    :cond_1
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 319
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v5

    if-nez p1, :cond_2

    .line 321
    iget-object p1, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    invoke-virtual {p1, v5, v6, v1, v0}, Lio/netty/channel/kqueue/BsdSocket;->writeAddress(JII)I

    move-result p1

    goto/16 :goto_1

    .line 323
    :cond_2
    iget-object v4, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v7

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v8

    .line 324
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v10

    .line 323
    invoke-virtual/range {v4 .. v10}, Lio/netty/channel/kqueue/BsdSocket;->sendToAddress(JIILjava/net/InetAddress;I)I

    move-result p1

    goto :goto_1

    .line 326
    :cond_3
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v1

    if-le v1, v2, :cond_5

    .line 327
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    check-cast v1, Lio/netty/channel/kqueue/KQueueEventLoop;

    invoke-virtual {v1}, Lio/netty/channel/kqueue/KQueueEventLoop;->cleanArray()Lio/netty/channel/unix/IovArray;

    move-result-object v1

    .line 328
    invoke-virtual {v1, v0}, Lio/netty/channel/unix/IovArray;->add(Lio/netty/buffer/ByteBuf;)Z

    .line 329
    invoke-virtual {v1}, Lio/netty/channel/unix/IovArray;->count()I

    move-result v7

    if-nez p1, :cond_4

    .line 333
    iget-object p1, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v1, v3}, Lio/netty/channel/unix/IovArray;->memoryAddress(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, v7}, Lio/netty/channel/kqueue/BsdSocket;->writevAddresses(JI)J

    move-result-wide v0

    goto :goto_2

    .line 335
    :cond_4
    iget-object v4, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v1, v3}, Lio/netty/channel/unix/IovArray;->memoryAddress(I)J

    move-result-wide v5

    .line 336
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v9

    .line 335
    invoke-virtual/range {v4 .. v9}, Lio/netty/channel/kqueue/BsdSocket;->sendToAddresses(JILjava/net/InetAddress;I)I

    move-result p1

    goto :goto_1

    .line 339
    :cond_5
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v6

    if-nez p1, :cond_6

    .line 341
    iget-object p1, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p1, v6, v0, v1}, Lio/netty/channel/kqueue/BsdSocket;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    goto :goto_1

    .line 343
    :cond_6
    iget-object v5, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    .line 344
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v10

    .line 343
    invoke-virtual/range {v5 .. v10}, Lio/netty/channel/kqueue/BsdSocket;->sendTo(Ljava/nio/ByteBuffer;IILjava/net/InetAddress;I)I

    move-result p1

    :goto_1
    int-to-long v0, p1

    :goto_2
    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-lez p1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    return v2
.end method


# virtual methods
.method public block(Ljava/net/InetAddress;Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 235
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->block(Ljava/net/InetAddress;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public block(Ljava/net/InetAddress;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 244
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 242
    invoke-virtual {p0, p1, v0, p2, p3}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->block(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 247
    invoke-interface {p3, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    return-object p3
.end method

.method public block(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 212
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->block(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public block(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    const-string v0, "multicastAddress"

    .line 220
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "sourceToBlock"

    .line 223
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "networkInterface"

    .line 227
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 229
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Multicast not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    return-object p4
.end method

.method public bridge synthetic config()Lio/netty/channel/ChannelConfig;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->config()Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic config()Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->config()Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public config()Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;
    .locals 1

    .line 384
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->config:Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    return-object v0
.end method

.method public bridge synthetic config()Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->config()Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method protected doBind(Ljava/net/SocketAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 259
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->doBind(Ljava/net/SocketAddress;)V

    const/4 p1, 0x1

    .line 260
    iput-boolean p1, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->active:Z

    return-void
.end method

.method protected doClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 404
    invoke-super {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->doClose()V

    const/4 v0, 0x0

    .line 405
    iput-boolean v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->connected:Z

    return-void
.end method

.method protected doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 395
    invoke-super {p0, p1, p2}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 396
    iput-boolean p1, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->connected:Z

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected doDisconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->disconnect()V

    const/4 v0, 0x0

    .line 390
    iput-boolean v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->active:Z

    iput-boolean v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->connected:Z

    return-void
.end method

.method protected doWrite(Lio/netty/channel/ChannelOutboundBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 266
    :goto_0
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 269
    invoke-virtual {p0, v1}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->writeFilter(Z)V

    goto :goto_3

    .line 275
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->config()Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->getWriteSpinCount()I

    move-result v2

    :goto_1
    const/4 v3, 0x1

    if-lez v2, :cond_2

    .line 276
    invoke-direct {p0, v0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->doWriteMessage(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 283
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    goto :goto_0

    .line 286
    :cond_3
    invoke-virtual {p0, v3}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->writeFilter(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    .line 293
    invoke-virtual {p1, v0}, Lio/netty/channel/ChannelOutboundBuffer;->remove(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method protected filterOutboundMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 353
    instance-of v0, p1, Lio/netty/channel/socket/DatagramPacket;

    if-eqz v0, :cond_1

    .line 354
    move-object v0, p1

    check-cast v0, Lio/netty/channel/socket/DatagramPacket;

    .line 355
    invoke-virtual {v0}, Lio/netty/channel/socket/DatagramPacket;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 356
    invoke-static {v1}, Lio/netty/channel/unix/UnixChannelUtil;->isBufferCopyNeededForWrite(Lio/netty/buffer/ByteBuf;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Lio/netty/channel/socket/DatagramPacket;

    .line 357
    invoke-virtual {p0, v0, v1}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->newDirectBuffer(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {v0}, Lio/netty/channel/socket/DatagramPacket;->recipient()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-direct {p1, v1, v0}, Lio/netty/channel/socket/DatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;)V

    :cond_0
    return-object p1

    .line 360
    :cond_1
    instance-of v0, p1, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_3

    .line 361
    check-cast p1, Lio/netty/buffer/ByteBuf;

    .line 362
    invoke-static {p1}, Lio/netty/channel/unix/UnixChannelUtil;->isBufferCopyNeededForWrite(Lio/netty/buffer/ByteBuf;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->newDirectBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    :cond_2
    return-object p1

    .line 365
    :cond_3
    instance-of v0, p1, Lio/netty/channel/AddressedEnvelope;

    if-eqz v0, :cond_6

    .line 367
    move-object v0, p1

    check-cast v0, Lio/netty/channel/AddressedEnvelope;

    .line 368
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lio/netty/buffer/ByteBuf;

    if-eqz v1, :cond_6

    .line 369
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_6

    .line 371
    :cond_4
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/ByteBuf;

    .line 372
    invoke-static {p1}, Lio/netty/channel/unix/UnixChannelUtil;->isBufferCopyNeededForWrite(Lio/netty/buffer/ByteBuf;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lio/netty/channel/DefaultAddressedEnvelope;

    .line 374
    invoke-virtual {p0, v0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->newDirectBuffer(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, v0}, Lio/netty/channel/DefaultAddressedEnvelope;-><init>(Ljava/lang/Object;Ljava/net/SocketAddress;)V

    move-object v0, v1

    :cond_5
    return-object v0

    .line 378
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lio/netty/channel/kqueue/KQueueDatagramChannel;->EXPECTED_TYPES:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isActive()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->config:Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->getActiveOnOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->active:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->connected:Z

    return v0
.end method

.method public bridge synthetic isOpen()Z
    .locals 1

    .line 50
    invoke-super {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public joinGroup(Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 105
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->joinGroup(Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public joinGroup(Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    const/4 v1, 0x0

    .line 111
    invoke-virtual {p0, p1, v0, v1, p2}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 116
    invoke-interface {p2, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    return-object p2
.end method

.method public joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 137
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 0

    const-string p3, "multicastAddress"

    .line 146
    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "networkInterface"

    .line 150
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Multicast not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    return-object p4
.end method

.method public joinGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->joinGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public joinGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 131
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public leaveGroup(Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 159
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->leaveGroup(Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public leaveGroup(Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2

    .line 166
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    const/4 v1, 0x0

    .line 165
    invoke-virtual {p0, p1, v0, v1, p2}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 168
    invoke-interface {p2, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    return-object p2
.end method

.method public leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 189
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 0

    const-string p3, "multicastAddress"

    .line 197
    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "networkInterface"

    .line 200
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 203
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Multicast not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    return-object p4
.end method

.method public leaveGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 176
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->leaveGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public leaveGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 183
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public localAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 84
    invoke-super {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic localAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public metadata()Lio/netty/channel/ChannelMetadata;
    .locals 1

    .line 89
    sget-object v0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-object v0
.end method

.method protected bridge synthetic newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->newUnsafe()Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;

    move-result-object v0

    return-object v0
.end method

.method protected newUnsafe()Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;
    .locals 1

    .line 254
    new-instance v0, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;

    invoke-direct {v0, p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;-><init>(Lio/netty/channel/kqueue/KQueueDatagramChannel;)V

    return-object v0
.end method

.method public remoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 79
    invoke-super {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method
