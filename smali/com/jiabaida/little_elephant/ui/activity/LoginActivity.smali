.class public Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "LoginActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.activity.LoginActivity"


# instance fields
.field private btnLoginGo:Landroid/widget/Button;

.field private edtInputLogin:Lcom/jiabaida/little_elephant/view/XXEditText;

.field private edtInputPwd:Lcom/jiabaida/little_elephant/view/XXEditText;

.field private flTopBack:Landroid/widget/FrameLayout;

.field private llyTopTitleBg:Landroid/widget/RelativeLayout;

.field private tvLoginForgot:Landroid/widget/TextView;

.field private tvLoginRegisg:Landroid/widget/TextView;

.field private tvTopTitle:Landroid/widget/TextView;

.field private tvTopTitleR:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->edtInputLogin:Lcom/jiabaida/little_elephant/view/XXEditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->edtInputPwd:Lcom/jiabaida/little_elephant/view/XXEditText;

    return-object p0
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a004a

    return v0
.end method

.method protected initData()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->tvLoginRegisg:Landroid/widget/TextView;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity$3;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity$3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->tvLoginForgot:Landroid/widget/TextView;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity$4;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity$4;-><init>(Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->btnLoginGo:Landroid/widget/Button;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity$5;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity$5;-><init>(Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 7

    const p1, 0x7f0800c3

    .line 65
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->flTopBack:Landroid/widget/FrameLayout;

    const p1, 0x7f0802a0

    .line 66
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->tvTopTitle:Landroid/widget/TextView;

    const p1, 0x7f0802a2

    .line 67
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->tvTopTitleR:Landroid/widget/TextView;

    const p1, 0x7f0800f9

    .line 68
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f0700ca

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0d0171

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->flTopBack:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->tvTopTitleR:Landroid/widget/TextView;

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 70
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->isLogin()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 71
    sput-boolean p1, Lcom/jiabaida/little_elephant/util/BleUtils;->displayVoltage:Z

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->flTopBack:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080137

    .line 87
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->llyTopTitleBg:Landroid/widget/RelativeLayout;

    const p1, 0x7f08023d

    .line 88
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->tvLoginRegisg:Landroid/widget/TextView;

    const p1, 0x7f08023c

    .line 89
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->tvLoginForgot:Landroid/widget/TextView;

    const p1, 0x7f0800b0

    .line 90
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/view/XXEditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->edtInputLogin:Lcom/jiabaida/little_elephant/view/XXEditText;

    const p1, 0x7f0800b3

    .line 91
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/view/XXEditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->edtInputPwd:Lcom/jiabaida/little_elephant/view/XXEditText;

    const p1, 0x7f080038

    .line 92
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->btnLoginGo:Landroid/widget/Button;

    .line 93
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->edtInputLogin:Lcom/jiabaida/little_elephant/view/XXEditText;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/XXEditText;->setInputType(I)V

    .line 94
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->edtInputPwd:Lcom/jiabaida/little_elephant/view/XXEditText;

    const/16 v0, 0x81

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/XXEditText;->setInputType(I)V

    const p1, 0x7f080034

    .line 96
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 97
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity$2;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->isChinaSimCard()Z

    move-result p1

    const-string v0, ""

    const-string v1, "sp_key_user_phone"

    if-eqz p1, :cond_2

    .line 107
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->edtInputLogin:Lcom/jiabaida/little_elephant/view/XXEditText;

    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/XXEditText;->setEditTextInput(Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->edtInputLogin:Lcom/jiabaida/little_elephant/view/XXEditText;

    const v0, 0x7f0d0165

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/XXEditText;->setEditTextHint(Ljava/lang/String;)V

    goto :goto_2

    .line 115
    :cond_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->edtInputLogin:Lcom/jiabaida/little_elephant/view/XXEditText;

    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 116
    :cond_3
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_1
    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/XXEditText;->setEditTextInput(Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->edtInputLogin:Lcom/jiabaida/little_elephant/view/XXEditText;

    const v0, 0x7f0d0164

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/XXEditText;->setEditTextHint(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 239
    sget-object v0, Lcom/jiabaida/little_elephant/app/CustomActivityManager;->activities:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 241
    invoke-static {p0}, Lcom/jiabaida/little_elephant/app/CustomActivityManager;->deleteActivity(Landroidx/appcompat/app/AppCompatActivity;)V

    goto :goto_0

    .line 243
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 244
    invoke-static {p0}, Lcom/jiabaida/little_elephant/app/CustomActivityManager;->deleteActivity(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 246
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xzx"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEventBusMsg(Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;)V
    .locals 6
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

    .line 198
    :cond_0
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_1

    goto/16 :goto_3

    .line 200
    :cond_1
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive event: xzx-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->hideLoading()V

    .line 203
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    .line 204
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    const-string v2, "code"

    if-ne p1, v1, :cond_6

    .line 205
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p1

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "token"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v5, ""

    if-eqz v3, :cond_2

    move-object v3, v5

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, "sp_key_user_token"

    invoke-virtual {p1, v4, v3}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "username"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v5

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    const-string v4, "sp_key_user_name"

    invoke-virtual {p1, v4, v3}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->edtInputLogin:Lcom/jiabaida/little_elephant/view/XXEditText;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/view/XXEditText;->getEditTextText()Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v3

    const-string v4, "sp_key_user_phone"

    invoke-virtual {v3, v4, p1}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "email"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    const-string v1, "sp_key_user_email"

    invoke-virtual {p1, v1, v5}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p1

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->edtInputPwd:Lcom/jiabaida/little_elephant/view/XXEditText;

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/view/XXEditText;->getEditTextText()Ljava/lang/String;

    move-result-object v1

    const-string v3, "sp_key_user_pwd"

    invoke-virtual {p1, v3, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-direct {p1, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 224
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->isBleConnected()Z

    move-result p1

    sput-boolean p1, Lcom/jiabaida/little_elephant/util/BleUtils;->displayVoltage:Z

    .line 225
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->isBleConnected()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 226
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object p1

    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->queryDevicePermissions(Ljava/lang/String;)V

    .line 228
    :cond_5
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/CauseUtils;->getCauseStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_3

    .line 231
    :cond_6
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/CauseUtils;->getCauseStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->showDefaultMsg(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method protected useEventBus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
