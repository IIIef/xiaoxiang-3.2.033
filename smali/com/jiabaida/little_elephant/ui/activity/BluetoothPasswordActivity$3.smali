.class Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity$3;
.super Ljava/lang/Object;
.source "BluetoothPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->initView(Landroid/os/Bundle;)V
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

    .line 99
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 102
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->isFastDoubleClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->cleanFirstLevPsw()V

    return-void
.end method
