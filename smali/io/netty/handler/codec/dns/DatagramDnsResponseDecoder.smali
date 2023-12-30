.class public Lio/netty/handler/codec/dns/DatagramDnsResponseDecoder;
.super Lio/netty/handler/codec/MessageToMessageDecoder;
.source "DatagramDnsResponseDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToMessageDecoder<",
        "Lio/netty/channel/socket/DatagramPacket;",
        ">;"
    }
.end annotation

.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# instance fields
.field private final recordDecoder:Lio/netty/handler/codec/dns/DnsRecordDecoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    sget-object v0, Lio/netty/handler/codec/dns/DnsRecordDecoder;->DEFAULT:Lio/netty/handler/codec/dns/DnsRecordDecoder;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/dns/DatagramDnsResponseDecoder;-><init>(Lio/netty/handler/codec/dns/DnsRecordDecoder;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/dns/DnsRecordDecoder;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageDecoder;-><init>()V

    const-string v0, "recordDecoder"

    .line 50
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/dns/DnsRecordDecoder;

    iput-object p1, p0, Lio/netty/handler/codec/dns/DatagramDnsResponseDecoder;->recordDecoder:Lio/netty/handler/codec/dns/DnsRecordDecoder;

    return-void
.end method

.method private decodeQuestions(Lio/netty/handler/codec/dns/DnsResponse;Lio/netty/buffer/ByteBuf;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_0

    .line 103
    sget-object v0, Lio/netty/handler/codec/dns/DnsSection;->QUESTION:Lio/netty/handler/codec/dns/DnsSection;

    iget-object v1, p0, Lio/netty/handler/codec/dns/DatagramDnsResponseDecoder;->recordDecoder:Lio/netty/handler/codec/dns/DnsRecordDecoder;

    invoke-interface {v1, p2}, Lio/netty/handler/codec/dns/DnsRecordDecoder;->decodeQuestion(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/dns/DnsQuestion;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lio/netty/handler/codec/dns/DnsResponse;->addRecord(Lio/netty/handler/codec/dns/DnsSection;Lio/netty/handler/codec/dns/DnsRecord;)Lio/netty/handler/codec/dns/DnsResponse;

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private decodeRecords(Lio/netty/handler/codec/dns/DnsResponse;Lio/netty/handler/codec/dns/DnsSection;Lio/netty/buffer/ByteBuf;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :goto_0
    if-lez p4, :cond_1

    .line 110
    iget-object v0, p0, Lio/netty/handler/codec/dns/DatagramDnsResponseDecoder;->recordDecoder:Lio/netty/handler/codec/dns/DnsRecordDecoder;

    invoke-interface {v0, p3}, Lio/netty/handler/codec/dns/DnsRecordDecoder;->decodeRecord(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/dns/DnsRecord;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 116
    :cond_0
    invoke-interface {p1, p2, v0}, Lio/netty/handler/codec/dns/DnsResponse;->addRecord(Lio/netty/handler/codec/dns/DnsSection;Lio/netty/handler/codec/dns/DnsRecord;)Lio/netty/handler/codec/dns/DnsResponse;

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static newResponse(Lio/netty/channel/socket/DatagramPacket;Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/dns/DnsResponse;
    .locals 7

    .line 80
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v3

    .line 82
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result p1

    shr-int/lit8 v0, p1, 0xf

    if-eqz v0, :cond_4

    .line 87
    new-instance v6, Lio/netty/handler/codec/dns/DatagramDnsResponse;

    .line 88
    invoke-virtual {p0}, Lio/netty/channel/socket/DatagramPacket;->sender()Ljava/net/SocketAddress;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 89
    invoke-virtual {p0}, Lio/netty/channel/socket/DatagramPacket;->recipient()Ljava/net/SocketAddress;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/net/InetSocketAddress;

    shr-int/lit8 p0, p1, 0xb

    and-int/lit8 p0, p0, 0xf

    int-to-byte p0, p0

    .line 91
    invoke-static {p0}, Lio/netty/handler/codec/dns/DnsOpCode;->valueOf(I)Lio/netty/handler/codec/dns/DnsOpCode;

    move-result-object v4

    and-int/lit8 p0, p1, 0xf

    int-to-byte p0, p0

    invoke-static {p0}, Lio/netty/handler/codec/dns/DnsResponseCode;->valueOf(I)Lio/netty/handler/codec/dns/DnsResponseCode;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/dns/DatagramDnsResponse;-><init>(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;ILio/netty/handler/codec/dns/DnsOpCode;Lio/netty/handler/codec/dns/DnsResponseCode;)V

    shr-int/lit8 p0, p1, 0x8

    const/4 v0, 0x1

    and-int/2addr p0, v0

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 93
    :goto_0
    invoke-interface {v6, p0}, Lio/netty/handler/codec/dns/DnsResponse;->setRecursionDesired(Z)Lio/netty/handler/codec/dns/DnsResponse;

    shr-int/lit8 p0, p1, 0xa

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 94
    :goto_1
    invoke-interface {v6, p0}, Lio/netty/handler/codec/dns/DnsResponse;->setAuthoritativeAnswer(Z)Lio/netty/handler/codec/dns/DnsResponse;

    shr-int/lit8 p0, p1, 0x9

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    .line 95
    :goto_2
    invoke-interface {v6, p0}, Lio/netty/handler/codec/dns/DnsResponse;->setTruncated(Z)Lio/netty/handler/codec/dns/DnsResponse;

    shr-int/lit8 p0, p1, 0x7

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 96
    :goto_3
    invoke-interface {v6, v0}, Lio/netty/handler/codec/dns/DnsResponse;->setRecursionAvailable(Z)Lio/netty/handler/codec/dns/DnsResponse;

    shr-int/lit8 p0, p1, 0x4

    and-int/lit8 p0, p0, 0x7

    .line 97
    invoke-interface {v6, p0}, Lio/netty/handler/codec/dns/DnsResponse;->setZ(I)Lio/netty/handler/codec/dns/DnsResponse;

    return-object v6

    .line 84
    :cond_4
    new-instance p0, Lio/netty/handler/codec/CorruptedFrameException;

    const-string p1, "not a response"

    invoke-direct {p0, p1}, Lio/netty/handler/codec/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/socket/DatagramPacket;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/channel/socket/DatagramPacket;",
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

    .line 55
    invoke-virtual {p2}, Lio/netty/channel/socket/DatagramPacket;->content()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/ByteBuf;

    .line 57
    invoke-static {p2, p1}, Lio/netty/handler/codec/dns/DatagramDnsResponseDecoder;->newResponse(Lio/netty/channel/socket/DatagramPacket;Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/dns/DnsResponse;

    move-result-object p2

    .line 60
    :try_start_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v0

    .line 61
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v1

    .line 62
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v2

    .line 63
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v3

    .line 65
    invoke-direct {p0, p2, p1, v0}, Lio/netty/handler/codec/dns/DatagramDnsResponseDecoder;->decodeQuestions(Lio/netty/handler/codec/dns/DnsResponse;Lio/netty/buffer/ByteBuf;I)V

    .line 66
    sget-object v0, Lio/netty/handler/codec/dns/DnsSection;->ANSWER:Lio/netty/handler/codec/dns/DnsSection;

    invoke-direct {p0, p2, v0, p1, v1}, Lio/netty/handler/codec/dns/DatagramDnsResponseDecoder;->decodeRecords(Lio/netty/handler/codec/dns/DnsResponse;Lio/netty/handler/codec/dns/DnsSection;Lio/netty/buffer/ByteBuf;I)V

    .line 67
    sget-object v0, Lio/netty/handler/codec/dns/DnsSection;->AUTHORITY:Lio/netty/handler/codec/dns/DnsSection;

    invoke-direct {p0, p2, v0, p1, v2}, Lio/netty/handler/codec/dns/DatagramDnsResponseDecoder;->decodeRecords(Lio/netty/handler/codec/dns/DnsResponse;Lio/netty/handler/codec/dns/DnsSection;Lio/netty/buffer/ByteBuf;I)V

    .line 68
    sget-object v0, Lio/netty/handler/codec/dns/DnsSection;->ADDITIONAL:Lio/netty/handler/codec/dns/DnsSection;

    invoke-direct {p0, p2, v0, p1, v3}, Lio/netty/handler/codec/dns/DatagramDnsResponseDecoder;->decodeRecords(Lio/netty/handler/codec/dns/DnsResponse;Lio/netty/handler/codec/dns/DnsSection;Lio/netty/buffer/ByteBuf;I)V

    .line 70
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 74
    invoke-interface {p2}, Lio/netty/handler/codec/dns/DnsResponse;->release()Z

    .line 76
    throw p1
.end method

.method protected bridge synthetic decode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    check-cast p2, Lio/netty/channel/socket/DatagramPacket;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/dns/DatagramDnsResponseDecoder;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/socket/DatagramPacket;Ljava/util/List;)V

    return-void
.end method
