.class final Lio/netty/handler/codec/http/HttpClientCodec$Decoder;
.super Lio/netty/handler/codec/http/HttpResponseDecoder;
.source "HttpClientCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/HttpClientCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Decoder"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http/HttpClientCodec;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http/HttpClientCodec;IIIZ)V
    .locals 0

    .line 180
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lio/netty/handler/codec/http/HttpClientCodec;

    .line 181
    invoke-direct {p0, p2, p3, p4, p5}, Lio/netty/handler/codec/http/HttpResponseDecoder;-><init>(IIIZ)V

    return-void
.end method

.method constructor <init>(Lio/netty/handler/codec/http/HttpClientCodec;IIIZI)V
    .locals 6

    .line 185
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lio/netty/handler/codec/http/HttpClientCodec;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 186
    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/HttpResponseDecoder;-><init>(IIIZI)V

    return-void
.end method

.method private decrement(Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 218
    :cond_0
    instance-of p1, p1, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz p1, :cond_1

    .line 219
    iget-object p1, p0, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lio/netty/handler/codec/http/HttpClientCodec;

    invoke-static {p1}, Lio/netty/handler/codec/http/HttpClientCodec;->access$400(Lio/netty/handler/codec/http/HttpClientCodec;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    :cond_1
    return-void
.end method


# virtual methods
.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 282
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpResponseDecoder;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 284
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lio/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpClientCodec;->access$300(Lio/netty/handler/codec/http/HttpClientCodec;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lio/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpClientCodec;->access$400(Lio/netty/handler/codec/http/HttpClientCodec;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 287
    new-instance v2, Lio/netty/handler/codec/PrematureChannelClosureException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel gone inactive with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " missing response(s)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lio/netty/handler/codec/PrematureChannelClosureException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    :cond_0
    return-void
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 1
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

    .line 192
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lio/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpClientCodec;->access$100(Lio/netty/handler/codec/http/HttpClientCodec;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;->actualReadableBytes()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 199
    :cond_0
    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->readBytes(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 201
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 202
    invoke-super {p0, p1, p2, p3}, Lio/netty/handler/codec/http/HttpResponseDecoder;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    .line 203
    iget-object p1, p0, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lio/netty/handler/codec/http/HttpClientCodec;

    invoke-static {p1}, Lio/netty/handler/codec/http/HttpClientCodec;->access$300(Lio/netty/handler/codec/http/HttpClientCodec;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 204
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_2

    .line 206
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;->decrement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method protected isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 5

    .line 225
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http/HttpResponse;

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_5

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 234
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lio/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpClientCodec;->access$200(Lio/netty/handler/codec/http/HttpClientCodec;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http/HttpMethod;

    .line 236
    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpMethod;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x43

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const/16 v0, 0x48

    if-eq v2, v0, :cond_1

    goto :goto_0

    .line 243
    :cond_1
    sget-object v0, Lio/netty/handler/codec/http/HttpMethod;->HEAD:Lio/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v4

    :cond_2
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_4

    .line 263
    sget-object v0, Lio/netty/handler/codec/http/HttpMethod;->CONNECT:Lio/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 266
    iget-object p1, p0, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lio/netty/handler/codec/http/HttpClientCodec;

    invoke-static {p1}, Lio/netty/handler/codec/http/HttpClientCodec;->access$500(Lio/netty/handler/codec/http/HttpClientCodec;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 267
    iget-object p1, p0, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lio/netty/handler/codec/http/HttpClientCodec;

    invoke-static {p1, v4}, Lio/netty/handler/codec/http/HttpClientCodec;->access$102(Lio/netty/handler/codec/http/HttpClientCodec;Z)Z

    .line 268
    iget-object p1, p0, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lio/netty/handler/codec/http/HttpClientCodec;

    invoke-static {p1}, Lio/netty/handler/codec/http/HttpClientCodec;->access$200(Lio/netty/handler/codec/http/HttpClientCodec;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    :cond_3
    return v4

    .line 276
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpResponseDecoder;->isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result p1

    return p1

    .line 229
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpResponseDecoder;->isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result p1

    return p1
.end method
