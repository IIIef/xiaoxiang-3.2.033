.class public final Lio/netty/handler/codec/smtp/SmtpRequests;
.super Ljava/lang/Object;
.source "SmtpRequests.java"


# static fields
.field private static final DATA:Lio/netty/handler/codec/smtp/SmtpRequest;

.field private static final FROM_NULL_SENDER:Lio/netty/util/AsciiString;

.field private static final HELP_NO_ARG:Lio/netty/handler/codec/smtp/SmtpRequest;

.field private static final NOOP:Lio/netty/handler/codec/smtp/SmtpRequest;

.field private static final QUIT:Lio/netty/handler/codec/smtp/SmtpRequest;

.field private static final RSET:Lio/netty/handler/codec/smtp/SmtpRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;

    sget-object v1, Lio/netty/handler/codec/smtp/SmtpCommand;->DATA:Lio/netty/handler/codec/smtp/SmtpCommand;

    invoke-direct {v0, v1}, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;-><init>(Lio/netty/handler/codec/smtp/SmtpCommand;)V

    sput-object v0, Lio/netty/handler/codec/smtp/SmtpRequests;->DATA:Lio/netty/handler/codec/smtp/SmtpRequest;

    .line 32
    new-instance v0, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;

    sget-object v1, Lio/netty/handler/codec/smtp/SmtpCommand;->NOOP:Lio/netty/handler/codec/smtp/SmtpCommand;

    invoke-direct {v0, v1}, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;-><init>(Lio/netty/handler/codec/smtp/SmtpCommand;)V

    sput-object v0, Lio/netty/handler/codec/smtp/SmtpRequests;->NOOP:Lio/netty/handler/codec/smtp/SmtpRequest;

    .line 33
    new-instance v0, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;

    sget-object v1, Lio/netty/handler/codec/smtp/SmtpCommand;->RSET:Lio/netty/handler/codec/smtp/SmtpCommand;

    invoke-direct {v0, v1}, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;-><init>(Lio/netty/handler/codec/smtp/SmtpCommand;)V

    sput-object v0, Lio/netty/handler/codec/smtp/SmtpRequests;->RSET:Lio/netty/handler/codec/smtp/SmtpRequest;

    .line 34
    new-instance v0, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;

    sget-object v1, Lio/netty/handler/codec/smtp/SmtpCommand;->HELP:Lio/netty/handler/codec/smtp/SmtpCommand;

    invoke-direct {v0, v1}, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;-><init>(Lio/netty/handler/codec/smtp/SmtpCommand;)V

    sput-object v0, Lio/netty/handler/codec/smtp/SmtpRequests;->HELP_NO_ARG:Lio/netty/handler/codec/smtp/SmtpRequest;

    .line 35
    new-instance v0, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;

    sget-object v1, Lio/netty/handler/codec/smtp/SmtpCommand;->QUIT:Lio/netty/handler/codec/smtp/SmtpCommand;

    invoke-direct {v0, v1}, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;-><init>(Lio/netty/handler/codec/smtp/SmtpCommand;)V

    sput-object v0, Lio/netty/handler/codec/smtp/SmtpRequests;->QUIT:Lio/netty/handler/codec/smtp/SmtpRequest;

    const-string v0, "FROM:<>"

    .line 36
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/smtp/SmtpRequests;->FROM_NULL_SENDER:Lio/netty/util/AsciiString;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static data()Lio/netty/handler/codec/smtp/SmtpRequest;
    .locals 1

    .line 63
    sget-object v0, Lio/netty/handler/codec/smtp/SmtpRequests;->DATA:Lio/netty/handler/codec/smtp/SmtpRequest;

    return-object v0
.end method

