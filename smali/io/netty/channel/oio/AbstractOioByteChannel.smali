.class public abstract Lio/netty/channel/oio/AbstractOioByteChannel;
.super Lio/netty/channel/oio/AbstractOioChannel;
.source "AbstractOioByteChannel.java"


# static fields
.field private static final EXPECTED_TYPES:Ljava/lang/String;

.field private static final METADATA:Lio/netty/channel/ChannelMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lio/netty/channel/ChannelMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/channel/ChannelMetadata;-><init>(Z)V

    sput-object v0, Lio/netty/channel/oio/AbstractOioByteChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lio/netty/buffer/ByteBuf;

    .line 44
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lio/netty/channel/FileRegion;

    .line 45
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/channel/oio/AbstractOioByteChannel;->EXPECTED_TYPES:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lio/netty/channel/Channel;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lio/netty/channel/oio/AbstractOioChannel;-><init>(Lio/netty/channel/Channel;)V

    return-void
.end method

.method private closeOnRead(Lio/netty/channel/ChannelPipeline;)V
    .locals 3

    .line 72
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v1

    sget-object v2, Lio/netty/channel/ChannelOption;->ALLOW_HALF_CLOSURE:Lio/netty/channel/ChannelOption;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->shutdownInput()Lio/netty/channel/ChannelFuture;

    .line 75
    sget-object v0, Lio/netty/channel/socket/ChannelInputShutdownEvent;->INSTANCE:Lio/netty/channel/socket/ChannelInputShutdownEvent;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel$Unsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/channel/Channel$Unsafe;->close(Lio/netty/channel/ChannelPromise;)V

    .line 79
    :goto_0
    sget-object v0, Lio/netty/channel/socket/ChannelInputShutdownReadComplete;->INSTANCE:Lio/netty/channel/socket/ChannelInputShutdownReadComplete;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    :cond_1
    return-void
.end method

