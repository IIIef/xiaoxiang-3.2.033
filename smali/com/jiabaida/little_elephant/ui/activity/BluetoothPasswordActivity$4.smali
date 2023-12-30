.class Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity$4;
.super Ljava/lang/Object;
.source "BluetoothPasswordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->goToBluetoothList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0x1f4

    .line 181
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 182
    invoke-static {}, Lcom/jiabaida/little_elephant/app/CustomActivityManager;->clearAllActivity()V

    .line 183
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;

    const-class v2, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 184
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 185
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
