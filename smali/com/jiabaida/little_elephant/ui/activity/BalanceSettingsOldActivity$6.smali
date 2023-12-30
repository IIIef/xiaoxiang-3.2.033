.class Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$6;
.super Ljava/lang/Object;
.source "BalanceSettingsOldActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->onClickBalance(Landroid/view/View;)V
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

    .line 279
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCheck(Landroid/view/View;IZ)V
    .locals 0

    .line 282
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    iget-object p3, p3, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->listBalanceType:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    invoke-virtual {p3}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->getItemName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->listBalanceType:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->getItemName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    const p3, 0x7f0d00d7

    invoke-virtual {p2, p3}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 p2, 0x7d04

    if-eqz p1, :cond_0

    .line 285
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$302(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;Z)Z

    .line 286
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->setBalanceMode(I)V

    .line 287
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 288
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto :goto_0

    .line 291
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$302(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;Z)Z

    .line 292
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->setBalanceMode(I)V

    .line 293
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 294
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    :goto_0
    return-void
.end method
