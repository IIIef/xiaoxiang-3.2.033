.class final Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;
.super Lio/netty/handler/codec/http2/HpackHeaderField;
.source "HpackEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/HpackEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeaderEntry"
.end annotation


# instance fields
.field after:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

.field before:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

.field hash:I

.field index:I

.field next:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;


# direct methods
.method constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;)V
    .locals 0

    .line 480
    invoke-direct {p0, p2, p3}, Lio/netty/handler/codec/http2/HpackHeaderField;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 481
    iput p4, p0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->index:I

    .line 482
    iput p1, p0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->hash:I

    .line 483
    iput-object p5, p0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->next:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;)V
    .locals 0

    .line 465
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->addBefore(Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;)V

    return-void
.end method

.method static synthetic access$100(Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;)V
    .locals 0

    .line 465
    invoke-direct {p0}, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->remove()V

    return-void
.end method

.method private addBefore(Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->after:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    .line 502
    iget-object p1, p1, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->before:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iput-object p1, p0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->before:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    .line 503
    iput-object p0, p1, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->after:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    .line 504
    iget-object p1, p0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->after:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iput-object p0, p1, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->before:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    return-void
.end method

.method private remove()V
    .locals 2

    .line 490
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->before:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->after:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iput-object v1, v0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->after:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    .line 491
    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->after:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iput-object v0, v1, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->before:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    const/4 v0, 0x0

    .line 492
    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->before:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    .line 493
    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->after:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    .line 494
    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->next:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    return-void
.end method
