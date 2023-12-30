.class final Lio/netty/channel/ChannelHandlerMask$2;
.super Ljava/lang/Object;
.source "ChannelHandlerMask.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/ChannelHandlerMask;->isSkippable(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$handlerType:Ljava/lang/Class;

.field final synthetic val$methodName:Ljava/lang/String;

.field final synthetic val$paramTypes:[Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lio/netty/channel/ChannelHandlerMask$2;->val$handlerType:Ljava/lang/Class;

    iput-object p2, p0, Lio/netty/channel/ChannelHandlerMask$2;->val$methodName:Ljava/lang/String;

    iput-object p3, p0, Lio/netty/channel/ChannelHandlerMask$2;->val$paramTypes:[Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lio/netty/channel/ChannelHandlerMask$2;->val$handlerType:Ljava/lang/Class;

    iget-object v1, p0, Lio/netty/channel/ChannelHandlerMask$2;->val$methodName:Ljava/lang/String;

    iget-object v2, p0, Lio/netty/channel/ChannelHandlerMask$2;->val$paramTypes:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-class v1, Lio/netty/channel/ChannelHandlerMask$Skip;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lio/netty/channel/ChannelHandlerMask$2;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
