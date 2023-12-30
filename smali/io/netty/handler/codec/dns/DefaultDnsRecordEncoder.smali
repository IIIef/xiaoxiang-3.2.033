.class public Lio/netty/handler/codec/dns/DefaultDnsRecordEncoder;
.super Ljava/lang/Object;
.source "DefaultDnsRecordEncoder.java"

# interfaces
.implements Lio/netty/handler/codec/dns/DnsRecordEncoder;


# static fields
.field private static final PREFIX_MASK:I = 0x7


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateEcsAddressLength(II)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    add-int/2addr p0, p1

    return p0
.end method

.method private encodeOptEcsRecord(Lio/netty/handler/codec/dns/DnsOptEcsRecord;Lio/netty/buffer/ByteBuf;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/dns/DefaultDnsRecordEncoder;->encodeRecord0(Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/buffer/ByteBuf;)V

    .line 85
    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsOptEcsRecord;->sourcePrefixLength()I

    move-result v0

    .line 86
    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsOptEcsRecord;->scopePrefixLength()I

    move-result v1

    and-int/lit8 v2, v0, 0x7

    .line 89
    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsOptEcsRecord;->address()[B

    move-result-object p1

    .line 90
    array-length v3, p1

    shl-int/lit8 v3, v3, 0x3

    if-lt v3, v0, :cond_2

    if-ltz v0, :cond_2

    .line 97
    array-length v3, p1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    sget-object v3, Lio/netty/channel/socket/InternetProtocolFamily;->IPv4:Lio/netty/channel/socket/InternetProtocolFamily;

    goto :goto_0

    .line 98
    :cond_0
    sget-object v3, Lio/netty/channel/socket/InternetProtocolFamily;->IPv6:Lio/netty/channel/socket/InternetProtocolFamily;

    :goto_0
    invoke-virtual {v3}, Lio/netty/channel/socket/InternetProtocolFamily;->addressNumber()I

    move-result v3

    int-to-short v3, v3

    .line 99
    invoke-static {v0, v2}, Lio/netty/handler/codec/dns/DefaultDnsRecordEncoder;->calculateEcsAddressLength(II)I

    move-result v5

    add-int/lit8 v6, v5, 0x8

    .line 108
    invoke-virtual {p2, v6}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    const/16 v7, 0x8

    .line 109
    invoke-virtual {p2, v7}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    sub-int/2addr v6, v4

    .line 111
    invoke-virtual {p2, v6}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 112
    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 113
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 114
    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    const/4 v0, 0x0

    if-lez v2, :cond_1

    add-int/lit8 v5, v5, -0x1

    .line 118
    invoke-virtual {p2, p1, v0, v5}, Lio/netty/buffer/ByteBuf;->writeBytes([BII)Lio/netty/buffer/ByteBuf;

    .line 121
    aget-byte p1, p1, v5

    invoke-static {p1, v2}, Lio/netty/handler/codec/dns/DefaultDnsRecordEncoder;->padWithZeros(BI)B

    move-result p1

    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 124
    :cond_1
    invoke-virtual {p2, p1, v0, v5}, Lio/netty/buffer/ByteBuf;->writeBytes([BII)Lio/netty/buffer/ByteBuf;

    :goto_1
    return-void

    .line 92
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (expected: 0 >= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private encodeOptPseudoRecord(Lio/netty/handler/codec/dns/DnsOptPseudoRecord;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/dns/DefaultDnsRecordEncoder;->encodeRecord0(Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/buffer/ByteBuf;)V

    const/4 p1, 0x0

    .line 79
    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method private encodePtrRecord(Lio/netty/handler/codec/dns/DnsPtrRecord;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/dns/DefaultDnsRecordEncoder;->encodeRecord0(Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/buffer/ByteBuf;)V

    .line 74
    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsPtrRecord;->hostname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/dns/DefaultDnsRecordEncoder;->encodeName(Ljava/lang/String;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method private encodeRawRecord(Lio/netty/handler/codec/dns/DnsRawRecord;Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/dns/DefaultDnsRecordEncoder;->encodeRecord0(Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/buffer/ByteBuf;)V

    .line 136
    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsRawRecord;->content()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 139
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 140
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    invoke-virtual {p2, p1, v1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method private encodeRecord0(Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsRecord;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/netty/handler/codec/dns/DefaultDnsRecordEncoder;->encodeName(Ljava/lang/String;Lio/netty/buffer/ByteBuf;)V

    .line 67
    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsRecord;->type()Lio/netty/handler/codec/dns/DnsRecordType;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/dns/DnsRecordType;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 68
    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsRecord;->dnsClass()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 69
    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsRecord;->timeToLive()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method private static padWithZeros(BI)B
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 186
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lowOrderBitsToPreserve: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    return p0

    :pswitch_1
    and-int/lit16 p0, p0, 0xfe

    :goto_0
    int-to-byte p0, p0

    return p0

    :pswitch_2
    and-int/lit16 p0, p0, 0xfc

    goto :goto_0

    :pswitch_3
    and-int/lit16 p0, p0, 0xf8

    goto :goto_0

    :pswitch_4
    and-int/lit16 p0, p0, 0xf0

    goto :goto_0

    :pswitch_5
    and-int/lit16 p0, p0, 0xe0

    goto :goto_0

    :pswitch_6
    and-int/lit16 p0, p0, 0xc0

    goto :goto_0

    :pswitch_7
    and-int/lit16 p0, p0, 0x80

    goto :goto_0

    :pswitch_8
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected encodeName(Ljava/lang/String;Lio/netty/buffer/ByteBuf;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "."

    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    return-void

    :cond_0
    const-string v0, "\\."

    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 151
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 152
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 158
    :cond_1
    invoke-virtual {p2, v4}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 159
    invoke-static {p2, v3}, Lio/netty/buffer/ByteBufUtil;->writeAscii(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :cond_2
    :goto_1
    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public final encodeQuestion(Lio/netty/handler/codec/dns/DnsQuestion;Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsQuestion;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/netty/handler/codec/dns/DefaultDnsRecordEncoder;->encodeName(Ljava/lang/String;Lio/netty/buffer/ByteBuf;)V

    .line 44
    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsQuestion;->type()Lio/netty/handler/codec/dns/DnsRecordType;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/dns/DnsRecordType;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 45
    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsQuestion;->dnsClass()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public encodeRecord(Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    instance-of v0, p1, Lio/netty/handler/codec/dns/DnsQuestion;

    if-eqz v0, :cond_0

    .line 51
    check-cast p1, Lio/netty/handler/codec/dns/DnsQuestion;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/dns/DefaultDnsRecordEncoder;->encodeQuestion(Lio/netty/handler/codec/dns/DnsQuestion;Lio/netty/buffer/ByteBuf;)V

    goto :goto_0

    .line 52
    :cond_0
    instance-of v0, p1, Lio/netty/handler/codec/dns/DnsPtrRecord;

    if-eqz v0, :cond_1

    .line 53
    check-cast p1, Lio/netty/handler/codec/dns/DnsPtrRecord;

    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/dns/DefaultDnsRecordEncoder;->encodePtrRecord(Lio/netty/handler/codec/dns/DnsPtrRecord;Lio/netty/buffer/ByteBuf;)V

    goto :goto_0

    .line 54
    :cond_1
    instance-of v0, p1, Lio/netty/handler/codec/dns/DnsOptEcsRecord;

    if-eqz v0, :cond_2

    .line 55
    check-cast p1, Lio/netty/handler/codec/dns/DnsOptEcsRecord;

    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/dns/DefaultDnsRecordEncoder;->encodeOptEcsRecord(Lio/netty/handler/codec/dns/DnsOptEcsRecord;Lio/netty/buffer/ByteBuf;)V

    goto :goto_0

    .line 56
    :cond_2
    instance-of v0, p1, Lio/netty/handler/codec/dns/DnsOptPseudoRecord;

    if-eqz v0, :cond_3

    .line 57
    check-cast p1, Lio/netty/handler/codec/dns/DnsOptPseudoRecord;

    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/dns/DefaultDnsRecordEncoder;->encodeOptPseudoRecord(Lio/netty/handler/codec/dns/DnsOptPseudoRecord;Lio/netty/buffer/ByteBuf;)V

    goto :goto_0

    .line 58
    :cond_3
    instance-of v0, p1, Lio/netty/handler/codec/dns/DnsRawRecord;

    if-eqz v0, :cond_4

    .line 59
    check-cast p1, Lio/netty/handler/codec/dns/DnsRawRecord;

    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/dns/DefaultDnsRecordEncoder;->encodeRawRecord(Lio/netty/handler/codec/dns/DnsRawRecord;Lio/netty/buffer/ByteBuf;)V

    :goto_0
    return-void

    .line 61
    :cond_4
    new-instance p2, Lio/netty/handler/codec/UnsupportedMessageTypeException;

    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/netty/handler/codec/UnsupportedMessageTypeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
