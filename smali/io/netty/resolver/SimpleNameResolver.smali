.class public abstract Lio/netty/resolver/SimpleNameResolver;
.super Ljava/lang/Object;
.source "SimpleNameResolver.java"

# interfaces
.implements Lio/netty/resolver/NameResolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/resolver/NameResolver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final executor:Lio/netty/util/concurrent/EventExecutor;


# direct methods
.method protected constructor <init>(Lio/netty/util/concurrent/EventExecutor;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "executor"

    .line 41
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/util/concurrent/EventExecutor;

    iput-object p1, p0, Lio/netty/resolver/SimpleNameResolver;->executor:Lio/netty/util/concurrent/EventExecutor;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method protected abstract doResolve(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Promise<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doResolveAll(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected executor()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .line 49
    iget-object v0, p0, Lio/netty/resolver/SimpleNameResolver;->executor:Lio/netty/util/concurrent/EventExecutor;

    return-object v0
.end method

.method public final resolve(Ljava/lang/String;)Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lio/netty/resolver/SimpleNameResolver;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    .line 55
    invoke-virtual {p0, p1, v0}, Lio/netty/resolver/SimpleNameResolver;->resolve(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public resolve(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Promise<",
            "TT;>;)",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "promise"

    .line 60
    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lio/netty/resolver/SimpleNameResolver;->doResolve(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 66
    invoke-interface {p2, p1}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method

.method public final resolveAll(Ljava/lang/String;)Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lio/netty/resolver/SimpleNameResolver;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    .line 73
    invoke-virtual {p0, p1, v0}, Lio/netty/resolver/SimpleNameResolver;->resolveAll(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public resolveAll(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "promise"

    .line 78
    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lio/netty/resolver/SimpleNameResolver;->doResolveAll(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 84
    invoke-interface {p2, p1}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method
