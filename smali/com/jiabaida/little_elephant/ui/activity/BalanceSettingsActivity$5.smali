.class Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$5;
.super Ljava/lang/Object;
.source "BalanceSettingsActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->onClickBalance(Landroid/view/View;)V
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

    .line 339
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCheck(Landroid/view/View;IZ)V
    .locals 1

    .line 342
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    iget-object p3, p3, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->listBalanceType:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    invoke-virtual {p3}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->getItemName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->listBalanceType:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->getItemName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    const p3, 0x7f0d00d7

    invoke-virtual {p2, p3}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 p2, 0x1d

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    .line 345
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {p1, p3}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$1202(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;Z)Z

    .line 347
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 348
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    goto :goto_0

    .line 352
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$1202(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;Z)Z

    .line 353
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)I

    move-result v0

    and-int/lit8 v0, v0, -0x9

    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 354
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    :goto_0
    return-void
.end method
