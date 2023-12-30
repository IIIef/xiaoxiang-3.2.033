.class public final Lio/netty/handler/codec/http/HttpContentEncoder$Result;
.super Ljava/lang/Object;
.source "HttpContentEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/HttpContentEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private final contentEncoder:Lio/netty/channel/embedded/EmbeddedChannel;

.field private final targetContentEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/netty/channel/embedded/EmbeddedChannel;)V
    .locals 1

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "targetContentEncoding"

    .line 354
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "contentEncoder"

    .line 357
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 360
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpContentEncoder$Result;->targetContentEncoding:Ljava/lang/String;

    .line 361
    iput-object p2, p0, Lio/netty/handler/codec/http/HttpContentEncoder$Result;->contentEncoder:Lio/netty/channel/embedded/EmbeddedChannel;

    return-void
.end method


# virtual methods
.method public contentEncoder()Lio/netty/channel/embedded/EmbeddedChannel;
    .locals 1

    .line 369
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpContentEncoder$Result;->contentEncoder:Lio/netty/channel/embedded/EmbeddedChannel;

    return-object v0
.end method

.method public targetContentEncoding()Ljava/lang/String;
    .locals 1

    .line 365
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpContentEncoder$Result;->targetContentEncoding:Ljava/lang/String;

    return-object v0
.end method
