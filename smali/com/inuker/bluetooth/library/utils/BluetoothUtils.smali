.class public Lcom/inuker/bluetooth/library/utils/BluetoothUtils;
.super Ljava/lang/Object;
.source "BluetoothUtils.java"


# static fields
.field private static mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private static mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMainThread()Z
    .locals 2

    .line 199
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static closeBluetooth()Z
    .locals 1

    .line 102
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .line 121
    sget-object v0, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 122
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 124
    :cond_0
    sget-object v0, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public static getBluetoothManager()Landroid/bluetooth/BluetoothManager;
    .locals 2

    .line 110
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->isBleSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    sget-object v0, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_0

    .line 112
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bluetooth"

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    sput-object v0, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 115
    :cond_0
    sget-object v0, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBluetoothState()I
    .locals 1

    .line 89
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getBondState(Ljava/lang/String;)I
    .locals 1

    .line 165
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBluetoothManager()Landroid/bluetooth/BluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    :try_start_0
    invoke-static {p0}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    .line 169
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 171
    invoke-static {p0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static getBondedBluetoothClassicDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 178
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v1
.end method

.method public static getConnectStatus(Ljava/lang/String;)I
    .locals 2

    .line 152
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBluetoothManager()Landroid/bluetooth/BluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    :try_start_0
    invoke-static {p0}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const/4 v1, 0x7

    .line 156
    invoke-virtual {v0, p0, v1}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 158
    invoke-static {p0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getConnectedBluetoothLeDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBluetoothManager()Landroid/bluetooth/BluetoothManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x7

    .line 144
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 35
    invoke-static {}, Lcom/inuker/bluetooth/library/BluetoothContext;->get()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static getHandler()Landroid/os/Handler;
    .locals 2

    .line 39
    sget-object v0, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->mHandler:Landroid/os/Handler;

    .line 42
    :cond_0
    sget-object v0, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 128
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isBleSupported()Z
    .locals 2

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 79
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isBluetoothEnabled()Z
    .locals 2

    .line 85
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDeviceConnected(Ljava/lang/String;)Z
    .locals 3

    .line 191
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->isBleSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    .line 193
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBluetoothManager()Landroid/bluetooth/BluetoothManager;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, p0, v2}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static openBluetooth()Z
    .locals 1

    .line 94
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1

    .line 46
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static refreshGattCache(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 206
    :try_start_0
    const-class v2, Landroid/bluetooth/BluetoothGatt;

    const-string v3, "refresh"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 208
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v1, [Ljava/lang/Object;

    .line 209
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 213
    invoke-static {p0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 216
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "refreshDeviceCache return %b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    return p0
.end method

.method private static registerGlobalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1

    .line 54
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->registerGlobalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public static sendBroadcast(Landroid/content/Intent;)V
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->sendGlobalBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendBroadcast(Ljava/lang/String;)V
    .locals 1

    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->sendGlobalBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static sendGlobalBroadcast(Landroid/content/Intent;)V
    .locals 1

    .line 74
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static unregisterGlobalReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1

    .line 62
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public static unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 0

    .line 58
    invoke-static {p0}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->unregisterGlobalReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
