.class final Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;
.super Ljava/lang/Object;
.source "GlobalChannelTrafficShapingHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ToSend"
.end annotation


# instance fields
.field final promise:Lio/netty/channel/ChannelPromise;

.field final relativeTimeAction:J

.field final size:J

.field final toSend:Ljava/lang/Object;


# direct methods
.method private constructor <init>(JLjava/lang/Object;JLio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    iput-wide p1, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;->relativeTimeAction:J

    .line 608
    iput-object p3, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;->toSend:Ljava/lang/Object;

    .line 609
    iput-wide p4, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;->size:J

    .line 610
    iput-object p6, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;->promise:Lio/netty/channel/ChannelPromise;

    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/Object;JLio/netty/channel/ChannelPromise;Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$1;)V
    .locals 0

    .line 600
    invoke-direct/range {p0 .. p6}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;-><init>(JLjava/lang/Object;JLio/netty/channel/ChannelPromise;)V

    return-void
.end method