.method private handleReadException(Lio/netty/channel/ChannelPipeline;Lio/netty/buffer/ByteBuf;Ljava/lang/Throwable;ZLio/netty/channel/RecvByteBufAllocator$Handle;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 86
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lio/netty/channel/oio/AbstractOioByteChannel;->readPending:Z

    .line 88
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 93
    :cond_1
    :goto_0
    invoke-interface {p5}, Lio/netty/channel/RecvByteBufAllocator$Handle;->readComplete()V

    .line 94
    invoke-interface {p1}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 95
    invoke-interface {p1, p3}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    if-nez p4, :cond_2

    .line 96
    instance-of p2, p3, Ljava/io/IOException;

    if-eqz p2, :cond_3

    .line 97
    :cond_2
    invoke-direct {p0, p1}, Lio/netty/channel/oio/AbstractOioByteChannel;->closeOnRead(Lio/netty/channel/ChannelPipeline;)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected abstract available()I
.end method

.method protected doRead()V
    .locals 12

    .line 103
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->isInputShutdown()Z

    move-result v1

    if-nez v1, :cond_12

    iget-boolean v1, p0, Lio/netty/channel/oio/AbstractOioByteChannel;->readPending:Z

    if-nez v1, :cond_0

    goto/16 :goto_b

    :cond_0
    const/4 v1, 0x0

    .line 111
    iput-boolean v1, p0, Lio/netty/channel/oio/AbstractOioByteChannel;->readPending:Z

    .line 113
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v3

    .line 114
    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    .line 115
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/channel/Channel$Unsafe;->recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v7

    .line 116
    invoke-interface {v7, v0}, Lio/netty/channel/RecvByteBufAllocator$Handle;->reset(Lio/netty/channel/ChannelConfig;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 122
    :try_start_0
    invoke-interface {v7, v2}, Lio/netty/channel/RecvByteBufAllocator$Handle;->allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v8, 0x0

    .line 124
    :goto_0
    :try_start_1
    invoke-virtual {p0, v6}, Lio/netty/channel/oio/AbstractOioByteChannel;->doReadBytes(Lio/netty/buffer/ByteBuf;)I

    move-result v9

    invoke-interface {v7, v9}, Lio/netty/channel/RecvByteBufAllocator$Handle;->lastBytesRead(I)V

    .line 125
    invoke-interface {v7}, Lio/netty/channel/RecvByteBufAllocator$Handle;->lastBytesRead()I

    move-result v9

    if-gtz v9, :cond_4

    .line 126
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 127
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 129
    :try_start_2
    invoke-interface {v7}, Lio/netty/channel/RecvByteBufAllocator$Handle;->lastBytesRead()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    .line 132
    :try_start_3
    iput-boolean v1, p0, Lio/netty/channel/oio/AbstractOioByteChannel;->readPending:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    move-object v6, v5

    goto :goto_4

    :catchall_0
    move-exception v2

    move-object v4, v5

    move v1, v8

    goto/16 :goto_8

    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    .line 140
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->available()I

    move-result v8

    if-gtz v8, :cond_5

    :goto_2
    const/4 v4, 0x0

    const/4 v8, 0x1

    goto :goto_4

    .line 146
    :cond_5
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->isWritable()Z

    move-result v9

    if-nez v9, :cond_8

    .line 147
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v9

    .line 148
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->maxCapacity()I

    move-result v10

    if-ne v9, v10, :cond_6

    .line 150
    invoke-interface {v7, v4}, Lio/netty/channel/RecvByteBufAllocator$Handle;->incMessagesRead(I)V

    .line 151
    iput-boolean v1, p0, Lio/netty/channel/oio/AbstractOioByteChannel;->readPending:Z

    .line 152
    invoke-interface {v3, v6}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 153
    invoke-interface {v7, v2}, Lio/netty/channel/RecvByteBufAllocator$Handle;->allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v6

    goto :goto_3

    .line 155
    :cond_6
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v9

    add-int/2addr v9, v8

    if-le v9, v10, :cond_7

    .line 157
    invoke-virtual {v6, v10}, Lio/netty/buffer/ByteBuf;->capacity(I)Lio/netty/buffer/ByteBuf;

    goto :goto_3

    .line 159
    :cond_7
    invoke-virtual {v6, v8}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 163
    :cond_8
    :goto_3
    invoke-interface {v7}, Lio/netty/channel/RecvByteBufAllocator$Handle;->continueReading()Z

    move-result v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v8, :cond_d

    goto :goto_2

    :goto_4
    if-eqz v6, :cond_a

    .line 168
    :try_start_5
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 169
    iput-boolean v1, p0, Lio/netty/channel/oio/AbstractOioByteChannel;->readPending:Z

    .line 170
    invoke-interface {v3, v6}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    goto :goto_5

    .line 172
    :cond_9
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v5, v1

    move v1, v8

    move-object v11, v6

    move v6, v4

    move-object v4, v11

    goto :goto_9

    :cond_a
    move-object v5, v6

    :goto_5
    if-eqz v8, :cond_b

    .line 178
    :try_start_6
    invoke-interface {v7}, Lio/netty/channel/RecvByteBufAllocator$Handle;->readComplete()V

    .line 179
    invoke-interface {v3}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    goto :goto_6

    :catchall_2
    move-exception v1

    move v6, v4

    move-object v4, v5

    move-object v5, v1

    move v1, v8

    goto :goto_9

    :cond_b
    :goto_6
    if-eqz v4, :cond_c

    .line 183
    invoke-direct {p0, v3}, Lio/netty/channel/oio/AbstractOioByteChannel;->closeOnRead(Lio/netty/channel/ChannelPipeline;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 188
    :cond_c
    iget-boolean v1, p0, Lio/netty/channel/oio/AbstractOioByteChannel;->readPending:Z

    if-nez v1, :cond_e

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_e

    if-nez v8, :cond_f

    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_a

    :cond_d
    const/4 v8, 0x1

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    move-object v5, v2

    move-object v4, v6

    const/4 v1, 0x1

    goto :goto_7

    :catchall_4
    move-exception v2

    move-object v5, v2

    move-object v4, v6

    move v1, v8

    :goto_7
    const/4 v6, 0x0

    goto :goto_9

    :catchall_5
    move-exception v2

    move-object v4, v5

    :goto_8
    const/4 v6, 0x0

    move-object v5, v2

    :goto_9
    move-object v2, p0

    .line 186
    :try_start_7
    invoke-direct/range {v2 .. v7}, Lio/netty/channel/oio/AbstractOioByteChannel;->handleReadException(Lio/netty/channel/ChannelPipeline;Lio/netty/buffer/ByteBuf;Ljava/lang/Throwable;ZLio/netty/channel/RecvByteBufAllocator$Handle;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 188
    iget-boolean v2, p0, Lio/netty/channel/oio/AbstractOioByteChannel;->readPending:Z

    if-nez v2, :cond_e

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_e

    if-nez v1, :cond_f

    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 191
    :cond_e
    :goto_a
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->read()Lio/netty/channel/Channel;

    :cond_f
    return-void

    :catchall_6
    move-exception v2

    .line 188
    iget-boolean v3, p0, Lio/netty/channel/oio/AbstractOioByteChannel;->readPending:Z

    if-nez v3, :cond_10

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_10

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 191
    :cond_10
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->read()Lio/netty/channel/Channel;

    .line 193
    :cond_11
    throw v2

    :cond_12
    :goto_b
    return-void
.end method

.method protected abstract doReadBytes(Lio/netty/buffer/ByteBuf;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected doWrite(Lio/netty/channel/ChannelOutboundBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 199
    :goto_0
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    instance-of v1, v0, Lio/netty/buffer/ByteBuf;

    if-eqz v1, :cond_2

    .line 205
    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 206
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    :goto_1
    if-lez v1, :cond_1

    .line 208
    invoke-virtual {p0, v0}, Lio/netty/channel/oio/AbstractOioByteChannel;->doWriteBytes(Lio/netty/buffer/ByteBuf;)V

    .line 209
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-long v3, v1

    .line 210
    invoke-virtual {p1, v3, v4}, Lio/netty/channel/ChannelOutboundBuffer;->progress(J)V

    move v1, v2

    goto :goto_1

    .line 213
    :cond_1
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    goto :goto_0

    .line 214
    :cond_2
    instance-of v1, v0, Lio/netty/channel/FileRegion;

    if-eqz v1, :cond_3

    .line 215
    check-cast v0, Lio/netty/channel/FileRegion;

    .line 216
    invoke-interface {v0}, Lio/netty/channel/FileRegion;->transferred()J

    move-result-wide v1

    .line 217
    invoke-virtual {p0, v0}, Lio/netty/channel/oio/AbstractOioByteChannel;->doWriteFileRegion(Lio/netty/channel/FileRegion;)V

    .line 218
    invoke-interface {v0}, Lio/netty/channel/FileRegion;->transferred()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Lio/netty/channel/ChannelOutboundBuffer;->progress(J)V

    .line 219
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    goto :goto_0

    .line 221
    :cond_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-static {v0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p1, v1}, Lio/netty/channel/ChannelOutboundBuffer;->remove(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method protected abstract doWriteBytes(Lio/netty/buffer/ByteBuf;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doWriteFileRegion(Lio/netty/channel/FileRegion;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final filterOutboundMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 229
    instance-of v0, p1, Lio/netty/buffer/ByteBuf;

    if-nez v0, :cond_1

    instance-of v0, p1, Lio/netty/channel/FileRegion;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lio/netty/channel/oio/AbstractOioByteChannel;->EXPECTED_TYPES:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method protected abstract isInputShutdown()Z
.end method

.method public metadata()Lio/netty/channel/ChannelMetadata;
    .locals 1

    .line 56
    sget-object v0, Lio/netty/channel/oio/AbstractOioByteChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-object v0
.end method

.method protected abstract shutdownInput()Lio/netty/channel/ChannelFuture;
.end method
