.class final Lio/netty/handler/codec/http2/Http2HeadersEncoder$2;
.super Ljava/lang/Object;
.source "Http2HeadersEncoder.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2HeadersEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSensitive(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
