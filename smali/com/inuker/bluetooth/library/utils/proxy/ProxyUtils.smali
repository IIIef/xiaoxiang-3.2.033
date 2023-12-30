.class public Lcom/inuker/bluetooth/library/utils/proxy/ProxyUtils;
.super Ljava/lang/Object;
.source "ProxyUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProxy(Ljava/lang/Object;Ljava/lang/Class;Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 20
    invoke-static {p0, p1, p2, v0, v0}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyUtils;->getProxy(Ljava/lang/Object;Ljava/lang/Class;Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;ZZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getProxy(Ljava/lang/Object;Ljava/lang/Class;Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;ZZ)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;",
            "ZZ)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 16
    invoke-static {p0, v0, p2, p3, p4}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyUtils;->getProxy(Ljava/lang/Object;[Ljava/lang/Class;Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;ZZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getProxy(Ljava/lang/Object;[Ljava/lang/Class;Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;ZZ)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;",
            "ZZ)TT;"
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lcom/inuker/bluetooth/library/utils/proxy/ProxyInvocationHandler;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyInvocationHandler;-><init>(Ljava/lang/Object;Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;ZZ)V

    invoke-static {v0, p1, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getUIProxy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyUtils;->getUIProxy(Ljava/lang/Object;[Ljava/lang/Class;Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getUIProxy(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x0

    .line 32
    invoke-static {p0, v0, p1}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyUtils;->getUIProxy(Ljava/lang/Object;[Ljava/lang/Class;Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getUIProxy(Ljava/lang/Object;Ljava/lang/Class;Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 36
    invoke-static {p0, v0, p2}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyUtils;->getUIProxy(Ljava/lang/Object;[Ljava/lang/Class;Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getUIProxy(Ljava/lang/Object;[Ljava/lang/Class;Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 40
    invoke-static {p0, p1, p2, v0, v1}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyUtils;->getProxy(Ljava/lang/Object;[Ljava/lang/Class;Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;ZZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getWeakUIProxy(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 24
    invoke-static {p0, p1, v0, v1, v1}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyUtils;->getProxy(Ljava/lang/Object;Ljava/lang/Class;Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;ZZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
