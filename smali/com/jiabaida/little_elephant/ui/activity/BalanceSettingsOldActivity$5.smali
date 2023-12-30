.class Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$5;
.super Ljava/lang/Object;
.source "BalanceSettingsOldActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;
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

    .line 234
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 243
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->hideLoading()V

    .line 244
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    const p2, 0x7f0d0118

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    .line 245
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->timeHandler:Landroid/os/Handler;

    const/16 p2, 0x7918

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 238
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->timeHandler:Landroid/os/Handler;

    const/16 p2, 0x7918

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
