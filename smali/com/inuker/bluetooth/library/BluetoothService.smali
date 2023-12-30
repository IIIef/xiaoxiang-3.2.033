.class public Lcom/inuker/bluetooth/library/BluetoothService;
.super Landroid/app/Service;
.source "BluetoothService.java"


# static fields
.field private static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 18
    sget-object v0, Lcom/inuker/bluetooth/library/BluetoothService;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "BluetoothService onBind"

    .line 31
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/inuker/bluetooth/library/BluetoothServiceImpl;->getInstance()Lcom/inuker/bluetooth/library/BluetoothServiceImpl;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 23
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BluetoothService onCreate"

    .line 24
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/BluetoothService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/inuker/bluetooth/library/BluetoothService;->mContext:Landroid/content/Context;

    .line 26
    invoke-static {v0}, Lcom/inuker/bluetooth/library/BluetoothContext;->set(Landroid/content/Context;)V

    return-void
.end method
