.class public final Lio/netty/handler/codec/AsciiHeadersEncoder;
.super Ljava/lang/Object;
.source "AsciiHeadersEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;,
        Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;
    }
.end annotation


# instance fields
.field private final buf:Lio/netty/buffer/ByteBuf;

.field private final newlineType:Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;

.field private final separatorType:Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;


# direct methods
.method public constructor <init>(Lio/netty/buffer/ByteBuf;)V
    .locals 2

    .line 62
    sget-object v0, Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;->COLON_SPACE:Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;

    sget-object v1, Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;->CRLF:Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;

    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/codec/AsciiHeadersEncoder;-><init>(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "buf"

    .line 67
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "separatorType"

    .line 70
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "newlineType"

    .line 73
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    iput-object p1, p0, Lio/netty/handler/codec/AsciiHeadersEncoder;->buf:Lio/netty/buffer/ByteBuf;

    .line 77
    iput-object p2, p0, Lio/netty/handler/codec/AsciiHeadersEncoder;->separatorType:Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;

    .line 78
    iput-object p3, p0, Lio/netty/handler/codec/AsciiHeadersEncoder;->newlineType:Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;

    return-void
.end method

.method private static writeAscii(Lio/netty/buffer/ByteBuf;ILjava/lang/CharSequence;)V
    .locals 2

    .line 124
    instance-of v0, p2, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_0

    .line 125
    move-object v0, p2

    check-cast v0, Lio/netty/util/AsciiString;

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {v0, v1, p0, p1, p2}, Lio/netty/buffer/ByteBufUtil;->copy(Lio/netty/util/AsciiString;ILio/netty/buffer/ByteBuf;II)V

    goto :goto_0

    .line 127
    :cond_0
    sget-object v0, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/buffer/ByteBuf;->setCharSequence(ILjava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public encode(Ljava/util/Map$Entry;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 82
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 83
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 84
    iget-object v1, p0, Lio/netty/handler/codec/AsciiHeadersEncoder;->buf:Lio/netty/buffer/ByteBuf;

    .line 85
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 86
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int v4, v2, v3

    add-int/lit8 v4, v4, 0x4

    .line 88
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v5

    .line 89
    invoke-virtual {v1, v4}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 90
    invoke-static {v1, v5, v0}, Lio/netty/handler/codec/AsciiHeadersEncoder;->writeAscii(Lio/netty/buffer/ByteBuf;ILjava/lang/CharSequence;)V

    add-int/2addr v5, v2

    .line 93
    sget-object v0, Lio/netty/handler/codec/AsciiHeadersEncoder$1;->$SwitchMap$io$netty$handler$codec$AsciiHeadersEncoder$SeparatorType:[I

    iget-object v2, p0, Lio/netty/handler/codec/AsciiHeadersEncoder;->separatorType:Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;

    invoke-virtual {v2}, Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/16 v2, 0x3a

    const/4 v4, 0x2

    const/4 v6, 0x1

    if-eq v0, v6, :cond_1

    if-ne v0, v4, :cond_0

    add-int/lit8 v0, v5, 0x1

    .line 98
    invoke-virtual {v1, v5, v2}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v2, v0, 0x1

    const/16 v5, 0x20

    .line 99
    invoke-virtual {v1, v0, v5}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 102
    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    :cond_1
    add-int/lit8 v0, v5, 0x1

    .line 95
    invoke-virtual {v1, v5, v2}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    move v2, v0

    .line 105
    :goto_0
    invoke-static {v1, v2, p1}, Lio/netty/handler/codec/AsciiHeadersEncoder;->writeAscii(Lio/netty/buffer/ByteBuf;ILjava/lang/CharSequence;)V

    add-int/2addr v2, v3

    .line 108
    sget-object p1, Lio/netty/handler/codec/AsciiHeadersEncoder$1;->$SwitchMap$io$netty$handler$codec$AsciiHeadersEncoder$NewlineType:[I

    iget-object v0, p0, Lio/netty/handler/codec/AsciiHeadersEncoder;->newlineType:Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;

    invoke-virtual {v0}, Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/16 v0, 0xa

    if-eq p1, v6, :cond_3

    if-ne p1, v4, :cond_2

    add-int/lit8 p1, v2, 0x1

    const/16 v3, 0xd

    .line 113
    invoke-virtual {v1, v2, v3}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v2, p1, 0x1

    .line 114
    invoke-virtual {v1, p1, v0}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 117
    :cond_2
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    :cond_3
    add-int/lit8 p1, v2, 0x1

    .line 110
    invoke-virtual {v1, v2, v0}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    move v2, p1

    .line 120
    :goto_1
    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    return-void
.end method
