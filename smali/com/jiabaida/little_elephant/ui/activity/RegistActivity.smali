.class public Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "RegistActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.activity.RegistActivity"


# instance fields
.field private btnRegistGo:Landroid/widget/Button;

.field private edtInputEmail:Lcom/jiabaida/little_elephant/view/XXEditText;

.field private edtInputPwd:Lcom/jiabaida/little_elephant/view/XXEditText;

.field private edtInputPwdAgain:Lcom/jiabaida/little_elephant/view/XXEditText;

.field private flTopBack:Landroid/widget/FrameLayout;

.field private ivTopBack:Landroid/widget/ImageView;

.field private llyRegistGoLogin:Landroid/widget/LinearLayout;

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

    .line 39
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->edtInputPwd:Lcom/jiabaida/little_elephant/view/XXEditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->edtInputEmail:Lcom/jiabaida/little_elephant/view/XXEditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->edtInputPwdAgain:Lcom/jiabaida/little_elephant/view/XXEditText;

    return-object p0
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a004d

    return v0
.end method

.method protected initData()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->llyRegistGoLogin:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$3;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->btnRegistGo:Landroid/widget/Button;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$4;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$4;-><init>(Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 7

    const p1, 0x7f0800c3

    .line 95
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->flTopBack:Landroid/widget/FrameLayout;

    const p1, 0x7f0800f9

    .line 96
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->ivTopBack:Landroid/widget/ImageView;

    const p1, 0x7f0802a0

    .line 97
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->tvTopTitle:Landroid/widget/TextView;

    const p1, 0x7f0802a2

    .line 98
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->tvTopTitleR:Landroid/widget/TextView;

    .line 99
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->ivTopBack:Landroid/widget/ImageView;

    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 100
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0d0170

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->flTopBack:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->tvTopTitleR:Landroid/widget/TextView;

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 101
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->flTopBack:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$2;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080137

    .line 107
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->llyTopTitleBg:Landroid/widget/RelativeLayout;

    const p1, 0x7f08012f

    .line 108
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->llyRegistGoLogin:Landroid/widget/LinearLayout;

    const p1, 0x7f080039

    .line 109
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->btnRegistGo:Landroid/widget/Button;

    const p1, 0x7f0800ae

    .line 110
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/view/XXEditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->edtInputEmail:Lcom/jiabaida/little_elephant/view/XXEditText;

    const p1, 0x7f0800b3

    .line 111
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/view/XXEditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->edtInputPwd:Lcom/jiabaida/little_elephant/view/XXEditText;

    const p1, 0x7f0800b4

    .line 112
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/view/XXEditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->edtInputPwdAgain:Lcom/jiabaida/little_elephant/view/XXEditText;

    .line 114
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->isChinaSimCard()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->edtInputEmail:Lcom/jiabaida/little_elephant/view/XXEditText;

    const v0, 0x7f0d0165

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/XXEditText;->setEditTextHint(Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->edtInputEmail:Lcom/jiabaida/little_elephant/view/XXEditText;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/XXEditText;->setInputType(I)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->edtInputEmail:Lcom/jiabaida/little_elephant/view/XXEditText;

    const v0, 0x7f0d0164

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/XXEditText;->setEditTextHint(Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->edtInputEmail:Lcom/jiabaida/little_elephant/view/XXEditText;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/XXEditText;->setInputType(I)V

    :goto_0
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

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->hideLoading()V

    .line 72
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    .line 73
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 74
    new-instance p1, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$1;

    invoke-direct {p1, p0}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;)V

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const-string p1, "message"

    .line 82
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->showDefaultMsg(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected useEventBus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
