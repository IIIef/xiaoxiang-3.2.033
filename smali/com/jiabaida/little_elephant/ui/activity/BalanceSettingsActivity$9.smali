.class Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$9;
.super Ljava/lang/Object;
.source "BalanceSettingsActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$9;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 495
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$9;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->hideLoading()V

    .line 496
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$9;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    const p2, 0x7f0d0118

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->showMsg(Ljava/lang/String;)V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 489
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$9;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->hideLoading()V

    return-void
.end method
