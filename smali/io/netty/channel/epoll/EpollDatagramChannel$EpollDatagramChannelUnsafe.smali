.class final Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;
.super Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;
.source "EpollDatagramChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/epoll/EpollDatagramChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EpollDatagramChannelUnsafe"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lio/netty/channel/epoll/EpollDatagramChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 434
    const-class v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    return-void
.end method

.method constructor <init>(Lio/netty/channel/epoll/EpollDatagramChannel;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;-><init>(Lio/netty/channel/epoll/AbstractEpollChannel;)V

    return-void
.end method


# virtual methods
.method epollInReady()V
    .locals 12

    .line 439
    iget-object v0, p0, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->config()Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    invoke-virtual {v1, v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->shouldBreakEpollInReady(Lio/netty/channel/ChannelConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->clearEpollIn0()V

    return-void

    .line 444
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->recvBufAllocHandle()Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;

    move-result-object v1

    .line 445
    iget-object v2, p0, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    sget v3, Lio/netty/channel/epoll/Native;->EPOLLET:I

    invoke-virtual {v2, v3}, Lio/netty/channel/epoll/EpollDatagramChannel;->isFlagSet(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->edgeTriggered(Z)V

    .line 447
    iget-object v2, p0, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    invoke-virtual {v2}, Lio/netty/channel/epoll/EpollDatagramChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    .line 448
    invoke-interface {v0}, Lio/netty/channel/socket/DatagramChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v3

    .line 449
    invoke-virtual {v1, v0}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->reset(Lio/netty/channel/ChannelConfig;)V

    .line 450
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->epollInBefore()V

    const/4 v4, 0x0

    .line 456
    :try_start_0
    iget-object v5, p0, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    invoke-virtual {v5}, Lio/netty/channel/epoll/EpollDatagramChannel;->isConnected()Z

    move-result v5

    .line 458
    :cond_1
    invoke-virtual {v1, v3}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 459
    :try_start_1
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v7

    invoke-virtual {v1, v7}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->attemptedBytesRead(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_4

    .line 464
    :try_start_2
    iget-object v7, p0, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    invoke-virtual {v7, v6}, Lio/netty/channel/epoll/EpollDatagramChannel;->doReadBytes(Lio/netty/buffer/ByteBuf;)I

    move-result v7

    invoke-virtual {v1, v7}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->lastBytesRead(I)V
    :try_end_2
    .catch Lio/netty/channel/unix/Errors$NativeIoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 474
    :try_start_3
    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->lastBytesRead()I

    move-result v7

    if-gtz v7, :cond_2

    .line 476
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->release()Z

    goto/16 :goto_3

    .line 480
    :cond_2
    new-instance v7, Lio/netty/channel/socket/DatagramPacket;

    .line 481
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->localAddress()Ljava/net/SocketAddress;

    move-result-object v8

    check-cast v8, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v9

    check-cast v9, Ljava/net/InetSocketAddress;

    invoke-direct {v7, v6, v8, v9}, Lio/netty/channel/socket/DatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    goto/16 :goto_1

    :catch_0
    move-exception v3

    .line 467
    invoke-virtual {v3}, Lio/netty/channel/unix/Errors$NativeIoException;->expectedErr()I

    move-result v4

    sget v5, Lio/netty/channel/unix/Errors;->ERROR_ECONNREFUSED_NEGATIVE:I

    if-ne v4, v5, :cond_3

    .line 468
    new-instance v4, Ljava/net/PortUnreachableException;

    invoke-virtual {v3}, Lio/netty/channel/unix/Errors$NativeIoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v4, v3}, Ljava/net/PortUnreachableException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 470
    throw v4

    .line 472
    :cond_3
    throw v3

    .line 484
    :cond_4
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 486
    iget-object v7, p0, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v7, v7, Lio/netty/channel/epoll/EpollDatagramChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v8

    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v10

    .line 487
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v11

    .line 486
    invoke-virtual {v7, v8, v9, v10, v11}, Lio/netty/channel/epoll/LinuxSocket;->recvFromAddress(JII)Lio/netty/channel/unix/DatagramSocketAddress;

    move-result-object v7

    goto :goto_0

    .line 490
    :cond_5
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v7

    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v8

    .line 489
    invoke-virtual {v6, v7, v8}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 491
    iget-object v8, p0, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v8, v8, Lio/netty/channel/epoll/EpollDatagramChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    invoke-virtual {v8, v7, v9, v10}, Lio/netty/channel/epoll/LinuxSocket;->recvFrom(Ljava/nio/ByteBuffer;II)Lio/netty/channel/unix/DatagramSocketAddress;

    move-result-object v7

    :goto_0
    if-nez v7, :cond_6

    const/4 v3, -0x1

    .line 495
    invoke-virtual {v1, v3}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 496
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->release()Z

    goto :goto_3

    .line 500
    :cond_6
    invoke-virtual {v7}, Lio/netty/channel/unix/DatagramSocketAddress;->localAddress()Lio/netty/channel/unix/DatagramSocketAddress;

    move-result-object v8

    if-nez v8, :cond_7

    .line 502
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->localAddress()Ljava/net/SocketAddress;

    move-result-object v8

    check-cast v8, Ljava/net/InetSocketAddress;

    .line 504
    :cond_7
    invoke-virtual {v7}, Lio/netty/channel/unix/DatagramSocketAddress;->receivedAmount()I

    move-result v9

    invoke-virtual {v1, v9}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 505
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v9

    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->lastBytesRead()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v6, v9}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 507
    new-instance v9, Lio/netty/channel/socket/DatagramPacket;

    invoke-direct {v9, v6, v8, v7}, Lio/netty/channel/socket/DatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    move-object v7, v9

    :goto_1
    const/4 v8, 0x1

    .line 510
    invoke-virtual {v1, v8}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->incMessagesRead(I)V

    const/4 v8, 0x0

    .line 512
    iput-boolean v8, p0, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->readPending:Z

    .line 513
    invoke-interface {v2, v7}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 516
    :try_start_4
    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->continueReading()Z

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v6, :cond_1

    goto :goto_3

    :catchall_0
    move-exception v3

    goto :goto_2

    :catchall_1
    move-exception v3

    move-object v6, v4

    :goto_2
    move-object v4, v3

    if-eqz v6, :cond_8

    .line 519
    :try_start_5
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->release()Z

    goto :goto_3

    :catchall_2
    move-exception v1

    goto :goto_4

    .line 524
    :cond_8
    :goto_3
    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->readComplete()V

    .line 525
    invoke-interface {v2}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    if-eqz v4, :cond_9

    .line 528
    invoke-interface {v2, v4}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 531
    :cond_9
    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->epollInFinally(Lio/netty/channel/ChannelConfig;)V

    return-void

    :goto_4
    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->epollInFinally(Lio/netty/channel/ChannelConfig;)V

    .line 532
    throw v1
.end method
