.class Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$9;
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

    .line 428
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$9;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 441
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$9;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$1600(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 1

    .line 431
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$9;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$1600(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)V

    .line 432
    check-cast p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 433
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x1

    .line 434
    iput v0, p2, Landroid/os/Message;->what:I

    .line 435
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 436
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$9;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->timeHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
