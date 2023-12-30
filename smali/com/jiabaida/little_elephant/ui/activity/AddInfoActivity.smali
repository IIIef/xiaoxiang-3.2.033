.class public Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "AddInfoActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.activity.AddInfoActivity"


# instance fields
.field private btnAddInfo:Landroid/widget/Button;

.field private edtAddEmail:Lcom/jiabaida/little_elephant/view/XXEditText;

.field private edtAddPhone:Lcom/jiabaida/little_elephant/view/XXEditText;

.field private flTopBack:Landroid/widget/FrameLayout;

.field private ivTopBack:Landroid/widget/ImageView;

.field private llyTopTitleBg:Landroid/widget/RelativeLayout;

.field private tvTopTitle:Landroid/widget/TextView;

.field private tvTopTitleR:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->edtAddPhone:Lcom/jiabaida/little_elephant/view/XXEditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->edtAddEmail:Lcom/jiabaida/little_elephant/view/XXEditText;

    return-object p0
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a0040

    return v0
.end method

.method protected initData()V
    .locals 4

    .line 77
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->QueueTag:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->edtAddEmail:Lcom/jiabaida/little_elephant/view/XXEditText;

    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v1

    const-string v2, "sp_key_user_email"

    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, ""

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    :goto_0
    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/view/XXEditText;->setEditTextInput(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->edtAddPhone:Lcom/jiabaida/little_elephant/view/XXEditText;

    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v1

    const-string v2, "sp_key_user_phone"

    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 81
    :cond_1
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    :goto_1
    invoke-virtual {v0, v3}, Lcom/jiabaida/little_elephant/view/XXEditText;->setEditTextInput(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->btnAddInfo:Landroid/widget/Button;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity$2;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 7

    const p1, 0x7f0800c3

    .line 57
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->flTopBack:Landroid/widget/FrameLayout;

    const p1, 0x7f0800f9

    .line 58
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->ivTopBack:Landroid/widget/ImageView;

    const p1, 0x7f0802a0

    .line 59
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->tvTopTitle:Landroid/widget/TextView;

    const p1, 0x7f0802a2

    .line 60
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->tvTopTitleR:Landroid/widget/TextView;

    .line 61
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->ivTopBack:Landroid/widget/ImageView;

    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0d013b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->flTopBack:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->tvTopTitleR:Landroid/widget/TextView;

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 63
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->flTopBack:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080137

    .line 69
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->llyTopTitleBg:Landroid/widget/RelativeLayout;

    const p1, 0x7f0800aa

    .line 70
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/view/XXEditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->edtAddPhone:Lcom/jiabaida/little_elephant/view/XXEditText;

    const p1, 0x7f0800a9

    .line 71
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/view/XXEditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->edtAddEmail:Lcom/jiabaida/little_elephant/view/XXEditText;

    const p1, 0x7f080031

    .line 72
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->btnAddInfo:Landroid/widget/Button;

    .line 73
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->edtAddEmail:Lcom/jiabaida/little_elephant/view/XXEditText;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/XXEditText;->setInputType(I)V

    return-void
.end method

.method public onEventBusMsg(Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;)V
    .locals 2
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

    .line 137
    :cond_0
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v0

    const/16 v1, 0x7e

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->hideLoading()V

    .line 142
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "message"

    .line 145
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->showDefaultMsg(Ljava/lang/String;)V

    const-string p1, "status"

    .line 146
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 147
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p1

    const-string v0, "sp_key_user_email"

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->edtAddEmail:Lcom/jiabaida/little_elephant/view/XXEditText;

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/view/XXEditText;->getEditTextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p1

    const-string v0, "sp_key_user_phone"

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->edtAddPhone:Lcom/jiabaida/little_elephant/view/XXEditText;

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/view/XXEditText;->getEditTextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 150
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->finishActivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected useEventBus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
