.class final Lio/netty/handler/codec/http2/HpackHuffmanDecoder;
.super Ljava/lang/Object;
.source "HpackHuffmanDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;,
        Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;
    }
.end annotation


# static fields
.field private static final EOS_DECODED:Lio/netty/handler/codec/http2/Http2Exception;

.field private static final INVALID_PADDING:Lio/netty/handler/codec/http2/Http2Exception;

.field private static final ROOT:Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;


# instance fields
.field private final processor:Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 45
    const-class v0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;

    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->COMPRESSION_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "HPACK - EOS Decoded"

    .line 46
    invoke-static {v1, v4, v3}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    const-string v3, "decode(..)"

    .line 45
    invoke-static {v1, v0, v3}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/Http2Exception;

    sput-object v1, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;->EOS_DECODED:Lio/netty/handler/codec/http2/Http2Exception;

    .line 47
    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->COMPRESSION_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "HPACK - Invalid Padding"

    .line 48
    invoke-static {v1, v4, v2}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    .line 47
    invoke-static {v1, v0, v3}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Exception;

    sput-object v0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;->INVALID_PADDING:Lio/netty/handler/codec/http2/Http2Exception;

    .line 50
    sget-object v0, Lio/netty/handler/codec/http2/HpackUtil;->HUFFMAN_CODES:[I

    sget-object v1, Lio/netty/handler/codec/http2/HpackUtil;->HUFFMAN_CODE_LENGTHS:[B

    invoke-static {v0, v1}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;->buildTree([I[B)Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;->ROOT:Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;-><init>(I)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;->processor:Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;

    return-void
.end method

.method static synthetic access$200()Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;
    .locals 1

    .line 43
    sget-object v0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;->ROOT:Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    return-object v0
.end method

.method static synthetic access$500()Lio/netty/handler/codec/http2/Http2Exception;
    .locals 1

    .line 43
    sget-object v0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;->EOS_DECODED:Lio/netty/handler/codec/http2/Http2Exception;

    return-object v0
.end method

.method static synthetic access$600()Lio/netty/handler/codec/http2/Http2Exception;
    .locals 1

    .line 43
    sget-object v0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;->INVALID_PADDING:Lio/netty/handler/codec/http2/Http2Exception;

    return-object v0
.end method

.method private static buildTree([I[B)Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;
    .locals 4

    .line 106
    new-instance v0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;-><init>()V

    const/4 v1, 0x0

    .line 107
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 108
    aget v2, p0, v1

    aget-byte v3, p1, v1

    invoke-static {v0, v1, v2, v3}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;->insert(Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;IIB)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static insert(Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;IIB)V
    .locals 3

    :goto_0
    const/16 v0, 0x8

    if-le p3, v0, :cond_2

    .line 117
    invoke-static {p0}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;->access$000(Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 p3, p3, -0x8

    int-to-byte p3, p3

    ushr-int v0, p2, p3

    and-int/lit16 v0, v0, 0xff

    .line 122
    invoke-static {p0}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;->access$100(Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;)[Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    move-result-object v1

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 123
    invoke-static {p0}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;->access$100(Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;)[Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    move-result-object v1

    new-instance v2, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    invoke-direct {v2}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;-><init>()V

    aput-object v2, v1, v0

    .line 125
    :cond_0
    invoke-static {p0}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;->access$100(Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;)[Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    move-result-object p0

    aget-object p0, p0, v0

    goto :goto_0

    .line 118
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "invalid Huffman code: prefix not unique"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 128
    :cond_2
    new-instance v1, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    invoke-direct {v1, p1, p3}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;-><init>(II)V

    sub-int/2addr v0, p3

    shl-int p1, p2, v0

    and-int/lit16 p1, p1, 0xff

    const/4 p2, 0x1

    shl-int/2addr p2, v0

    move p3, p1

    :goto_1
    add-int v0, p1, p2

    if-ge p3, v0, :cond_3

    .line 133
    invoke-static {p0}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;->access$100(Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;)[Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    move-result-object v0

    aput-object v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public decode(Lio/netty/buffer/ByteBuf;I)Lio/netty/util/AsciiString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;->processor:Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->reset()V

    .line 67
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;->processor:Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;

    invoke-virtual {p1, v0, p2, v1}, Lio/netty/buffer/ByteBuf;->forEachByte(IILio/netty/util/ByteProcessor;)I

    .line 68
    invoke-virtual {p1, p2}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 69
    iget-object p1, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;->processor:Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->end()Lio/netty/util/AsciiString;

    move-result-object p1

    return-object p1
.end method
