.class Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$3;
.super Ljava/lang/Object;
.source "BalanceSettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->initData()V
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

    .line 160
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 164
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    const/16 v0, 0x1d

    if-eqz p2, :cond_1

    .line 169
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p2

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 170
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p2

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)I

    move-result v1

    and-int/lit8 v1, v1, -0x5

    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 175
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    :goto_0
    return-void
.end method