.method public static ehlo(Ljava/lang/CharSequence;)Lio/netty/handler/codec/smtp/SmtpRequest;
    .locals 4

    .line 49
    new-instance v0, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;

    sget-object v1, Lio/netty/handler/codec/smtp/SmtpCommand;->EHLO:Lio/netty/handler/codec/smtp/SmtpCommand;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;-><init>(Lio/netty/handler/codec/smtp/SmtpCommand;[Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static expn(Ljava/lang/CharSequence;)Lio/netty/handler/codec/smtp/SmtpRequest;
    .locals 4

    .line 125
    new-instance v0, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;

    sget-object v1, Lio/netty/handler/codec/smtp/SmtpCommand;->EXPN:Lio/netty/handler/codec/smtp/SmtpCommand;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    const-string v3, "mailingList"

    invoke-static {p0, v3}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;-><init>(Lio/netty/handler/codec/smtp/SmtpCommand;[Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static helo(Ljava/lang/CharSequence;)Lio/netty/handler/codec/smtp/SmtpRequest;
    .locals 4

    .line 42
    new-instance v0, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;

    sget-object v1, Lio/netty/handler/codec/smtp/SmtpCommand;->HELO:Lio/netty/handler/codec/smtp/SmtpCommand;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;-><init>(Lio/netty/handler/codec/smtp/SmtpCommand;[Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static help(Ljava/lang/String;)Lio/netty/handler/codec/smtp/SmtpRequest;
    .locals 4

    if-nez p0, :cond_0

    .line 77
    sget-object p0, Lio/netty/handler/codec/smtp/SmtpRequests;->HELP_NO_ARG:Lio/netty/handler/codec/smtp/SmtpRequest;

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;

    sget-object v1, Lio/netty/handler/codec/smtp/SmtpCommand;->HELP:Lio/netty/handler/codec/smtp/SmtpCommand;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;-><init>(Lio/netty/handler/codec/smtp/SmtpCommand;[Ljava/lang/CharSequence;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static varargs mail(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Lio/netty/handler/codec/smtp/SmtpRequest;
    .locals 6

    const/16 v0, 0x3e

    const-string v1, "FROM:<"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    .line 91
    array-length v4, p1

    if-nez v4, :cond_0

    goto :goto_2

    .line 95
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    add-int/2addr v5, v3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p0, :cond_1

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, Lio/netty/handler/codec/smtp/SmtpRequests;->FROM_NULL_SENDER:Lio/netty/util/AsciiString;

    :goto_0
    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    array-length p0, p1

    :goto_1
    if-ge v2, p0, :cond_2

    aget-object v0, p1, v2

    .line 98
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 100
    :cond_2
    new-instance p0, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;

    sget-object p1, Lio/netty/handler/codec/smtp/SmtpCommand;->MAIL:Lio/netty/handler/codec/smtp/SmtpCommand;

    invoke-direct {p0, p1, v4}, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;-><init>(Lio/netty/handler/codec/smtp/SmtpCommand;Ljava/util/List;)V

    return-object p0

    .line 92
    :cond_3
    :goto_2
    new-instance p1, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;

    sget-object v4, Lio/netty/handler/codec/smtp/SmtpCommand;->MAIL:Lio/netty/handler/codec/smtp/SmtpCommand;

    new-array v3, v3, [Ljava/lang/CharSequence;

    if-eqz p0, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_4
    sget-object p0, Lio/netty/handler/codec/smtp/SmtpRequests;->FROM_NULL_SENDER:Lio/netty/util/AsciiString;

    :goto_3
    check-cast p0, Ljava/lang/CharSequence;

    aput-object p0, v3, v2

    invoke-direct {p1, v4, v3}, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;-><init>(Lio/netty/handler/codec/smtp/SmtpCommand;[Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public static noop()Lio/netty/handler/codec/smtp/SmtpRequest;
    .locals 1

    .line 56
    sget-object v0, Lio/netty/handler/codec/smtp/SmtpRequests;->NOOP:Lio/netty/handler/codec/smtp/SmtpRequest;

    return-object v0
.end method

.method public static quit()Lio/netty/handler/codec/smtp/SmtpRequest;
    .locals 1

    .line 84
    sget-object v0, Lio/netty/handler/codec/smtp/SmtpRequests;->QUIT:Lio/netty/handler/codec/smtp/SmtpRequest;

    return-object v0
.end method

.method public static varargs rcpt(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Lio/netty/handler/codec/smtp/SmtpRequest;
    .locals 6

    const-string v0, "recipient"

    .line 108
    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x3e

    const-string v1, "TO:<"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 109
    array-length v4, p1

    if-nez v4, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    add-int/2addr v5, v3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    array-length p0, p1

    :goto_0
    if-ge v2, p0, :cond_1

    aget-object v0, p1, v2

    .line 115
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    :cond_1
    new-instance p0, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;

    sget-object p1, Lio/netty/handler/codec/smtp/SmtpCommand;->RCPT:Lio/netty/handler/codec/smtp/SmtpCommand;

    invoke-direct {p0, p1, v4}, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;-><init>(Lio/netty/handler/codec/smtp/SmtpCommand;Ljava/util/List;)V

    return-object p0

    .line 110
    :cond_2
    :goto_1
    new-instance p1, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;

    sget-object v4, Lio/netty/handler/codec/smtp/SmtpCommand;->RCPT:Lio/netty/handler/codec/smtp/SmtpCommand;

    new-array v3, v3, [Ljava/lang/CharSequence;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-direct {p1, v4, v3}, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;-><init>(Lio/netty/handler/codec/smtp/SmtpCommand;[Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public static rset()Lio/netty/handler/codec/smtp/SmtpRequest;
    .locals 1

    .line 70
    sget-object v0, Lio/netty/handler/codec/smtp/SmtpRequests;->RSET:Lio/netty/handler/codec/smtp/SmtpRequest;

    return-object v0
.end method

.method public static vrfy(Ljava/lang/CharSequence;)Lio/netty/handler/codec/smtp/SmtpRequest;
    .locals 4

    .line 132
    new-instance v0, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;

    sget-object v1, Lio/netty/handler/codec/smtp/SmtpCommand;->VRFY:Lio/netty/handler/codec/smtp/SmtpCommand;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    const-string v3, "user"

    invoke-static {p0, v3}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;-><init>(Lio/netty/handler/codec/smtp/SmtpCommand;[Ljava/lang/CharSequence;)V

    return-object v0
.end method
