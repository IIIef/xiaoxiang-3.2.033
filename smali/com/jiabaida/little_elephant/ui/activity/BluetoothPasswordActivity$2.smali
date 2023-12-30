.class Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity$2;
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

    .line 76
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 79
    sget p1, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    const/16 v0, 0x2716

    if-eq p1, v0, :cond_3

    sget-boolean p1, Lcom/jiabaida/little_elephant/util/BleUtils;->isHaveFirstPsw:Z

    if-eqz p1, :cond_0

    goto :goto_1

    .line 85
    :cond_0
    sget p1, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    const/16 v0, 0x2714

    if-eq p1, v0, :cond_2

    sget p1, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    const/16 v0, 0x2717

    if-eq p1, v0, :cond_2

    sget p1, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    const/16 v0, 0x2719

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;

    const v1, 0x7f0d0086

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 89
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 91
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/BleUtils;->setFirstLevPsw(Ljava/lang/String;)V

    goto :goto_2

    .line 81
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 82
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/BleUtils;->setFirstLevPsw(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method
