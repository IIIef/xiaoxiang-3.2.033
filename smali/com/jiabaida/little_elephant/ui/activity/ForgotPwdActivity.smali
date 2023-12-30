.class public Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "ForgotPwdActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$MyCount;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.activity.ForgotPwdActivity"


# instance fields
.field private btnForgotOk:Landroid/widget/Button;

.field private edtInputCodeForgot:Lcom/jiabaida/little_elephant/view/XXEditText;

.field private edtInputEmailForgot:Lcom/jiabaida/little_elephant/view/XXEditText;

.field private edtInputNewAgainPwd:Lcom/jiabaida/little_elephant/view/XXEditText;

.field private edtInputNewPwd:Lcom/jiabaida/little_elephant/view/XXEditText;

.field private flTopBack:Landroid/widget/FrameLayout;

.field private ivTopBack:Landroid/widget/ImageView;

.field private llyTopTitleBg:Landroid/widget/RelativeLayout;

.field public mCount:Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$MyCount;

.field private tvForgotSendcode:Landroid/widget/TextView;

.field private tvTopTitle:Landroid/widget/TextView;

.field private tvTopTitleR:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->edtInputEmailForgot:Lcom/jiabaida/little_elephant/view/XXEditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->edtInputCodeForgot:Lcom/jiabaida/little_elephant/view/XXEditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->edtInputNewPwd:Lcom/jiabaida/little_elephant/view/XXEditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->edtInputNewAgainPwd:Lcom/jiabaida/little_elephant/view/XXEditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;)Landroid/widget/TextView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->tvForgotSendcode:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a0047

    return v0
.end method

.method protected initData()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->tvForgotSendcode:Landroid/widget/TextView;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$2;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->btnForgotOk:Landroid/widget/Button;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$3;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 7

    const p1, 0x7f0800c3

    .line 59
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->flTopBack:Landroid/widget/FrameLayout;

    const p1, 0x7f0800f9

    .line 60
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->ivTopBack:Landroid/widget/ImageView;

    const p1, 0x7f0802a0

    .line 61
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->tvTopTitle:Landroid/widget/TextView;

    const p1, 0x7f0802a2

    .line 62
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->tvTopTitleR:Landroid/widget/TextView;

    .line 63
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->ivTopBack:Landroid/widget/ImageView;

    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0d015b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->flTopBack:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->tvTopTitleR:Landroid/widget/TextView;

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 65
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->flTopBack:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080137

    .line 71
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->llyTopTitleBg:Landroid/widget/RelativeLayout;

    const p1, 0x7f0800af

    .line 72
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/view/XXEditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->edtInputEmailForgot:Lcom/jiabaida/little_elephant/view/XXEditText;

    const p1, 0x7f0800ad

    .line 73
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/view/XXEditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->edtInputCodeForgot:Lcom/jiabaida/little_elephant/view/XXEditText;

    const p1, 0x7f080231

    .line 74
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->tvForgotSendcode:Landroid/widget/TextView;

    const p1, 0x7f0800b2

    .line 75
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/view/XXEditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->edtInputNewPwd:Lcom/jiabaida/little_elephant/view/XXEditText;

    const p1, 0x7f0800b1

    .line 76
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/view/XXEditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->edtInputNewAgainPwd:Lcom/jiabaida/little_elephant/view/XXEditText;

    const p1, 0x7f080037

    .line 77
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->btnForgotOk:Landroid/widget/Button;

    .line 80
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->edtInputNewPwd:Lcom/jiabaida/little_elephant/view/XXEditText;

    const/16 v0, 0x81

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/XXEditText;->setInputType(I)V

    .line 81
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->edtInputNewAgainPwd:Lcom/jiabaida/little_elephant/view/XXEditText;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/XXEditText;->setInputType(I)V

    .line 83
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->isChinaSimCard()Z

    move-result p1

    const-string v0, ""

    if-eqz p1, :cond_1

    .line 84
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->edtInputEmailForgot:Lcom/jiabaida/little_elephant/view/XXEditText;

    const v1, 0x7f0d0165

    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/jiabaida/little_elephant/view/XXEditText;->setEditTextHint(Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->edtInputEmailForgot:Lcom/jiabaida/little_elephant/view/XXEditText;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/jiabaida/little_elephant/view/XXEditText;->setInputType(I)V

    .line 86
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->edtInputEmailForgot:Lcom/jiabaida/little_elephant/view/XXEditText;

    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v1

    const-string v2, "sp_key_user_phone"

    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_0
    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/XXEditText;->setEditTextInput(Ljava/lang/String;)V

    goto :goto_2

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->edtInputEmailForgot:Lcom/jiabaida/little_elephant/view/XXEditText;

    const v1, 0x7f0d0164

    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/jiabaida/little_elephant/view/XXEditText;->setEditTextHint(Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->edtInputEmailForgot:Lcom/jiabaida/little_elephant/view/XXEditText;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Lcom/jiabaida/little_elephant/view/XXEditText;->setInputType(I)V

    .line 92
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->edtInputEmailForgot:Lcom/jiabaida/little_elephant/view/XXEditText;

    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v1

    const-string v2, "sp_key_user_email"

    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 93
    :cond_2
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_1
    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/XXEditText;->setEditTextInput(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onEventBusMsg(Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 242
    :cond_0
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v0

    const/16 v1, 0x62

    const-string v2, "message"

    const/4 v3, 0x1

    const-string v4, "status"

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->hideLoading()V

    .line 261
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v3, :cond_2

    .line 264
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->startActivity(Landroid/content/Intent;)V

    .line 265
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->finishActivity()V

    goto :goto_0

    .line 267
    :cond_2
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->showDefaultMsg(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 270
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 244
    :cond_3
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->hideLoading()V

    .line 246
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v3, :cond_4

    .line 248
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object p1

    const v0, 0x7f0d00b1

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->startCountdown()V

    goto :goto_0

    .line 251
    :cond_4
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->showDefaultMsg(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 254
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public startCountdown()V
    .locals 7

    .line 204
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->mCount:Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$MyCount;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$MyCount;->cancel()V

    .line 207
    :cond_0
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$MyCount;

    const-wide/32 v3, 0xea60

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$MyCount;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;JJ)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->mCount:Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$MyCount;

    .line 208
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$MyCount;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method protected useEventBus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
