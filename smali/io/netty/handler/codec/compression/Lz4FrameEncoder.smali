.class public Lio/netty/handler/codec/compression/Lz4FrameEncoder;
.super Lio/netty/handler/codec/MessageToByteEncoder;
.source "Lz4FrameEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToByteEncoder<",
        "Lio/netty/buffer/ByteBuf;",
        ">;"
    }
.end annotation


# static fields
.field static final DEFAULT_MAX_ENCODE_SIZE:I = 0x7fffffff

.field private static final ENCODE_FINSHED_EXCEPTION:Lio/netty/handler/codec/EncoderException;


# instance fields
.field private final blockSize:I

.field private buffer:Lio/netty/buffer/ByteBuf;

.field private final checksum:Lio/netty/handler/codec/compression/ByteBufChecksum;

.field private final compressionLevel:I

.field private final compressor:Lnet/jpountz/lz4/LZ4Compressor;

.field private volatile ctx:Lio/netty/channel/ChannelHandlerContext;

.field private volatile finished:Z

.field private final maxEncodeSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 72
    new-instance v0, Lio/netty/handler/codec/EncoderException;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "encode finished and not enough space to write remaining data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/netty/handler/codec/EncoderException;-><init>(Ljava/lang/Throwable;)V

    const-class v1, Lio/netty/handler/codec/compression/Lz4FrameEncoder;

    const-string v2, "encode"

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/EncoderException;

    sput-object v0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->ENCODE_FINSHED_EXCEPTION:Lio/netty/handler/codec/EncoderException;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lnet/jpountz/lz4/LZ4Factory;ZILjava/util/zip/Checksum;)V
    .locals 6

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 149
    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;-><init>(Lnet/jpountz/lz4/LZ4Factory;ZILjava/util/zip/Checksum;I)V

    return-void
.end method

.method public constructor <init>(Lnet/jpountz/lz4/LZ4Factory;ZILjava/util/zip/Checksum;I)V
    .locals 1

    .line 166
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToByteEncoder;-><init>()V

    const-string v0, "factory"

    .line 168
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "checksum"

    .line 171
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 174
    invoke-virtual {p1}, Lnet/jpountz/lz4/LZ4Factory;->highCompressor()Lnet/jpountz/lz4/LZ4Compressor;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/jpountz/lz4/LZ4Factory;->fastCompressor()Lnet/jpountz/lz4/LZ4Compressor;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->compressor:Lnet/jpountz/lz4/LZ4Compressor;

    .line 175
    invoke-static {p4}, Lio/netty/handler/codec/compression/ByteBufChecksum;->wrapChecksum(Ljava/util/zip/Checksum;)Lio/netty/handler/codec/compression/ByteBufChecksum;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->checksum:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 177
    invoke-static {p3}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->compressionLevel(I)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->compressionLevel:I

    .line 178
    iput p3, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->blockSize:I

    const-string p1, "maxEncodeSize"

    .line 179
    invoke-static {p5, p1}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->maxEncodeSize:I

    const/4 p1, 0x0

    .line 180
    iput-boolean p1, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->finished:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    .line 132
    invoke-static {}, Lnet/jpountz/lz4/LZ4Factory;->fastestInstance()Lnet/jpountz/lz4/LZ4Factory;

    move-result-object v0

    .line 133
    invoke-static {}, Lnet/jpountz/xxhash/XXHashFactory;->fastestInstance()Lnet/jpountz/xxhash/XXHashFactory;

    move-result-object v1

    const v2, -0x68b84d74

    invoke-virtual {v1, v2}, Lnet/jpountz/xxhash/XXHashFactory;->newStreamingHash32(I)Lnet/jpountz/xxhash/StreamingXXHash32;

    move-result-object v1

    invoke-virtual {v1}, Lnet/jpountz/xxhash/StreamingXXHash32;->asChecksum()Ljava/util/zip/Checksum;

    move-result-object v1

    const/high16 v2, 0x10000

    .line 132
    invoke-direct {p0, v0, p1, v2, v1}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;-><init>(Lnet/jpountz/lz4/LZ4Factory;ZILjava/util/zip/Checksum;)V

    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/codec/compression/Lz4FrameEncoder;)Lio/netty/channel/ChannelHandlerContext;
    .locals 0

    .line 71
    invoke-direct {p0}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->ctx()Lio/netty/channel/ChannelHandlerContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lio/netty/handler/codec/compression/Lz4FrameEncoder;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->finishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p0

    return-object p0
.end method

