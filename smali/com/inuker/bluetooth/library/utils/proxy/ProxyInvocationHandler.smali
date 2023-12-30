.class public Lcom/inuker/bluetooth/library/utils/proxy/ProxyInvocationHandler;
.super Ljava/lang/Object;
.source "ProxyInvocationHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;
.implements Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;
.implements Landroid/os/Handler$Callback;


# instance fields
.field private handler:Landroid/os/Handler;

.field private interceptor:Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;

.field private postUI:Z

.field private subject:Ljava/lang/Object;

.field private weakRef:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyInvocationHandler;-><init>(Ljava/lang/Object;Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyInvocationHandler;-><init>(Ljava/lang/Object;Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyInvocationHandler;-><init>(Ljava/lang/Object;Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;ZZ)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean p3, p0, Lcom/inuker/bluetooth/library/utils/proxy/ProxyInvocationHandler;->weakRef:Z

    .line 43
    iput-object p2, p0, Lcom/inuker/bluetooth/library/utils/proxy/ProxyInvocationHandler;->interceptor:Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;

    .line 44
    iput-boolean p4, p0, Lcom/inuker/bluetooth/library/utils/proxy/ProxyInvocationHandler;->postUI:Z

    .line 45
    invoke-direct {p0, p1}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyInvocationHandler;->getObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/inuker/bluetooth/library/utils/proxy/ProxyInvocationHandler;->subject:Ljava/lang/Object;

    .line 46
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/inuker/bluetooth/library/utils/proxy/ProxyInvocationHandler;->handler:Landroid/os/Handler;

    return-void
.end method

.method private getObject()Ljava/lang/Object;
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/inuker/bluetooth/library/utils/proxy/ProxyInvocationHandler;->weakRef:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/inuker/bluetooth/library/utils/proxy/ProxyInvocationHandler;->subject:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/inuker/bluetooth/library/utils/proxy/ProxyInvocationHandler;->subject:Ljava/lang/Object;

    return-object v0
.end method

.method private getObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/inuker/bluetooth/library/utils/proxy/ProxyInvocationHandler;->weakRef:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method private postSafeInvoke(Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;)Ljava/lang/Object;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/inuker/bluetooth/library/utils/proxy/ProxyInvocationHandler;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private safeInvoke(Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;)Ljava/lang/Object;
    .locals 0

    .line 93
    :try_start_0
    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;->safeInvoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 102
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;->safeInvoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyInvocationHandler;->getObject()Ljava/lang/Object;

    move-result-object p1

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyInvocationHandler;->onIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;

    invoke-direct {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 55
    iget-boolean p1, p0, Lcom/inuker/bluetooth/library/utils/proxy/ProxyInvocationHandler;->postUI:Z

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyInvocationHandler;->postSafeInvoke(Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyInvocationHandler;->safeInvoke(Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/inuker/bluetooth/library/utils/proxy/ProxyInvocationHandler;->interceptor:Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;

    if-eqz v0, :cond_0

    .line 65
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;->onIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 67
    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
