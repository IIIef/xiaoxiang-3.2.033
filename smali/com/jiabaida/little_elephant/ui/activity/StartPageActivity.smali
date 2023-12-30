.class public Lcom/jiabaida/little_elephant/ui/activity/StartPageActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "StartPageActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    return-void
.end method

.method private startAv()V
    .locals 3

    .line 54
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/StartPageActivity;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/StartPageActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/StartPageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/StartPageActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/StartPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 67
    :goto_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    sget-boolean v1, Lcom/jiabaida/little_elephant/util/IdsLog;->DEBUG_SAVE:Z

    const-string v2, "SP_KEY_Log"

    invoke-virtual {v0, v2, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/jiabaida/little_elephant/util/IdsLog;->DEBUG_SAVE:Z

    .line 68
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/StartPageActivity;->finishActivity()V

    return-void
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/StartPageActivity;->startAv()V

    const/4 v0, 0x0

    return v0
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x64

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/StartPageActivity;->startAv()V

    :goto_0
    return-void
.end method
