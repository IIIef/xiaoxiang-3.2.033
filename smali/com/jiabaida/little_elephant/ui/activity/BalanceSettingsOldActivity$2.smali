.class Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$2;
.super Ljava/lang/Object;
.source "BalanceSettingsOldActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 146
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->isBleConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0d0155

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->showDefaultMsg(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
