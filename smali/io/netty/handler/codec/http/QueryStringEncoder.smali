.class public Lio/netty/handler/codec/http/QueryStringEncoder;
.super Ljava/lang/Object;
.source "QueryStringEncoder.java"


# instance fields
.field private final charsetName:Ljava/lang/String;

.field private hasParams:Z

.field private final uriBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 49
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/QueryStringEncoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->uriBuilder:Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->charsetName:Ljava/lang/String;

    return-void
.end method

.method private static appendComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 100
    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0x2b

    .line 105
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 107
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 110
    invoke-virtual {p2, p0, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const-string v1, "%20"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v2, :cond_2

    .line 114
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, p1, :cond_1

    .line 116
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    return-void

    .line 102
    :catch_0
    new-instance p0, Ljava/nio/charset/UnsupportedCharsetException;

    invoke-direct {p0, p1}, Ljava/nio/charset/UnsupportedCharsetException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "name"

    .line 65
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    iget-boolean v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->hasParams:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->uriBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->uriBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->hasParams:Z

    .line 72
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->charsetName:Ljava/lang/String;

    iget-object v1, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->uriBuilder:Ljava/lang/StringBuilder;

    invoke-static {p1, v0, v1}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    if-eqz p2, :cond_1

    .line 74
    iget-object p1, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->uriBuilder:Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    iget-object p1, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->charsetName:Ljava/lang/String;

    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->uriBuilder:Ljava/lang/StringBuilder;

    invoke-static {p2, p1, v0}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->uriBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/QueryStringEncoder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
