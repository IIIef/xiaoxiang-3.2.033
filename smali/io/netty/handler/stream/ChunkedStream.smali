.class public Lio/netty/handler/stream/ChunkedStream;
.super Ljava/lang/Object;
.source "ChunkedStream.java"

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


# static fields
.field static final DEFAULT_CHUNK_SIZE:I = 0x2000


# instance fields
.field private final chunkSize:I

.field private closed:Z

.field private final in:Ljava/io/PushbackInputStream;

.field private offset:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/16 v0, 0x2000

    .line 48
    invoke-direct {p0, p1, v0}, Lio/netty/handler/stream/ChunkedStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "in"

    .line 59
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-lez p2, :cond_1

    .line 67
    instance-of v0, p1, Ljava/io/PushbackInputStream;

    if-eqz v0, :cond_0

    .line 68
    check-cast p1, Ljava/io/PushbackInputStream;

    iput-object p1, p0, Lio/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lio/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    .line 72
    :goto_0
    iput p2, p0, Lio/netty/handler/stream/ChunkedStream;->chunkSize:I

    return-void

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chunkSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (expected: a positive integer)"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lio/netty/handler/stream/ChunkedStream;->closed:Z

    .line 100
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    return-void
.end method

.method public isEndOfInput()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    iget-boolean v0, p0, Lio/netty/handler/stream/ChunkedStream;->closed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 88
    :cond_0
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    if-gez v0, :cond_1

    return v1

    .line 92
    :cond_1
    iget-object v1, p0, Lio/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    const/4 v0, 0x0

    return v0
.end method

.method public length()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public progress()J
    .locals 2

    .line 144
    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedStream;->offset:J

    return-wide v0
.end method

.method public readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lio/netty/handler/stream/ChunkedStream;->isEndOfInput()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 115
    :cond_0
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->available()I

    move-result v0

    if-gtz v0, :cond_1

    .line 118
    iget v0, p0, Lio/netty/handler/stream/ChunkedStream;->chunkSize:I

    goto :goto_0

    .line 120
    :cond_1
    iget v0, p0, Lio/netty/handler/stream/ChunkedStream;->chunkSize:I

    iget-object v1, p0, Lio/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->available()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 124
    :goto_0
    invoke-interface {p1, v0}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    .line 127
    :try_start_0
    iget-wide v1, p0, Lio/netty/handler/stream/ChunkedStream;->offset:J

    iget-object v3, p0, Lio/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {p1, v3, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/io/InputStream;I)I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/netty/handler/stream/ChunkedStream;->offset:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 132
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 134
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

    .line 106
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/netty/handler/stream/ChunkedStream;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

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

    .line 35
    invoke-virtual {p0, p1}, Lio/netty/handler/stream/ChunkedStream;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

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

    .line 35
    invoke-virtual {p0, p1}, Lio/netty/handler/stream/ChunkedStream;->readChunk(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public transferredBytes()J
    .locals 2

    .line 79
    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedStream;->offset:J

    return-wide v0
.end method
