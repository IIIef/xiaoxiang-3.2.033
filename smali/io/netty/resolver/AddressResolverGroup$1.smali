.class Lio/netty/resolver/AddressResolverGroup$1;
.super Ljava/lang/Object;
.source "AddressResolverGroup.java"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/resolver/AddressResolverGroup;->getResolver(Lio/netty/util/concurrent/EventExecutor;)Lio/netty/resolver/AddressResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/resolver/AddressResolverGroup;

.field final synthetic val$executor:Lio/netty/util/concurrent/EventExecutor;

.field final synthetic val$newResolver:Lio/netty/resolver/AddressResolver;


# direct methods
.method constructor <init>(Lio/netty/resolver/AddressResolverGroup;Lio/netty/util/concurrent/EventExecutor;Lio/netty/resolver/AddressResolver;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lio/netty/resolver/AddressResolverGroup$1;->this$0:Lio/netty/resolver/AddressResolverGroup;

    iput-object p2, p0, Lio/netty/resolver/AddressResolverGroup$1;->val$executor:Lio/netty/util/concurrent/EventExecutor;

    iput-object p3, p0, Lio/netty/resolver/AddressResolverGroup$1;->val$newResolver:Lio/netty/resolver/AddressResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    iget-object p1, p0, Lio/netty/resolver/AddressResolverGroup$1;->this$0:Lio/netty/resolver/AddressResolverGroup;

    invoke-static {p1}, Lio/netty/resolver/AddressResolverGroup;->access$000(Lio/netty/resolver/AddressResolverGroup;)Ljava/util/Map;

    move-result-object p1

    monitor-enter p1

    .line 79
    :try_start_0
    iget-object v0, p0, Lio/netty/resolver/AddressResolverGroup$1;->this$0:Lio/netty/resolver/AddressResolverGroup;

    invoke-static {v0}, Lio/netty/resolver/AddressResolverGroup;->access$000(Lio/netty/resolver/AddressResolverGroup;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lio/netty/resolver/AddressResolverGroup$1;->val$executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-object p1, p0, Lio/netty/resolver/AddressResolverGroup$1;->val$newResolver:Lio/netty/resolver/AddressResolver;

    invoke-interface {p1}, Lio/netty/resolver/AddressResolver;->close()V

    return-void

    :catchall_0
    move-exception v0

    .line 80
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
