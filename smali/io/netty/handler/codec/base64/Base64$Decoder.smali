.class final Lio/netty/handler/codec/base64/Base64$Decoder;
.super Ljava/lang/Object;
.source "Base64.java"

# interfaces
.implements Lio/netty/util/ByteProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/base64/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Decoder"
.end annotation


# instance fields
.field private final b4:[B

.field private b4Posn:I

.field private decodabet:[B

.field private dest:Lio/netty/buffer/ByteBuf;

.field private outBuffPosn:I

.field private sbiCrop:B

.field private sbiDecode:B


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 332
    iput-object v0, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->b4:[B

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/codec/base64/Base64$1;)V
    .locals 0

    .line 331
    invoke-direct {p0}, Lio/netty/handler/codec/base64/Base64$Decoder;-><init>()V

    return-void
.end method

.method private static decode4to3([BLio/netty/buffer/ByteBuf;I[B)I
    .locals 8

    const/4 v0, 0x0

    .line 379
    aget-byte v0, p0, v0

    const/4 v1, 0x1

    .line 380
    aget-byte v2, p0, v1

    const/4 v3, 0x2

    .line 381
    aget-byte v4, p0, v3

    const/16 v5, 0x3d

    const-string v6, "not encoded in Base64"

    if-ne v4, v5, :cond_0

    .line 386
    :try_start_0
    aget-byte p0, p3, v0

    and-int/lit16 p0, p0, 0xff

    shl-int/2addr p0, v3

    aget-byte p3, p3, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p3, p3, 0xff

    ushr-int/lit8 p3, p3, 0x4

    or-int/2addr p0, p3

    .line 390
    invoke-virtual {p1, p2, p0}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    return v1

    .line 388
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v1, 0x3

    .line 394
    aget-byte p0, p0, v1

    if-ne p0, v5, :cond_2

    .line 397
    aget-byte p0, p3, v2

    .line 400
    :try_start_1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 403
    aget-byte v0, p3, v0

    and-int/lit8 v0, v0, 0x3f

    shl-int/2addr v0, v3

    and-int/lit16 v1, p0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 p0, p0, 0x4

    or-int/2addr p0, v0

    aget-byte p3, p3, v4

    and-int/lit16 p3, p3, 0xfc

    ushr-int/2addr p3, v3

    or-int/2addr p0, p3

    goto :goto_0

    .line 407
    :cond_1
    aget-byte v0, p3, v0

    and-int/lit8 v0, v0, 0x3f

    shl-int/2addr v0, v3

    and-int/lit16 v1, p0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 p0, p0, 0x4

    aget-byte p3, p3, v4
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit16 p3, p3, 0xfc

    ushr-int/2addr p3, v3

    or-int/2addr p0, p3

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    .line 413
    :goto_0
    invoke-virtual {p1, p2, p0}, Lio/netty/buffer/ByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    return v3

    .line 411
    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 419
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v7, :cond_3

    .line 420
    aget-byte v0, p3, v0

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x12

    aget-byte v2, p3, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v0, v2

    aget-byte v2, p3, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v0, v2

    aget-byte p0, p3, p0

    and-int/lit16 p0, p0, 0xff

    goto :goto_1

    .line 425
    :cond_3
    aget-byte v2, p3, v2

    .line 426
    aget-byte v4, p3, v4

    .line 432
    aget-byte v0, p3, v0

    and-int/lit8 v0, v0, 0x3f

    shl-int/2addr v0, v3

    and-int/lit8 v3, v2, 0xf

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v0, v3

    and-int/lit16 v2, v2, 0xf0

    ushr-int/lit8 v2, v2, 0x4

    or-int/2addr v0, v2

    and-int/lit8 v2, v4, 0x3

    shl-int/lit8 v2, v2, 0x16

    or-int/2addr v0, v2

    and-int/lit16 v2, v4, 0xfc

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v0, v2

    aget-byte p0, p3, p0
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    :goto_1
    or-int/2addr p0, v0

    .line 446
    invoke-virtual {p1, p2, p0}, Lio/netty/buffer/ByteBuf;->setMedium(II)Lio/netty/buffer/ByteBuf;

    return v1

    .line 444
    :catch_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method decode(Lio/netty/buffer/ByteBuf;IILio/netty/buffer/ByteBufAllocator;Lio/netty/handler/codec/base64/Base64Dialect;)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 341
    invoke-static {p3}, Lio/netty/handler/codec/base64/Base64;->decodedBufferSize(I)I

    move-result v0

    invoke-interface {p4, v0}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p4

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p4, v0}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object p4

    iput-object p4, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->dest:Lio/netty/buffer/ByteBuf;

    .line 343
    invoke-static {p5}, Lio/netty/handler/codec/base64/Base64;->access$100(Lio/netty/handler/codec/base64/Base64Dialect;)[B

    move-result-object p4

    iput-object p4, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->decodabet:[B

    .line 345
    :try_start_0
    invoke-virtual {p1, p2, p3, p0}, Lio/netty/buffer/ByteBuf;->forEachByte(IILio/netty/util/ByteProcessor;)I

    .line 346
    iget-object p1, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->dest:Lio/netty/buffer/ByteBuf;

    const/4 p2, 0x0

    iget p3, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->outBuffPosn:I

    invoke-virtual {p1, p2, p3}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 348
    iget-object p2, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->dest:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 349
    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public process(B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x7f

    int-to-byte v0, v0

    .line 356
    iput-byte v0, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->sbiCrop:B

    .line 357
    iget-object v1, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->decodabet:[B

    aget-byte v2, v1, v0

    iput-byte v2, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->sbiDecode:B

    const/4 v3, -0x5

    if-lt v2, v3, :cond_1

    const/4 p1, -0x1

    if-lt v2, p1, :cond_0

    .line 361
    iget-object p1, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->b4:[B

    iget v2, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->b4Posn:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->b4Posn:I

    aput-byte v0, p1, v2

    const/4 v0, 0x3

    if-le v3, v0, :cond_0

    .line 363
    iget v0, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->outBuffPosn:I

    iget-object v2, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->dest:Lio/netty/buffer/ByteBuf;

    invoke-static {p1, v2, v0, v1}, Lio/netty/handler/codec/base64/Base64$Decoder;->decode4to3([BLio/netty/buffer/ByteBuf;I[B)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->outBuffPosn:I

    const/4 p1, 0x0

    .line 364
    iput p1, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->b4Posn:I

    .line 367
    iget-byte v0, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->sbiCrop:B

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 374
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid bad Base64 input character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (decimal)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