.method private allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;ZZ)Lio/netty/buffer/ByteBuf;
    .locals 4

    .line 204
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p2

    iget-object v0, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    add-int/2addr p2, v0

    if-ltz p2, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-lez p2, :cond_0

    .line 212
    iget v2, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->blockSize:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr p2, v2

    .line 215
    iget-object v3, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->compressor:Lnet/jpountz/lz4/LZ4Compressor;

    invoke-virtual {v3, v2}, Lnet/jpountz/lz4/LZ4Compressor;->maxCompressedLength(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    add-int/2addr v1, v2

    goto :goto_0

    .line 221
    :cond_0
    iget p2, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->maxEncodeSize:I

    if-gt v1, p2, :cond_3

    if-ltz v1, :cond_3

    if-eqz p4, :cond_1

    .line 226
    iget p2, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->blockSize:I

    if-ge v1, p2, :cond_1

    .line 227
    sget-object p1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object p1

    :cond_1
    if-eqz p3, :cond_2

    .line 231
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    invoke-interface {p1, v1, v1}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1

    .line 233
    :cond_2
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    invoke-interface {p1, v1, v1}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1

    .line 222
    :cond_3
    new-instance p1, Lio/netty/handler/codec/EncoderException;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 223
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    const/4 p3, 0x1

    iget p4, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->maxEncodeSize:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const-string p3, "requested encode buffer size (%d bytes) exceeds the maximum allowable size (%d bytes)"

    .line 222
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/netty/handler/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :cond_4
    new-instance p1, Lio/netty/handler/codec/EncoderException;

    const-string p2, "too much data to allocate a buffer for compression"

    invoke-direct {p1, p2}, Lio/netty/handler/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static compressionLevel(I)I
    .locals 6

    const/high16 v0, 0x2000000

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x40

    if-lt p0, v3, :cond_0

    if-gt p0, v0, :cond_0

    sub-int/2addr p0, v1

    .line 191
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x20

    add-int/lit8 p0, p0, -0xa

    .line 192
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 188
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 189
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v1

    const/4 p0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, p0

    const-string p0, "blockSize: %d (expected: %d-%d)"

    .line 188
    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private ctx()Lio/netty/channel/ChannelHandlerContext;
    .locals 2

    .line 400
    iget-object v0, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-eqz v0, :cond_0

    return-object v0

    .line 402
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not added to a pipeline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private finishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 4

    .line 318
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->finished:Z

    if-eqz v0, :cond_0

    .line 319
    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    return-object p2

    :cond_0
    const/4 v0, 0x1

    .line 322
    iput-boolean v0, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->finished:Z

    .line 324
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->compressor:Lnet/jpountz/lz4/LZ4Compressor;

    iget-object v2, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    .line 325
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/jpountz/lz4/LZ4Compressor;->maxCompressedLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    .line 324
    invoke-interface {v0, v1}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 326
    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->flushBufferedData(Lio/netty/buffer/ByteBuf;)V

    .line 328
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    const-wide v2, 0x4c5a34426c6f636bL    # 6.579441740982069E59

    .line 329
    invoke-virtual {v0, v1, v2, v3}, Lio/netty/buffer/ByteBuf;->setLong(IJ)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v2, v1, 0x8

    .line 330
    iget v3, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->compressionLevel:I

    or-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    invoke-virtual {v0, v2, v3}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v2, v1, 0x9

    const/4 v3, 0x0

    .line 331
    invoke-virtual {v0, v2, v3}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v2, v1, 0xd

    .line 332
    invoke-virtual {v0, v2, v3}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v2, v1, 0x11

    .line 333
    invoke-virtual {v0, v2, v3}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v1, v1, 0x15

    .line 335
    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 337
    invoke-interface {p1, v0, p2}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method private flushBufferedData(Lio/netty/buffer/ByteBuf;)V
    .locals 9

    .line 268
    iget-object v0, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->checksum:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-virtual {v1}, Lio/netty/handler/codec/compression/ByteBufChecksum;->reset()V

    .line 273
    iget-object v1, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->checksum:Lio/netty/handler/codec/compression/ByteBufChecksum;

    iget-object v2, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lio/netty/handler/codec/compression/ByteBufChecksum;->update(Lio/netty/buffer/ByteBuf;II)V

    .line 274
    iget-object v1, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->checksum:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-virtual {v1}, Lio/netty/handler/codec/compression/ByteBufChecksum;->getValue()J

    move-result-wide v1

    long-to-int v2, v1

    .line 276
    iget-object v1, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->compressor:Lnet/jpountz/lz4/LZ4Compressor;

    invoke-virtual {v1, v0}, Lnet/jpountz/lz4/LZ4Compressor;->maxCompressedLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    .line 277
    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 278
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    add-int/lit8 v3, v1, 0x15

    .line 281
    :try_start_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v4

    add-int/lit8 v4, v4, -0x15

    invoke-virtual {p1, v3, v4}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 282
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 284
    iget-object v6, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->compressor:Lnet/jpountz/lz4/LZ4Compressor;

    iget-object v7, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v8

    invoke-virtual {v7, v8, v0}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lnet/jpountz/lz4/LZ4Compressor;->compress(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 285
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4
    :try_end_0
    .catch Lnet/jpountz/lz4/LZ4Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v4, v5

    if-lt v4, v0, :cond_1

    const/16 v4, 0x10

    .line 293
    iget-object v5, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v5, v6, v0}, Lio/netty/buffer/ByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    move v5, v0

    goto :goto_0

    :cond_1
    const/16 v5, 0x20

    move v5, v4

    const/16 v4, 0x20

    :goto_0
    const-wide v6, 0x4c5a34426c6f636bL    # 6.579441740982069E59

    .line 298
    invoke-virtual {p1, v1, v6, v7}, Lio/netty/buffer/ByteBuf;->setLong(IJ)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v6, v1, 0x8

    .line 299
    iget v7, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->compressionLevel:I

    or-int/2addr v4, v7

    int-to-byte v4, v4

    invoke-virtual {p1, v6, v4}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v4, v1, 0x9

    .line 300
    invoke-virtual {p1, v4, v5}, Lio/netty/buffer/ByteBuf;->setIntLE(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v4, v1, 0xd

    .line 301
    invoke-virtual {p1, v4, v0}, Lio/netty/buffer/ByteBuf;->setIntLE(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v1, v1, 0x11

    .line 302
    invoke-virtual {p1, v1, v2}, Lio/netty/buffer/ByteBuf;->setIntLE(II)Lio/netty/buffer/ByteBuf;

    add-int/2addr v3, v5

    .line 303
    invoke-virtual {p1, v3}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 304
    iget-object p1, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->clear()Lio/netty/buffer/ByteBuf;

    return-void

    :catch_0
    move-exception p1

    .line 287
    new-instance v0, Lio/netty/handler/codec/compression/CompressionException;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/compression/CompressionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method protected allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Z)Lio/netty/buffer/ByteBuf;
    .locals 1

    const/4 v0, 0x1

    .line 198
    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;ZZ)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Z)Lio/netty/buffer/ByteBuf;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Z)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public close()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 353
    invoke-direct {p0}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->ctx()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 3

    .line 362
    invoke-direct {p0}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->ctx()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    .line 363
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 364
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->finishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1

    .line 367
    :cond_0
    new-instance v0, Lio/netty/handler/codec/compression/Lz4FrameEncoder$1;

    invoke-direct {v0, p0, p1}, Lio/netty/handler/codec/compression/Lz4FrameEncoder$1;-><init>(Lio/netty/handler/codec/compression/Lz4FrameEncoder;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v1, v0}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    return-object p1
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 380
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->finishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 381
    new-instance v1, Lio/netty/handler/codec/compression/Lz4FrameEncoder$2;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/handler/codec/compression/Lz4FrameEncoder$2;-><init>(Lio/netty/handler/codec/compression/Lz4FrameEncoder;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 388
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    new-instance v1, Lio/netty/handler/codec/compression/Lz4FrameEncoder$3;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/handler/codec/compression/Lz4FrameEncoder$3;-><init>(Lio/netty/handler/codec/compression/Lz4FrameEncoder;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    const-wide/16 p1, 0xa

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Lio/netty/util/concurrent/EventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method protected encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 246
    iget-boolean p1, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->finished:Z

    if-eqz p1, :cond_1

    .line 247
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p1

    invoke-virtual {p3, p1}, Lio/netty/buffer/ByteBuf;->isWritable(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 251
    invoke-virtual {p3, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    return-void

    .line 249
    :cond_0
    sget-object p1, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->ENCODE_FINSHED_EXCEPTION:Lio/netty/handler/codec/EncoderException;

    throw p1

    .line 255
    :cond_1
    iget-object p1, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    .line 257
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-lez v0, :cond_3

    .line 258
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 259
    invoke-virtual {p2, p1, v0}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 261
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isWritable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 262
    invoke-direct {p0, p3}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->flushBufferedData(Lio/netty/buffer/ByteBuf;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->isPreferDirect()Z

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;ZZ)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 311
    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->flushBufferedData(Lio/netty/buffer/ByteBuf;)V

    .line 312
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    .line 314
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method final getBackingBuffer()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 425
    iget-object v0, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 411
    iget p1, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->blockSize:I

    new-array p1, p1, [B

    invoke-static {p1}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    .line 412
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->clear()Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 417
    invoke-super {p0, p1}, Lio/netty/handler/codec/MessageToByteEncoder;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    .line 418
    iget-object p1, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    if-eqz p1, :cond_0

    .line 419
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->release()Z

    const/4 p1, 0x0

    .line 420
    iput-object p1, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    :cond_0
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 344
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->finished:Z

    return v0
.end method
