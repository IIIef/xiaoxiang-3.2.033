.class public Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "HAProxyMessageDecoder.java"


# static fields
.field private static final BINARY_PREFIX:[B

.field private static final BINARY_PREFIX_LENGTH:I

.field private static final DELIMITER_LENGTH:I = 0x2

.field private static final DETECTION_RESULT_V1:Lio/netty/handler/codec/ProtocolDetectionResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/ProtocolDetectionResult<",
            "Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;",
            ">;"
        }
    .end annotation
.end field

.field private static final DETECTION_RESULT_V2:Lio/netty/handler/codec/ProtocolDetectionResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/ProtocolDetectionResult<",
            "Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEXT_PREFIX:[B

.field private static final V1_MAX_LENGTH:I = 0x6c

.field private static final V2_MAX_LENGTH:I = 0x1000f

.field private static final V2_MAX_TLV:I = 0xff27

.field private static final V2_MIN_LENGTH:I = 0xe8


# instance fields
.field private discardedBytes:I

.field private discarding:Z

.field private finished:Z

.field private final v2MaxHeaderSize:I

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 61
    fill-array-data v0, :array_0

    sput-object v0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->BINARY_PREFIX:[B

    const/4 v1, 0x5

    new-array v1, v1, [B

    .line 76
    fill-array-data v1, :array_1

    sput-object v1, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->TEXT_PREFIX:[B

    .line 87
    array-length v0, v0

    sput v0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->BINARY_PREFIX_LENGTH:I

    .line 92
    sget-object v0, Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;->V1:Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;

    .line 93
    invoke-static {v0}, Lio/netty/handler/codec/ProtocolDetectionResult;->detected(Ljava/lang/Object;)Lio/netty/handler/codec/ProtocolDetectionResult;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->DETECTION_RESULT_V1:Lio/netty/handler/codec/ProtocolDetectionResult;

    .line 98
    sget-object v0, Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;->V2:Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;

    .line 99
    invoke-static {v0}, Lio/netty/handler/codec/ProtocolDetectionResult;->detected(Ljava/lang/Object;)Lio/netty/handler/codec/ProtocolDetectionResult;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->DETECTION_RESULT_V2:Lio/netty/handler/codec/ProtocolDetectionResult;

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
        0xdt
        0xat
        0x0t
        0xdt
        0xat
        0x51t
        0x55t
        0x49t
        0x54t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x50t
        0x52t
        0x4ft
        0x58t
        0x59t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 130
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    const/4 v0, -0x1

    .line 119
    iput v0, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->version:I

    const v0, 0x1000f

    .line 131
    iput v0, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->v2MaxHeaderSize:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 144
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    const/4 v0, -0x1

    .line 119
    iput v0, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->version:I

    const/16 v0, 0xe8

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 146
    iput v0, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->v2MaxHeaderSize:I

    goto :goto_0

    :cond_0
    const v1, 0xff27

    const v2, 0x1000f

    if-le p1, v1, :cond_1

    .line 148
    iput v2, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->v2MaxHeaderSize:I

    goto :goto_0

    :cond_1
    add-int/2addr p1, v0

    if-le p1, v2, :cond_2

    .line 152
    iput v2, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->v2MaxHeaderSize:I

    goto :goto_0

    .line 154
    :cond_2
    iput p1, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->v2MaxHeaderSize:I

    :goto_0
    return-void
.end method

.method private decodeLine(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 313
    invoke-static {p2}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->findEndOfLine(Lio/netty/buffer/ByteBuf;)I

    move-result v0

    .line 314
    iget-boolean v1, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->discarding:Z

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v1, :cond_3

    const/16 v1, 0x6c

    if-ltz v0, :cond_1

    .line 316
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    sub-int v2, v0, v2

    if-le v2, v1, :cond_0

    add-int/2addr v0, v3

    .line 318
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 319
    invoke-direct {p0, p1, v2}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->failOverLimit(Lio/netty/channel/ChannelHandlerContext;I)V

    return-object v4

    .line 322
    :cond_0
    invoke-virtual {p2, v2}, Lio/netty/buffer/ByteBuf;->readSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    .line 323
    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    return-object p1

    .line 326
    :cond_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 328
    iput v0, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->discardedBytes:I

    .line 329
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 330
    iput-boolean v2, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->discarding:Z

    .line 331
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "over "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->discardedBytes:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->failOverLimit(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    :cond_2
    return-object v4

    :cond_3
    if-ltz v0, :cond_5

    .line 337
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result p1

    const/16 v1, 0xd

    if-ne p1, v1, :cond_4

    const/4 v2, 0x2

    :cond_4
    add-int/2addr v0, v2

    .line 338
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    const/4 p1, 0x0

    .line 339
    iput p1, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->discardedBytes:I

    .line 340
    iput-boolean p1, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->discarding:Z

    goto :goto_0

    .line 342
    :cond_5
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->discardedBytes:I

    .line 343
    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    :goto_0
    return-object v4
.end method

.method private decodeStruct(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 270
    invoke-static {p2}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->findEndOfHeader(Lio/netty/buffer/ByteBuf;)I

    move-result v0

    .line 271
    iget-boolean v1, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->discarding:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3

    if-ltz v0, :cond_1

    .line 273
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    sub-int v1, v0, v1

    .line 274
    iget v3, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->v2MaxHeaderSize:I

    if-le v1, v3, :cond_0

    .line 275
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 276
    invoke-direct {p0, p1, v1}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->failOverLimit(Lio/netty/channel/ChannelHandlerContext;I)V

    return-object v2

    .line 279
    :cond_0
    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->readSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1

    .line 281
    :cond_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 282
    iget v1, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->v2MaxHeaderSize:I

    if-le v0, v1, :cond_2

    .line 283
    iput v0, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->discardedBytes:I

    .line 284
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    const/4 p2, 0x1

    .line 285
    iput-boolean p2, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->discarding:Z

    .line 286
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "over "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->discardedBytes:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->failOverLimit(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    :cond_2
    return-object v2

    :cond_3
    if-ltz v0, :cond_4

    .line 292
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    const/4 p1, 0x0

    .line 293
    iput p1, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->discardedBytes:I

    .line 294
    iput-boolean p1, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->discarding:Z

    goto :goto_0

    .line 296
    :cond_4
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->discardedBytes:I

    .line 297
    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    :goto_0
    return-object v2
.end method

.method public static detectProtocol(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/ProtocolDetectionResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            ")",
            "Lio/netty/handler/codec/ProtocolDetectionResult<",
            "Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;",
            ">;"
        }
    .end annotation

    .line 378
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 379
    invoke-static {}, Lio/netty/handler/codec/ProtocolDetectionResult;->needsMoreData()Lio/netty/handler/codec/ProtocolDetectionResult;

    move-result-object p0

    return-object p0

    .line 382
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    .line 384
    sget-object v1, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->BINARY_PREFIX:[B

    invoke-static {v1, p0, v0}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->match([BLio/netty/buffer/ByteBuf;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 385
    sget-object p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->DETECTION_RESULT_V2:Lio/netty/handler/codec/ProtocolDetectionResult;

    return-object p0

    .line 387
    :cond_1
    sget-object v1, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->TEXT_PREFIX:[B

    invoke-static {v1, p0, v0}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->match([BLio/netty/buffer/ByteBuf;I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 388
    sget-object p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->DETECTION_RESULT_V1:Lio/netty/handler/codec/ProtocolDetectionResult;

    return-object p0

    .line 390
    :cond_2
    invoke-static {}, Lio/netty/handler/codec/ProtocolDetectionResult;->invalid()Lio/netty/handler/codec/ProtocolDetectionResult;

    move-result-object p0

    return-object p0
.end method

.method private fail(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x1

    .line 359
    iput-boolean v0, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->finished:Z

    .line 360
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    new-instance p1, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;

    invoke-direct {p1, p2, p3}, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    .line 367
    new-instance p1, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;

    invoke-direct {p1, p3}, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 369
    :cond_2
    new-instance p1, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;

    invoke-direct {p1}, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;-><init>()V

    goto :goto_1

    .line 365
    :cond_3
    new-instance p1, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;

    invoke-direct {p1, p2}, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;-><init>(Ljava/lang/String;)V

    .line 371
    :goto_1
    throw p1
.end method

.method private failOverLimit(Lio/netty/channel/ChannelHandlerContext;I)V
    .locals 0

    .line 350
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->failOverLimit(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    return-void
.end method

.method private failOverLimit(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V
    .locals 3

    .line 354
    iget v0, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->version:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x6c

    goto :goto_0

    :cond_0
    iget v0, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->v2MaxHeaderSize:I

    .line 355
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "header length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") exceeds the allowed maximum ("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->fail(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private static findEndOfHeader(Lio/netty/buffer/ByteBuf;)I
    .locals 4

    .line 179
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    return v1

    .line 186
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0xe

    .line 189
    invoke-virtual {p0, v3}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result p0

    add-int/2addr p0, v2

    if-lt v0, p0, :cond_1

    return p0

    :cond_1
    return v1
.end method

.method private static findEndOfLine(Lio/netty/buffer/ByteBuf;)I
    .locals 4

    .line 204
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    .line 205
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 206
    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 207
    invoke-virtual {p0, v2}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static findVersion(Lio/netty/buffer/ByteBuf;)I
    .locals 2

    .line 164
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 170
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    .line 171
    sget-object v1, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->BINARY_PREFIX:[B

    invoke-static {v1, p0, v0}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->match([BLio/netty/buffer/ByteBuf;I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->BINARY_PREFIX_LENGTH:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private static match([BLio/netty/buffer/ByteBuf;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 394
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    add-int v2, p2, v1

    .line 395
    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v2

    .line 396
    aget-byte v3, p0, v1

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/ByteToMessageDecoder;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 224
    iget-boolean p2, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->finished:Z

    if-eqz p2, :cond_0

    .line 225
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    :cond_0
    return-void
.end method

.method protected final decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 2
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

    .line 232
    iget v0, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->version:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 233
    invoke-static {p2}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->findVersion(Lio/netty/buffer/ByteBuf;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->version:I

    if-ne v0, v1, :cond_0

    return-void

    .line 240
    :cond_0
    iget v0, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->version:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 241
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->decodeLine(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object p2

    goto :goto_0

    .line 243
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->decodeStruct(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_3

    .line 247
    iput-boolean v1, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->finished:Z

    .line 249
    :try_start_0
    iget v0, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->version:I

    if-ne v0, v1, :cond_2

    .line 250
    sget-object v0, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/netty/handler/codec/haproxy/HAProxyMessage;->decodeHeader(Ljava/lang/String;)Lio/netty/handler/codec/haproxy/HAProxyMessage;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 252
    :cond_2
    invoke-static {p2}, Lio/netty/handler/codec/haproxy/HAProxyMessage;->decodeHeader(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/haproxy/HAProxyMessage;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lio/netty/handler/codec/haproxy/HAProxyProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const/4 p3, 0x0

    .line 255
    invoke-direct {p0, p1, p3, p2}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->fail(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public isSingleDecode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
