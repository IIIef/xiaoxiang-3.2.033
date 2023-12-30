.class public Lcom/inuker/bluetooth/library/utils/hook/compat/ServiceManagerCompat;
.super Ljava/lang/Object;
.source "ServiceManagerCompat.java"


# static fields
.field private static getService:Ljava/lang/reflect/Method;

.field private static sCache:Ljava/lang/reflect/Field;

.field private static serviceManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.os.ServiceManager"

    .line 21
    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/hook/utils/HookUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/inuker/bluetooth/library/utils/hook/compat/ServiceManagerCompat;->serviceManager:Ljava/lang/Class;

    const-string v1, "sCache"

    .line 23
    invoke-static {v0, v1}, Lcom/inuker/bluetooth/library/utils/hook/utils/HookUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/inuker/bluetooth/library/utils/hook/compat/ServiceManagerCompat;->sCache:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 26
    sget-object v0, Lcom/inuker/bluetooth/library/utils/hook/compat/ServiceManagerCompat;->serviceManager:Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "getService"

    invoke-static {v0, v2, v1}, Lcom/inuker/bluetooth/library/utils/hook/utils/HookUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/inuker/bluetooth/library/utils/hook/compat/ServiceManagerCompat;->getService:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCacheField()Ljava/lang/reflect/Field;
    .locals 1

    .line 34
    sget-object v0, Lcom/inuker/bluetooth/library/utils/hook/compat/ServiceManagerCompat;->sCache:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public static getCacheValue()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/inuker/bluetooth/library/utils/hook/compat/ServiceManagerCompat;->sCache:Ljava/lang/reflect/Field;

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/hook/utils/HookUtils;->getValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public static getService()Ljava/lang/reflect/Method;
    .locals 1

    .line 42
    sget-object v0, Lcom/inuker/bluetooth/library/utils/hook/compat/ServiceManagerCompat;->getService:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static getServiceManager()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/inuker/bluetooth/library/utils/hook/compat/ServiceManagerCompat;->serviceManager:Ljava/lang/Class;

    return-object v0
.end method
