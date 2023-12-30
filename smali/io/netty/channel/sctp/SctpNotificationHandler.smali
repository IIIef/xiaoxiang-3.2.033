.class public final Lio/netty/channel/sctp/SctpNotificationHandler;
.super Lcom/sun/nio/sctp/AbstractNotificationHandler;
.source "SctpNotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/nio/sctp/AbstractNotificationHandler<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final sctpChannel:Lio/netty/channel/sctp/SctpChannel;


# direct methods
.method public constructor <init>(Lio/netty/channel/sctp/SctpChannel;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/sun/nio/sctp/AbstractNotificationHandler;-><init>()V

    const-string v0, "sctpChannel"

    .line 39
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Lio/netty/channel/sctp/SctpNotificationHandler;->sctpChannel:Lio/netty/channel/sctp/SctpChannel;

    return-void
.end method

.method private fireEvent(Lcom/sun/nio/sctp/Notification;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lio/netty/channel/sctp/SctpNotificationHandler;->sctpChannel:Lio/netty/channel/sctp/SctpChannel;

    invoke-interface {v0}, Lio/netty/channel/sctp/SctpChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    return-void
.end method


# virtual methods
.method public handleNotification(Lcom/sun/nio/sctp/AssociationChangeNotification;Ljava/lang/Object;)Lcom/sun/nio/sctp/HandlerResult;
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lio/netty/channel/sctp/SctpNotificationHandler;->fireEvent(Lcom/sun/nio/sctp/Notification;)V

    .line 47
    sget-object p1, Lcom/sun/nio/sctp/HandlerResult;->CONTINUE:Lcom/sun/nio/sctp/HandlerResult;

    return-object p1
.end method

.method public handleNotification(Lcom/sun/nio/sctp/PeerAddressChangeNotification;Ljava/lang/Object;)Lcom/sun/nio/sctp/HandlerResult;
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lio/netty/channel/sctp/SctpNotificationHandler;->fireEvent(Lcom/sun/nio/sctp/Notification;)V

    .line 53
    sget-object p1, Lcom/sun/nio/sctp/HandlerResult;->CONTINUE:Lcom/sun/nio/sctp/HandlerResult;

    return-object p1
.end method

.method public handleNotification(Lcom/sun/nio/sctp/SendFailedNotification;Ljava/lang/Object;)Lcom/sun/nio/sctp/HandlerResult;
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lio/netty/channel/sctp/SctpNotificationHandler;->fireEvent(Lcom/sun/nio/sctp/Notification;)V

    .line 59
    sget-object p1, Lcom/sun/nio/sctp/HandlerResult;->CONTINUE:Lcom/sun/nio/sctp/HandlerResult;

    return-object p1
.end method

.method public handleNotification(Lcom/sun/nio/sctp/ShutdownNotification;Ljava/lang/Object;)Lcom/sun/nio/sctp/HandlerResult;
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lio/netty/channel/sctp/SctpNotificationHandler;->fireEvent(Lcom/sun/nio/sctp/Notification;)V

    .line 65
    iget-object p1, p0, Lio/netty/channel/sctp/SctpNotificationHandler;->sctpChannel:Lio/netty/channel/sctp/SctpChannel;

    invoke-interface {p1}, Lio/netty/channel/sctp/SctpChannel;->close()Lio/netty/channel/ChannelFuture;

    .line 66
    sget-object p1, Lcom/sun/nio/sctp/HandlerResult;->RETURN:Lcom/sun/nio/sctp/HandlerResult;

    return-object p1
.end method
