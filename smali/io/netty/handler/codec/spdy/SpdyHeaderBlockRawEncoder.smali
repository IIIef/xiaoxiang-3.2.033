.class public Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawEncoder;
.super Lio/netty/handler/codec/spdy/SpdyHeaderBlockEncoder;
.source "SpdyHeaderBlockRawEncoder.java"


# instance fields
.field private final version:I


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockEncoder;-><init>()V

    const-string v0, "version"

    .line 33
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    invoke-virtual {p1}, Lio/netty/handler/codec/spdy/SpdyVersion;->getVersion()I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawEncoder;->version:I

    return-void
.end method

.method private static setLengthField(Lio/netty/buffer/ByteBuf;II)V
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method private static writeLengthField(Lio/netty/buffer/ByteBuf;I)V
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    return-void
.end method


# virtual methods
.method public encode(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)Lio/netty/buffer/ByteBuf;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    invoke-interface {p2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->headers()Lio/netty/handler/codec/spdy/SpdyHeaders;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyHeaders;->names()Ljava/util/Set;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 51
    sget-object p1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object p1

    :cond_0
    const v2, 0xffff

    if-gt v1, v2, :cond_7

    .line 57
    invoke-interface {p1}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    .line 58
    invoke-static {p1, v1}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawEncoder;->writeLengthField(Lio/netty/buffer/ByteBuf;I)V

    .line 59
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 60
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {p1, v3}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawEncoder;->writeLengthField(Lio/netty/buffer/ByteBuf;I)V

    .line 61
    invoke-static {p1, v1}, Lio/netty/buffer/ByteBufUtil;->writeAscii(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)I

    .line 62
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v3

    const/4 v4, 0x0

    .line 64
    invoke-static {p1, v4}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawEncoder;->writeLengthField(Lio/netty/buffer/ByteBuf;I)V

    .line 65
    invoke-interface {p2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->headers()Lio/netty/handler/codec/spdy/SpdyHeaders;

    move-result-object v5

    invoke-interface {v5, v1}, Lio/netty/handler/codec/spdy/SpdyHeaders;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 66
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 68
    invoke-static {p1, v7}, Lio/netty/buffer/ByteBufUtil;->writeAscii(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)I

    .line 69
    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v6, v8

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    add-int/lit8 v6, v6, -0x1

    :cond_4
    if-gt v6, v2, :cond_5

    if-lez v6, :cond_1

    .line 81
    invoke-static {p1, v3, v6}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawEncoder;->setLengthField(Lio/netty/buffer/ByteBuf;II)V

    .line 82
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 77
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "header exceeds allowable length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-object p1

    .line 54
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "header block contains too many headers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method end()V
    .locals 0

    return-void
.end method
