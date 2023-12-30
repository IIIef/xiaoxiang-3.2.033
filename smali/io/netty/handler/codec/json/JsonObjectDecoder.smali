.class public Lio/netty/handler/codec/json/JsonObjectDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "JsonObjectDecoder.java"


# static fields
.field private static final ST_CORRUPTED:I = -0x1

.field private static final ST_DECODING_ARRAY_STREAM:I = 0x2

.field private static final ST_DECODING_NORMAL:I = 0x1

.field private static final ST_INIT:I


# instance fields
.field private idx:I

.field private insideString:Z

.field private lastReaderIndex:I

.field private final maxObjectLength:I

.field private openBraces:I

.field private state:I

.field private final streamArrayElements:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x100000

    .line 63
    invoke-direct {p0, v0}, Lio/netty/handler/codec/json/JsonObjectDecoder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/json/JsonObjectDecoder;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 83
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 87
    iput p1, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->maxObjectLength:I

    .line 88
    iput-boolean p2, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->streamArrayElements:Z

    return-void

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxObjectLength must be a positive int"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/high16 v0, 0x100000

    .line 71
    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/json/JsonObjectDecoder;-><init>(IZ)V

    return-void
.end method

.method private decodeByte(BLio/netty/buffer/ByteBuf;I)V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x7b

    if-eq p1, v1, :cond_0

    const/16 v1, 0x5b

    if-ne p1, v1, :cond_1

    .line 196
    :cond_0
    iget-boolean v1, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->insideString:Z

    if-nez v1, :cond_1

    .line 197
    iget p1, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->openBraces:I

    add-int/2addr p1, v0

    iput p1, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->openBraces:I

    goto :goto_1

    :cond_1
    const/16 v1, 0x7d

    if-eq p1, v1, :cond_2

    const/16 v1, 0x5d

    if-ne p1, v1, :cond_3

    .line 198
    :cond_2
    iget-boolean v1, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->insideString:Z

    if-nez v1, :cond_3

    .line 199
    iget p1, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->openBraces:I

    sub-int/2addr p1, v0

    iput p1, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->openBraces:I

    goto :goto_1

    :cond_3
    const/16 v1, 0x22

    if-ne p1, v1, :cond_6

    .line 203
    iget-boolean p1, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->insideString:Z

    if-nez p1, :cond_4

    .line 204
    iput-boolean v0, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->insideString:Z

    goto :goto_1

    :cond_4
    add-int/lit8 p3, p3, -0x1

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ltz p3, :cond_5

    .line 209
    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 217
    :cond_5
    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    .line 219
    iput-boolean p1, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->insideString:Z

    :cond_6
    :goto_1
    return-void
.end method

