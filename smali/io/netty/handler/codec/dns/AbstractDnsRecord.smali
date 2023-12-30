.class public abstract Lio/netty/handler/codec/dns/AbstractDnsRecord;
.super Ljava/lang/Object;
.source "AbstractDnsRecord.java"

# interfaces
.implements Lio/netty/handler/codec/dns/DnsRecord;


# instance fields
.field private final dnsClass:S

.field private hashCode:I

.field private final name:Ljava/lang/String;

.field private final timeToLive:J

.field private final type:Lio/netty/handler/codec/dns/DnsRecordType;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsRecordType;IJ)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "timeToLive"

    .line 66
    invoke-static {p4, p5, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(JLjava/lang/String;)J

    const-string v0, "name"

    .line 71
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/netty/handler/codec/dns/AbstractDnsRecord;->appendTrailingDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/dns/AbstractDnsRecord;->name:Ljava/lang/String;

    const-string p1, "type"

    .line 72
    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/dns/DnsRecordType;

    iput-object p1, p0, Lio/netty/handler/codec/dns/AbstractDnsRecord;->type:Lio/netty/handler/codec/dns/DnsRecordType;

    int-to-short p1, p3

    .line 73
    iput-short p1, p0, Lio/netty/handler/codec/dns/AbstractDnsRecord;->dnsClass:S

    .line 74
    iput-wide p4, p0, Lio/netty/handler/codec/dns/AbstractDnsRecord;->timeToLive:J

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsRecordType;J)V
    .locals 6

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    .line 46
    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/dns/AbstractDnsRecord;-><init>(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsRecordType;IJ)V

    return-void
.end method

.method private static appendTrailingDot(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 78
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public dnsClass()I
    .locals 2

    .line 96
    iget-short v0, p0, Lio/netty/handler/codec/dns/AbstractDnsRecord;->dnsClass:S

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 110
    :cond_0
    instance-of v1, p1, Lio/netty/handler/codec/dns/DnsRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 114
    :cond_1
    check-cast p1, Lio/netty/handler/codec/dns/DnsRecord;

    .line 115
    iget v1, p0, Lio/netty/handler/codec/dns/AbstractDnsRecord;->hashCode:I

    if-eqz v1, :cond_2

    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 120
    :cond_2
    invoke-virtual {p0}, Lio/netty/handler/codec/dns/AbstractDnsRecord;->type()Lio/netty/handler/codec/dns/DnsRecordType;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/dns/DnsRecordType;->intValue()I

    move-result v1

    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsRecord;->type()Lio/netty/handler/codec/dns/DnsRecordType;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/handler/codec/dns/DnsRecordType;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 121
    invoke-virtual {p0}, Lio/netty/handler/codec/dns/AbstractDnsRecord;->dnsClass()I

    move-result v1

    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsRecord;->dnsClass()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 122
    invoke-virtual {p0}, Lio/netty/handler/codec/dns/AbstractDnsRecord;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsRecord;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 127
    iget v0, p0, Lio/netty/handler/codec/dns/AbstractDnsRecord;->hashCode:I

    if-eqz v0, :cond_0

    return v0

    .line 132
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/dns/AbstractDnsRecord;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lio/netty/handler/codec/dns/AbstractDnsRecord;->type()Lio/netty/handler/codec/dns/DnsRecordType;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/dns/DnsRecordType;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lio/netty/handler/codec/dns/AbstractDnsRecord;->dnsClass()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lio/netty/handler/codec/dns/AbstractDnsRecord;->hashCode:I

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lio/netty/handler/codec/dns/AbstractDnsRecord;->name:Ljava/lang/String;

    return-object v0
.end method

.method public timeToLive()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lio/netty/handler/codec/dns/AbstractDnsRecord;->timeToLive:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 139
    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p0}, Lio/netty/handler/codec/dns/AbstractDnsRecord;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p0}, Lio/netty/handler/codec/dns/AbstractDnsRecord;->timeToLive()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p0}, Lio/netty/handler/codec/dns/AbstractDnsRecord;->dnsClass()I

    move-result v2

    invoke-static {v0, v2}, Lio/netty/handler/codec/dns/DnsMessageUtil;->appendRecordClass(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 147
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p0}, Lio/netty/handler/codec/dns/AbstractDnsRecord;->type()Lio/netty/handler/codec/dns/DnsRecordType;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/dns/DnsRecordType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    .line 149
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Lio/netty/handler/codec/dns/DnsRecordType;
    .locals 1

    .line 91
    iget-object v0, p0, Lio/netty/handler/codec/dns/AbstractDnsRecord;->type:Lio/netty/handler/codec/dns/DnsRecordType;

    return-object v0
.end method
