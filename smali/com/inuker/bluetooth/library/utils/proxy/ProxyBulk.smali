.class public Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;
.super Ljava/lang/Object;
.source "ProxyBulk.java"


# instance fields
.field public args:[Ljava/lang/Object;

.field public method:Ljava/lang/reflect/Method;

.field public object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;->object:Ljava/lang/Object;

    .line 18
    iput-object p2, p0, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;->method:Ljava/lang/reflect/Method;

    .line 19
    iput-object p3, p0, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;->args:[Ljava/lang/Object;

    return-void
.end method

.method public static safeInvoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p0, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;

    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;->safeInvoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public safeInvoke()Ljava/lang/Object;
    .locals 3

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;->method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;->object:Ljava/lang/Object;

    iget-object v2, p0, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;->args:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 28
    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