.method private initDecoding(B)V
    .locals 2

    const/4 v0, 0x1

    .line 226
    iput v0, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->openBraces:I

    const/16 v1, 0x5b

    if-ne p1, v1, :cond_0

    .line 227
    iget-boolean p1, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->streamArrayElements:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 228
    iput p1, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->state:I

    goto :goto_0

    .line 230
    :cond_0
    iput v0, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->state:I

    :goto_0
    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->insideString:Z

    .line 236
    iput v0, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->state:I

    .line 237
    iput v0, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->openBraces:I

    return-void
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 9
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

    .line 93
    iget v0, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->state:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 94
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    return-void

    .line 98
    :cond_0
    iget v0, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->idx:I

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    if-le v0, v2, :cond_1

    iget v0, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->lastReaderIndex:I

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 99
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    iget v2, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->idx:I

    iget v3, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->lastReaderIndex:I

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    iput v0, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->idx:I

    .line 103
    :cond_1
    iget v0, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->idx:I

    .line 104
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v2

    .line 106
    iget v3, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->maxObjectLength:I

    const-string v4, ": "

    if-gt v2, v3, :cond_10

    :goto_0
    if-ge v0, v2, :cond_e

    .line 115
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v3

    .line 116
    iget v5, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->state:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 117
    invoke-direct {p0, v3, p2, v0}, Lio/netty/handler/codec/json/JsonObjectDecoder;->decodeByte(BLio/netty/buffer/ByteBuf;I)V

    .line 121
    iget v3, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->openBraces:I

    if-nez v3, :cond_d

    .line 122
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v6

    sub-int v6, v5, v6

    invoke-virtual {p0, p1, p2, v3, v6}, Lio/netty/handler/codec/json/JsonObjectDecoder;->extractObject(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 124
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_2
    invoke-virtual {p2, v5}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 132
    invoke-direct {p0}, Lio/netty/handler/codec/json/JsonObjectDecoder;->reset()V

    goto/16 :goto_4

    :cond_3
    const/4 v7, 0x2

    if-ne v5, v7, :cond_9

    .line 135
    invoke-direct {p0, v3, p2, v0}, Lio/netty/handler/codec/json/JsonObjectDecoder;->decodeByte(BLio/netty/buffer/ByteBuf;I)V

    .line 137
    iget-boolean v5, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->insideString:Z

    if-nez v5, :cond_d

    iget v5, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->openBraces:I

    const/16 v7, 0x5d

    if-ne v5, v6, :cond_4

    const/16 v8, 0x2c

    if-eq v3, v8, :cond_5

    :cond_4
    if-nez v5, :cond_d

    if-ne v3, v7, :cond_d

    .line 140
    :cond_5
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v5

    :goto_1
    invoke-virtual {p2, v5}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 141
    invoke-virtual {p2, v6}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v5, v0, -0x1

    .line 146
    :goto_2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v6

    if-lt v5, v6, :cond_7

    invoke-virtual {p2, v5}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 150
    :cond_7
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v8

    sub-int/2addr v5, v8

    invoke-virtual {p0, p1, p2, v6, v5}, Lio/netty/handler/codec/json/JsonObjectDecoder;->extractObject(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 152
    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v5, v0, 0x1

    .line 155
    invoke-virtual {p2, v5}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    if-ne v3, v7, :cond_d

    .line 158
    invoke-direct {p0}, Lio/netty/handler/codec/json/JsonObjectDecoder;->reset()V

    goto :goto_4

    :cond_9
    const/16 v5, 0x7b

    if-eq v3, v5, :cond_c

    const/16 v5, 0x5b

    if-ne v3, v5, :cond_a

    goto :goto_3

    .line 170
    :cond_a
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 171
    invoke-virtual {p2, v6}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    goto :goto_4

    .line 173
    :cond_b
    iput v1, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->state:I

    .line 174
    new-instance p1, Lio/netty/handler/codec/CorruptedFrameException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid JSON received at byte position "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-static {p2}, Lio/netty/buffer/ByteBufUtil;->hexDump(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/netty/handler/codec/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 163
    :cond_c
    :goto_3
    invoke-direct {p0, v3}, Lio/netty/handler/codec/json/JsonObjectDecoder;->initDecoding(B)V

    .line 165
    iget v3, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->state:I

    if-ne v3, v7, :cond_d

    .line 167
    invoke-virtual {p2, v6}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    :cond_d
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 179
    :cond_e
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p1

    if-nez p1, :cond_f

    const/4 p1, 0x0

    .line 180
    iput p1, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->idx:I

    goto :goto_5

    .line 182
    :cond_f
    iput v0, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->idx:I

    .line 184
    :goto_5
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->lastReaderIndex:I

    return-void

    .line 108
    :cond_10
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 109
    invoke-direct {p0}, Lio/netty/handler/codec/json/JsonObjectDecoder;->reset()V

    .line 110
    new-instance p1, Lio/netty/handler/codec/TooLongFrameException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "object length exceeds "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lio/netty/handler/codec/json/JsonObjectDecoder;->maxObjectLength:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes discarded"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected extractObject(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 192
    invoke-virtual {p2, p3, p4}, Lio/netty/buffer/ByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method
