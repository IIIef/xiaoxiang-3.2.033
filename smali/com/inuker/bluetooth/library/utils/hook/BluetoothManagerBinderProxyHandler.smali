.class public Lcom/inuker/bluetooth/library/utils/hook/BluetoothManagerBinderProxyHandler;
.super Ljava/lang/Object;
.source "BluetoothManagerBinderProxyHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private iBinder:Landroid/os/IBinder;

.field private iBluetoothManager:Ljava/lang/Object;

.field private iBluetoothManagerClaz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/inuker/bluetooth/library/utils/hook/BluetoothManagerBinderProxyHandler;->iBinder:Landroid/os/IBinder;

    const-string v0, "android.bluetooth.IBluetoothManager"

    .line 26
    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/hook/utils/HookUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/inuker/bluetooth/library/utils/hook/BluetoothManagerBinderProxyHandler;->iBluetoothManagerClaz:Ljava/lang/Class;

    const-string v0, "android.bluetooth.IBluetoothManager$Stub"

    .line 27
    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/hook/utils/HookUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 28
    const-class v3, Landroid/os/IBinder;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "asInterface"

    invoke-static {v0, v3, v2}, Lcom/inuker/bluetooth/library/utils/hook/utils/HookUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 p1, 0x0

    .line 29
    invoke-static {v0, p1, v1}, Lcom/inuker/bluetooth/library/utils/hook/utils/HookUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/inuker/bluetooth/library/utils/hook/BluetoothManagerBinderProxyHandler;->iBluetoothManager:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 34
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "IBinder method: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "queryLocalInterface"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Class;

    const-class p3, Landroid/os/IBinder;

    aput-object p3, p2, v3

    const-class p3, Landroid/os/IInterface;

    aput-object p3, p2, v0

    const/4 p3, 0x2

    iget-object v0, p0, Lcom/inuker/bluetooth/library/utils/hook/BluetoothManagerBinderProxyHandler;->iBluetoothManagerClaz:Ljava/lang/Class;

    aput-object v0, p2, p3

    new-instance p3, Lcom/inuker/bluetooth/library/utils/hook/BluetoothManagerProxyHandler;

    iget-object v0, p0, Lcom/inuker/bluetooth/library/utils/hook/BluetoothManagerBinderProxyHandler;->iBluetoothManager:Ljava/lang/Object;

    invoke-direct {p3, v0}, Lcom/inuker/bluetooth/library/utils/hook/BluetoothManagerProxyHandler;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, p2, p3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/inuker/bluetooth/library/utils/hook/BluetoothManagerBinderProxyHandler;->iBinder:Landroid/os/IBinder;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
