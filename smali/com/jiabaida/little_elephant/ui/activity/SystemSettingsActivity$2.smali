.class Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$2;
.super Ljava/lang/Object;
.source "SystemSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onClick$0(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 169
    invoke-static {p0}, Lcom/jiabaida/little_elephant/util/BleUtils;->changeFirstLevPsw(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 167
    sget p1, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    const/16 v0, 0x2717

    if-eq p1, v0, :cond_1

    sget p1, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    const/16 v0, 0x2719

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    const v1, 0x7f0d0086

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 169
    :cond_1
    :goto_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/DialogUtils;->getInstances()Lcom/jiabaida/little_elephant/util/DialogUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    sget-object v1, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$2$$ExternalSyntheticLambda0;->INSTANCE:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$2$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0, v1}, Lcom/jiabaida/little_elephant/util/DialogUtils;->changeFirstPswDialog(Landroid/content/Context;Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;)V

    :goto_1
    return-void
.end method
