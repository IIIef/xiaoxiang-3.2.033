.class final Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;
.super Ljava/lang/Object;
.source "HpackHuffmanDecoder.java"

# interfaces
.implements Lio/netty/util/ByteProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/HpackHuffmanDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DecoderProcessor"
.end annotation


# instance fields
.field private bytes:[B

.field private current:I

.field private currentBits:I

.field private index:I

.field private final initialCapacity:I

.field private node:Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

.field private symbolBits:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "initialCapacity"

    .line 147
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->initialCapacity:I

    return-void
.end method

.method private append(I)V
    .locals 4

    .line 233
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->bytes:[B

    array-length v1, v0

    iget v2, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->index:I

    if-ne v1, v2, :cond_1

    .line 237
    array-length v1, v0

    const/16 v2, 0x400

    if-lt v1, v2, :cond_0

    array-length v1, v0

    iget v2, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->initialCapacity:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    .line 238
    :goto_0
    new-array v1, v1, [B

    .line 239
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    iput-object v1, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->bytes:[B

    .line 242
    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->bytes:[B

    iget v1, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->index:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method


# virtual methods
.method end()Lio/netty/util/AsciiString;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 205
    :goto_0
    iget v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->currentBits:I

    if-lez v0, :cond_1

    .line 206
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->node:Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;->access$100(Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;)[Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    move-result-object v0

    iget v1, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->current:I

    iget v2, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->currentBits:I

    rsub-int/lit8 v2, v2, 0x8

    shl-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-object v0, v0, v1

    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->node:Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    .line 207
    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;->access$000(Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->node:Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;->access$300(Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;)I

    move-result v0

    iget v1, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->currentBits:I

    if-gt v0, v1, :cond_1

    .line 208
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->node:Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;->access$400(Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;)I

    move-result v0

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    .line 211
    iget v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->currentBits:I

    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->node:Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;->access$300(Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->currentBits:I

    .line 212
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->node:Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;->access$400(Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;)I

    move-result v0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->append(I)V

    .line 213
    invoke-static {}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;->access$200()Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->node:Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    .line 214
    iget v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->currentBits:I

    iput v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->symbolBits:I

    goto :goto_0

    .line 209
    :cond_0
    invoke-static {}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;->access$500()Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    .line 224
    :cond_1
    iget v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->symbolBits:I

    const/4 v1, 0x1

    shl-int v2, v1, v0

    sub-int/2addr v2, v1

    const/4 v1, 0x7

    if-gt v0, v1, :cond_2

    .line 225
    iget v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->current:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    .line 229
    new-instance v0, Lio/netty/util/AsciiString;

    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->bytes:[B

    iget v2, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->index:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lio/netty/util/AsciiString;-><init>([BIIZ)V

    return-object v0

    .line 226
    :cond_2
    invoke-static {}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;->access$600()Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method

.method public process(B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 179
    iget v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->current:I

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    iput p1, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->current:I

    .line 180
    iget p1, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->currentBits:I

    add-int/2addr p1, v1

    iput p1, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->currentBits:I

    .line 181
    iget p1, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->symbolBits:I

    add-int/2addr p1, v1

    iput p1, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->symbolBits:I

    .line 184
    :cond_0
    iget-object p1, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->node:Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    invoke-static {p1}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;->access$100(Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;)[Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    move-result-object p1

    iget v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->current:I

    iget v2, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->currentBits:I

    add-int/lit8 v3, v2, -0x8

    ushr-int/2addr v0, v3

    and-int/lit16 v0, v0, 0xff

    aget-object p1, p1, v0

    iput-object p1, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->node:Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    .line 185
    invoke-static {p1}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;->access$300(Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;)I

    move-result p1

    sub-int/2addr v2, p1

    iput v2, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->currentBits:I

    .line 186
    iget-object p1, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->node:Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    invoke-static {p1}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;->access$000(Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 187
    iget-object p1, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->node:Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    invoke-static {p1}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;->access$400(Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;)I

    move-result p1

    const/16 v0, 0x100

    if-eq p1, v0, :cond_1

    .line 190
    iget-object p1, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->node:Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    invoke-static {p1}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;->access$400(Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;)I

    move-result p1

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->append(I)V

    .line 191
    invoke-static {}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;->access$200()Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->node:Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    .line 194
    iget p1, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->currentBits:I

    iput p1, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->symbolBits:I

    goto :goto_0

    .line 188
    :cond_1
    invoke-static {}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;->access$500()Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    .line 196
    :cond_2
    :goto_0
    iget p1, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->currentBits:I

    if-ge p1, v1, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method reset()V
    .locals 2

    .line 151
    invoke-static {}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;->access$200()Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->node:Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    const/4 v0, 0x0

    .line 152
    iput v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->current:I

    .line 153
    iput v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->currentBits:I

    .line 154
    iput v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->symbolBits:I

    .line 155
    iget v1, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->initialCapacity:I

    new-array v1, v1, [B

    iput-object v1, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->bytes:[B

    .line 156
    iput v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$DecoderProcessor;->index:I

    return-void
.end method
