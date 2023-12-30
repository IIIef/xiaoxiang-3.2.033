.class public Lio/netty/handler/codec/dns/DefaultDnsRecordDecoder;
.super Ljava/lang/Object;
.source "DefaultDnsRecordDecoder.java"

# interfaces
.implements Lio/netty/handler/codec/dns/DnsRecordDecoder;


# static fields
.field static final ROOT:Ljava/lang/String; = "."


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeName(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;
    .locals 12

    .line 128
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    .line 129
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    const-string v2, "."

    if-nez v1, :cond_0

    return-object v2

    .line 142
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    shl-int/2addr v1, v4

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 143
    :goto_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v8

    const/16 v9, 0x2e

    if-eqz v8, :cond_8

    .line 144
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v8

    and-int/lit16 v10, v8, 0xc0

    const/16 v11, 0xc0

    if-ne v10, v11, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_6

    if-ne v6, v5, :cond_2

    .line 148
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v6

    add-int/2addr v6, v4

    .line 151
    :cond_2
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v9

    if-eqz v9, :cond_5

    and-int/lit8 v8, v8, 0x3f

    shl-int/lit8 v8, v8, 0x8

    .line 155
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v9

    or-int/2addr v8, v9

    if-ge v8, v0, :cond_4

    .line 159
    invoke-virtual {p0, v8}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v7, v7, 0x2

    if-ge v7, v0, :cond_3

    goto :goto_0

    .line 164
    :cond_3
    new-instance p0, Lio/netty/handler/codec/CorruptedFrameException;

    const-string v0, "name contains a loop."

    invoke-direct {p0, v0}, Lio/netty/handler/codec/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 157
    :cond_4
    new-instance p0, Lio/netty/handler/codec/CorruptedFrameException;

    const-string v0, "name has an out-of-range pointer"

    invoke-direct {p0, v0}, Lio/netty/handler/codec/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 152
    :cond_5
    new-instance p0, Lio/netty/handler/codec/CorruptedFrameException;

    const-string v0, "truncated pointer in a name"

    invoke-direct {p0, v0}, Lio/netty/handler/codec/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    if-eqz v8, :cond_8

    .line 167
    invoke-virtual {p0, v8}, Lio/netty/buffer/ByteBuf;->isReadable(I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 170
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v10

    sget-object v11, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v10, v8, v11}, Lio/netty/buffer/ByteBuf;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p0, v8}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 168
    :cond_7
    new-instance p0, Lio/netty/handler/codec/CorruptedFrameException;

    const-string v0, "truncated label in a name"

    invoke-direct {p0, v0}, Lio/netty/handler/codec/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-eq v6, v5, :cond_9

    .line 178
    invoke-virtual {p0, v6}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 181
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_a

    return-object v2

    .line 185
    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    if-eq p0, v9, :cond_b

    .line 186
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected decodeName0(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;
    .locals 0

    .line 114
    invoke-static {p1}, Lio/netty/handler/codec/dns/DefaultDnsRecordDecoder;->decodeName(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final decodeQuestion(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/dns/DnsQuestion;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    invoke-static {p1}, Lio/netty/handler/codec/dns/DefaultDnsRecordDecoder;->decodeName(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v1

    invoke-static {v1}, Lio/netty/handler/codec/dns/DnsRecordType;->valueOf(I)Lio/netty/handler/codec/dns/DnsRecordType;

    move-result-object v1

    .line 42
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result p1

    .line 43
    new-instance v2, Lio/netty/handler/codec/dns/DefaultDnsQuestion;

    invoke-direct {v2, v0, v1, p1}, Lio/netty/handler/codec/dns/DefaultDnsQuestion;-><init>(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsRecordType;I)V

    return-object v2
.end method

.method public final decodeRecord(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/dns/DnsRecord;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            ">(",
            "Lio/netty/buffer/ByteBuf;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    .line 49
    invoke-static {p1}, Lio/netty/handler/codec/dns/DefaultDnsRecordDecoder;->decodeName(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    sub-int v3, v1, v0

    const/4 v4, 0x0

    const/16 v5, 0xa

    if-ge v3, v5, :cond_0

    .line 54
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    return-object v4

    .line 58
    :cond_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v3

    invoke-static {v3}, Lio/netty/handler/codec/dns/DnsRecordType;->valueOf(I)Lio/netty/handler/codec/dns/DnsRecordType;

    move-result-object v3

    .line 59
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v5

    .line 60
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedInt()J

    move-result-wide v6

    .line 61
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v10

    .line 62
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v11

    sub-int/2addr v1, v11

    if-ge v1, v10, :cond_1

    .line 66
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    return-object v4

    :cond_1
    move-object v1, p0

    move v4, v5

    move-wide v5, v6

    move-object v7, p1

    move v8, v11

    move v9, v10

    .line 71
    invoke-virtual/range {v1 .. v9}, Lio/netty/handler/codec/dns/DefaultDnsRecordDecoder;->decodeRecord(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsRecordType;IJLio/netty/buffer/ByteBuf;II)Lio/netty/handler/codec/dns/DnsRecord;

    move-result-object v0

    add-int/2addr v11, v10

    .line 72
    invoke-virtual {p1, v11}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method protected decodeRecord(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsRecordType;IJLio/netty/buffer/ByteBuf;II)Lio/netty/handler/codec/dns/DnsRecord;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move/from16 v0, p7

    .line 97
    sget-object v1, Lio/netty/handler/codec/dns/DnsRecordType;->PTR:Lio/netty/handler/codec/dns/DnsRecordType;

    move-object v4, p2

    if-ne v4, v1, :cond_0

    .line 98
    new-instance v1, Lio/netty/handler/codec/dns/DefaultDnsPtrRecord;

    .line 99
    invoke-virtual/range {p6 .. p6}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    add-int v3, v0, p8

    invoke-virtual {v2, v0, v3}, Lio/netty/buffer/ByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    move-object v9, p0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/dns/DefaultDnsRecordDecoder;->decodeName0(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    move-object v3, p1

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v2 .. v7}, Lio/netty/handler/codec/dns/DefaultDnsPtrRecord;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    return-object v1

    :cond_0
    move-object v9, p0

    .line 101
    new-instance v1, Lio/netty/handler/codec/dns/DefaultDnsRawRecord;

    .line 102
    invoke-virtual/range {p6 .. p6}, Lio/netty/buffer/ByteBuf;->retainedDuplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    add-int v3, v0, p8

    invoke-virtual {v2, v0, v3}, Lio/netty/buffer/ByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v8

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v2 .. v8}, Lio/netty/handler/codec/dns/DefaultDnsRawRecord;-><init>(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsRecordType;IJLio/netty/buffer/ByteBuf;)V

    return-object v1
.end method
