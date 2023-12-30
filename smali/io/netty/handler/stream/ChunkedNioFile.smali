.class public Lio/netty/handler/stream/ChunkedNioFile;
.super Ljava/lang/Object;
.source "ChunkedNioFile.java"

# interfaces
.implements Lio/netty/handler/stream/ChunkedInput;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/handler/stream/ChunkedInput<",
        "Lio/netty/buffer/ByteBuf;",
        ">;"
    }
.end annotation


# instance fields
.field private final chunkSize:I

.field private final endOffset:J

.field private final in:Ljava/nio/channels/FileChannel;

.field private offset:J

.field private final startOffset:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/netty/handler/stream/ChunkedNioFile;-><init>(Ljava/nio/channels/FileChannel;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lio/netty/handler/stream/ChunkedNioFile;-><init>(Ljava/nio/channels/FileChannel;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    .line 65
    invoke-direct {p0, p1, v0}, Lio/netty/handler/stream/ChunkedNioFile;-><init>(Ljava/nio/channels/FileChannel;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/stream/ChunkedNioFile;-><init>(Ljava/nio/channels/FileChannel;JJI)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;JJI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "in"

    .line 89
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, " (expected: 0 or greater)"

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_3

    cmp-long v4, p4, v1

    if-ltz v4, :cond_2

    if-lez p6, :cond_1

    if-eqz v3, :cond_0

    .line 106
    invoke-virtual {p1, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 108
    :cond_0
    iput-object p1, p0, Lio/netty/handler/stream/ChunkedNioFile;->in:Ljava/nio/channels/FileChannel;

    .line 109
    iput p6, p0, Lio/netty/handler/stream/ChunkedNioFile;->chunkSize:I

    .line 110
    iput-wide p2, p0, Lio/netty/handler/stream/ChunkedNioFile;->startOffset:J

    iput-wide p2, p0, Lio/netty/handler/stream/ChunkedNioFile;->offset:J

    add-long/2addr p2, p4

    .line 111
    iput-wide p2, p0, Lio/netty/handler/stream/ChunkedNioFile;->endOffset:J

    return-void

    .line 100
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "chunkSize: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " (expected: a positive integer)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "length: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "offset: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedNioFile;->in:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    return-void
.end method

.method public currentOffset()J
    .locals 2

    .line 132
    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedNioFile;->offset:J

    return-wide v0
.end method

.method public endOffset()J
    .locals 2

    .line 125
    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedNioFile;->endOffset:J

    return-wide v0
.end method

.method public isEndOfInput()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 137
    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedNioFile;->offset:J

    iget-wide v2, p0, Lio/netty/handler/stream/ChunkedNioFile;->endOffset:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    iget-object v0, p0, Lio/netty/handler/stream/ChunkedNioFile;->in:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public length()J
    .locals 4

    .line 185
    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedNioFile;->endOffset:J

    iget-wide v2, p0, Lio/netty/handler/stream/ChunkedNioFile;->startOffset:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public progress()J
    .locals 4

    .line 190
    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedNioFile;->offset:J

    iget-wide v2, p0, Lio/netty/handler/stream/ChunkedNioFile;->startOffset:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 153
    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedNioFile;->offset:J

    .line 154
    iget-wide v2, p0, Lio/netty/handler/stream/ChunkedNioFile;->endOffset:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 158
    :cond_0
    iget v4, p0, Lio/netty/handler/stream/ChunkedNioFile;->chunkSize:I

    int-to-long v4, v4

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 159
    invoke-interface {p1, v1}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    const/4 v0, 0x0

    .line 164
    :cond_1
    :try_start_0
    iget-object v2, p0, Lio/netty/handler/stream/ChunkedNioFile;->in:Ljava/nio/channels/FileChannel;

    sub-int v3, v1, v0

    invoke-virtual {p1, v2, v3}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/nio/channels/ScatteringByteChannel;I)I

    move-result v2

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    add-int/2addr v0, v2

    if-ne v0, v1, :cond_1

    .line 173
    :goto_0
    iget-wide v1, p0, Lio/netty/handler/stream/ChunkedNioFile;->offset:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/netty/handler/stream/ChunkedNioFile;->offset:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 178
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 180
    throw v0
.end method

.method public readChunk(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/buffer/ByteBuf;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/netty/handler/stream/ChunkedNioFile;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readChunk(Lio/netty/buffer/ByteBufAllocator;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/handler/stream/ChunkedNioFile;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readChunk(Lio/netty/channel/ChannelHandlerContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/handler/stream/ChunkedNioFile;->readChunk(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public startOffset()J
    .locals 2

    .line 118
    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedNioFile;->startOffset:J

    return-wide v0
.end method
