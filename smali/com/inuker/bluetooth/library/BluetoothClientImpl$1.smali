.class Lcom/inuker/bluetooth/library/BluetoothClientImpl$1;
.super Ljava/lang/Object;
.source "BluetoothClientImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inuker/bluetooth/library/BluetoothClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;


# direct methods
.method constructor <init>(Lcom/inuker/bluetooth/library/BluetoothClientImpl;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$1;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 170
    iget-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$1;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    invoke-static {p2}, Lcom/inuker/bluetooth/library/IBluetoothService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/inuker/bluetooth/library/IBluetoothService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->access$002(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Lcom/inuker/bluetooth/library/IBluetoothService;)Lcom/inuker/bluetooth/library/IBluetoothService;

    .line 171
    iget-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$1;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    invoke-static {p1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->access$100(Lcom/inuker/bluetooth/library/BluetoothClientImpl;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 177
    iget-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$1;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->access$002(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Lcom/inuker/bluetooth/library/IBluetoothService;)Lcom/inuker/bluetooth/library/IBluetoothService;

    return-void
.end method
